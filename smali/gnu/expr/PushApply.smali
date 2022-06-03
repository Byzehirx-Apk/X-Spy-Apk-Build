.class public Lgnu/expr/PushApply;
.super Lgnu/expr/ExpVisitor;
.source "PushApply.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpVisitor",
        "<",
        "Lgnu/expr/Expression;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PushApply;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ExpVisitor;-><init>()V

    return-void
.end method

.method public static pushApply(Lgnu/expr/Expression;)V
    .locals 6

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    new-instance v2, Lgnu/expr/PushApply;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lgnu/expr/PushApply;-><init>()V

    move-object v1, v2

    .line 15
    .local v1, "visitor":Lgnu/expr/PushApply;
    move-object v2, v1

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/expr/PushApply;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    return-void
.end method


# virtual methods
.method protected defaultValue(Lgnu/expr/Expression;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PushApply;
    move-object v1, p1

    .local v1, "r":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "ignored":Ljava/lang/Void;
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/PushApply;
    return-object v0
.end method

.method protected bridge synthetic defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PushApply;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/PushApply;->defaultValue(Lgnu/expr/Expression;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/PushApply;
    return-object v0
.end method

.method protected update(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PushApply;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "r":Lgnu/expr/Expression;
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/PushApply;
    return-object v0
.end method

.method protected bridge synthetic update(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PushApply;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/Expression;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/PushApply;->update(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/PushApply;
    return-object v0
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PushApply;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "ignored":Ljava/lang/Void;
    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object v3, v7

    .line 31
    .local v3, "func":Lgnu/expr/Expression;
    move-object v7, v3

    instance-of v7, v7, Lgnu/expr/LetExp;

    if-eqz v7, :cond_0

    move-object v7, v3

    instance-of v7, v7, Lgnu/expr/FluidLetExp;

    if-nez v7, :cond_0

    .line 35
    move-object v7, v3

    check-cast v7, Lgnu/expr/LetExp;

    move-object v4, v7

    .line 36
    .local v4, "let":Lgnu/expr/LetExp;
    move-object v7, v4

    iget-object v7, v7, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    move-object v5, v7

    .line 37
    .local v5, "body":Lgnu/expr/Expression;
    move-object v7, v4

    move-object v8, v1

    iput-object v8, v7, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 38
    move-object v7, v1

    move-object v8, v5

    iput-object v8, v7, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 39
    move-object v7, v0

    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/expr/PushApply;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/Expression;

    move-object v0, v7

    .line 52
    .end local v0    # "this":Lgnu/expr/PushApply;
    .end local v4    # "let":Lgnu/expr/LetExp;
    .end local v5    # "body":Lgnu/expr/Expression;
    :goto_0
    return-object v0

    .line 41
    .restart local v0    # "this":Lgnu/expr/PushApply;
    :cond_0
    move-object v7, v3

    instance-of v7, v7, Lgnu/expr/BeginExp;

    if-eqz v7, :cond_1

    .line 44
    move-object v7, v3

    check-cast v7, Lgnu/expr/BeginExp;

    move-object v4, v7

    .line 45
    .local v4, "begin":Lgnu/expr/BeginExp;
    move-object v7, v4

    iget-object v7, v7, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move-object v5, v7

    .line 46
    .local v5, "stmts":[Lgnu/expr/Expression;
    move-object v7, v4

    iget-object v7, v7, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v6, v7

    .line 47
    .local v6, "last_index":I
    move-object v7, v1

    move-object v8, v5

    move v9, v6

    aget-object v8, v8, v9

    iput-object v8, v7, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 48
    move-object v7, v5

    move v8, v6

    move-object v9, v1

    aput-object v9, v7, v8

    .line 49
    move-object v7, v0

    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/expr/PushApply;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/Expression;

    move-object v0, v7

    goto :goto_0

    .line 51
    .end local v4    # "begin":Lgnu/expr/BeginExp;
    .end local v5    # "stmts":[Lgnu/expr/Expression;
    .end local v6    # "last_index":I
    :cond_1
    move-object v7, v1

    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/expr/ApplyExp;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 52
    move-object v7, v1

    move-object v0, v7

    goto :goto_0
.end method

.method protected bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/expr/PushApply;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/PushApply;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/PushApply;
    return-object v0
.end method
