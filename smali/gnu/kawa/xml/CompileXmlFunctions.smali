.class public Lgnu/kawa/xml/CompileXmlFunctions;
.super Ljava/lang/Object;
.source "CompileXmlFunctions.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/CompileXmlFunctions;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validateApplyMakeUnescapedData(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 11

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 13
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 14
    .local v4, "args":[Lgnu/expr/Expression;
    move-object v5, v4

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object v5, v4

    const/4 v6, 0x0

    aget-object v5, v5, v6

    instance-of v5, v5, Lgnu/expr/QuoteExp;

    if-eqz v5, :cond_0

    .line 15
    new-instance v5, Lgnu/expr/QuoteExp;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    check-cast v7, Lgnu/kawa/xml/MakeUnescapedData;

    move-object v8, v4

    const/4 v9, 0x0

    aget-object v8, v8, v9

    check-cast v8, Lgnu/expr/QuoteExp;

    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/kawa/xml/MakeUnescapedData;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v5

    .line 16
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    :goto_0
    return-object v0

    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    :cond_0
    move-object v5, v0

    move-object v0, v5

    goto :goto_0
.end method

.method public static validateApplyTreeScanner(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/InlineCalls;
    move-object v2, p2

    .local v2, "required":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "proc":Lgnu/mapping/Procedure;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 23
    move-object v5, v3

    check-cast v5, Lgnu/kawa/xml/TreeScanner;

    iget-object v5, v5, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    move-object v4, v5

    .line 24
    .local v4, "type":Lgnu/lists/NodePredicate;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/ApplyExp;->getTypeRaw()Lgnu/bytecode/Type;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v4

    instance-of v5, v5, Lgnu/bytecode/Type;

    if-eqz v5, :cond_0

    .line 25
    move-object v5, v0

    move-object v6, v4

    check-cast v6, Lgnu/bytecode/Type;

    invoke-static {v6}, Lgnu/kawa/xml/NodeSetType;->getInstance(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 26
    :cond_0
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    return-object v0
.end method
