/******************************************************************************
 * Copyright (c) 2020, Intel Corporation. All rights reserved.
 * 
 * SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception.
 * 
 *****************************************************************************/

/**
 * SC Clang front-end project.
 * Traverse CFG with value extraction abstract class.
 *  
 * File:   ScTraverseValue.h
 * Author: Mikhail Moiseev
 */

#ifndef SCPARSEEXPRVALUE_H
#define SCPARSEEXPRVALUE_H

#include "sc_tool/expr/ScParseExpr.h"
#include "llvm/ADT/APSInt.h"

namespace sc {
/// Statement with last function call, <Call statement, Stmt>
typedef std::pair<const clang::Stmt*, const clang::Stmt*>     ContextStmt;
}

namespace std {
/// Hash function for @ContextStmt
template<>
struct hash<sc::ContextStmt>
{
    std::size_t operator () (const sc::ContextStmt& obj) const {
        using std::hash;
        return ( std::hash<void*>()((void*)obj.first)^
            std::hash<void*>()((void*)obj.second) );
    }
};
} // namespace std

namespace sc {

/// Evaluates statements and expressions and puts results to State.
/// This class does not traverse CFG, CFG traversal should be implemented in
/// derived classes.
class ScParseExprValue : public ScParseExpr
{
protected:
    /// Evaluation precision 
    uint32_t EPRECISION = 64;
    
    /// Name generation fabric
    DynamicNameFabric nameFabric;
    
    /// Do checking @sct_assert_*
    bool checkSctAssert = false;
    
    /// Ignore stored statement value @stmtStoredValue in 
    /// ScTraverseConst::chooseExprMethod(), used in CPA to get 
    /// variable value for function argument
    bool ignoreStored = false;
    
    /// Variable registered as latched by @sct_assert_latch()
    std::unordered_set<SValue>    assertLatches;
    
public:
    explicit ScParseExprValue(const clang::ASTContext& context_,
                              std::shared_ptr<ScState> state_, 
                              const SValue& modval_, 
                              bool checkNoValue_ = true,
                              SValue recval_ = NO_VALUE) : 
        ScParseExpr(context_, state_, modval_, checkNoValue_, recval_)
    {}

    virtual ~ScParseExprValue() {}
    
    /// Parse SCT_ASSERT in module scope to fill read value
    void parseSvaDecl(const clang::FieldDecl* fdecl);

    /// Set evaluation precision in bit
    void setEvalPrecision(uint32_t val) { EPRECISION = val; }
    
    /// Parse and evaluate one expression/statement as constant integer
    /// \param checkConst -- get value for variable if it is constant only
    ///                      used in ScTraverseProc, not used in ScTraverseConst
    /// \return true if expression is evaluated to a constant value
    bool evaluateConstInt(clang::Expr* expr, SValue& val,  
                          bool checkConst = true) override;
    
    /// Parse function call or constructor call parameters, 
    /// fill state with parameters with correspondent argument values
    void prepareCallParams(clang::Expr* expr, const SValue& funcModval, 
                           const clang::FunctionDecl* callFuncDecl) override;

    /// Enable checking @sct_assert_*
    void enableCheckAssert() {
        checkSctAssert = true;
    } 
    
    /// Return registered latches by @sct_assert_latch()
    const std::unordered_set<SValue> getAssertLatches() const {
        return assertLatches;
    }
    
protected:    
    
    /// Declared variable may be initialized with expression inside
    /// Used for variable declaration with and without initialization
    /// \param initExpr -- record/record field initializer, 
    ///                    not used for normal variables
    void parseDeclStmt(clang::Stmt* stmt, clang::ValueDecl* decl, 
                       SValue& val, clang::Expr* initExpr) override;

    /// Used for local variables usage like assignment statement in left/right parts
    void parseExpr(clang::DeclRefExpr* expr, SValue& val) override;
    
    /// Used for default initializer in constructor or in aggregate initialization
    void parseExpr(clang::CXXDefaultInitExpr* expr, SValue& val) override;

    /// Used for default initializer in constructor or in aggregate initialization
    void parseExpr(clang::InitListExpr* expr, SValue& val) override;
    
    /// CXX constructor
    void parseExpr(clang::CXXConstructExpr* expr, SValue& val) override;

    /// Operator @new and @new[]
    void parseExpr(clang::CXXNewExpr* expr, SValue& val) override;
        
    /// Operator delete
    void parseExpr(clang::CXXDeleteExpr* expr, SValue& val) override;
    
    /// Common function for operator[] in @ArraySubscriptExpr and @CXXOperatorCall
    SValue parseArraySubscript(clang::Expr* expr, const SValue& bval, 
                               const SValue& ival);
    /// Array index access operator []
    void parseExpr(clang::ArraySubscriptExpr* expr, SValue& val) override;
    
    /// Used for explicit/implicit type cast and LValue to RValue cast
    void parseImplExplCast(clang::CastExpr* expr, SValue& val);
    void parseExpr(clang::ImplicitCastExpr* expr, SValue& val) override;
    void parseExpr(clang::ExplicitCastExpr* expr, SValue& val) override;
    
    /// General binary statements including assignment
    /// Parse statement and run evalSubExpr for each operand
    void parseBinaryStmt(clang::BinaryOperator* stmt, SValue& val) override;

    /// Parse statement and run evalSubExpr for each operand
    void parseCompoundAssignStmt(clang::CompoundAssignOperator* stmt, SValue& val) override;

    /// Parse statement and run evalSubExpr for the operand
    void parseUnaryStmt(clang::UnaryOperator* stmt, SValue& val) override;

    /// Parse unary increment/decrement and operator ++/--
    SValue parseIncDecStmt(const SValue& rval, bool isPrefix, bool isIncrement);
    
    /// Ternary operator (...) ? ... : ...
    void parseConditionalStmt(clang::ConditionalOperator* stmt, SValue& val) override;

    /// Get value for and_reduce, or_reduce and other reduce functions
    SValue getReducedVal(const std::string& fname, const SValue& rval); 
    
    /// Get type width, sign and APSInt value for arbitrary @val, that is 
    /// possible if @val is Integer or Variable/Object has Integer value
    /// \return true if that is possible
    bool getIntValueInfo(const SValue& val, std::pair<size_t, bool>& info, 
                         llvm::APSInt& intVal);
    /// Get value for concat()
    SValue getConcatVal(const SValue& fval, const SValue& sval);

    /// Function call expression
    void parseCall(clang::CallExpr* expr, SValue& returnVal) override;

    /// Operator call expression
    void parseOperatorCall(clang::CXXOperatorCallExpr* expr, SValue& val) override;

    /// Member function call expression, used for general function call
    /// This method is override for module/port/signal/clock special methods
    void parseMemberCall(clang::CXXMemberCallExpr* callExpr, SValue& retVal) override;

    /// Return statement
    void parseReturnStmt(clang::ReturnStmt* stmt, SValue& val) override;
    
    void parseExpr(clang::ExpressionTraitExpr* expr, SValue& val) override;
    
// ---------------------------------------------------------------------------
// Auxiliary methods
public:
    /// Pointer dereference preserving unknown array index, does null/dangling 
    /// pointer error reporting  
    /// \return pointe value
    SValue derefPointer(const SValue& rval, clang::Stmt* stmt, bool checkPtr);

    /// Try to calculate range or bit selection 
    /// \return integer value or NO_VALUE
    SValue evalRangeSelect(const clang::Expr* expr, SValue val, SValue hi, 
                           SValue lo);

    /// Get #val from state, if it is not an Integer return Unknown
    SValue getIntOrUnkwn(SValue val);
    
    /// Logical not "!"
    SValue evalUnaryLNot(const SValue& val);

    /// Bitwise not "~" with extension to @bitWidth bits
    SValue evalUnaryBNot(const SValue& val, unsigned bitWidth);

};

} // namespace sc


#endif /* SCPARSEEXPRVALUE_H */

