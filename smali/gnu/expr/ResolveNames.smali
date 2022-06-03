.class public Lgnu/expr/ResolveNames;
.super Lgnu/expr/ExpExpVisitor;
.source "ResolveNames.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpExpVisitor",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected lookup:Lgnu/expr/NameLookup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ResolveNames;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ExpExpVisitor;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Compilation;)V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ResolveNames;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/expr/ExpExpVisitor;-><init>()V

    .line 19
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/ResolveNames;->setContext(Lgnu/expr/Compilation;)V

    .line 20
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    iput-object v3, v2, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    .line 21
    return-void
.end method


# virtual methods
.method public lookup(Lgnu/expr/Expression;Ljava/lang/Object;Z)Lgnu/expr/Declaration;
    .locals 7

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ResolveNames;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "symbol":Ljava/lang/Object;
    move v3, p3

    .local v3, "function":Z
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/ResolveNames;
    return-object v0
.end method

.method protected push(Lgnu/expr/ScopeExp;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ResolveNames;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ScopeExp;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 42
    return-void
.end method

.method public resolveModule(Lgnu/expr/ModuleExp;)V
    .locals 7

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ResolveNames;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ModuleExp;
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ResolveNames;->comp:Lgnu/expr/Compilation;

    invoke-static {v4}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v4

    move-object v2, v4

    .line 28
    .local v2, "saveComp":Lgnu/expr/Compilation;
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Lgnu/expr/ResolveNames;->push(Lgnu/expr/ScopeExp;)V

    .line 29
    move-object v4, v1

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ModuleExp;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    move-object v4, v2

    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 36
    .line 37
    return-void

    .line 33
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    move-object v4, v3

    throw v4
.end method

.method protected visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ResolveNames;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/LetExp;
    move-object v2, p2

    .local v2, "ignored":Ljava/lang/Void;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/ResolveNames;->visitDeclarationTypes(Lgnu/expr/ScopeExp;)V

    .line 56
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/LetExp;->visitInitializers(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 57
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/ResolveNames;->push(Lgnu/expr/ScopeExp;)V

    .line 58
    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ResolveNames;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Expression;

    iput-object v4, v3, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 59
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V

    .line 60
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ResolveNames;
    return-object v0
.end method

.method protected bridge synthetic visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ResolveNames;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/LetExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ResolveNames;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ResolveNames;
    return-object v0
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 8

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ResolveNames;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ReferenceExp;
    move-object v2, p2

    .local v2, "ignored":Ljava/lang/Void;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    .line 71
    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 73
    move-object v4, v0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lgnu/expr/ResolveNames;->lookup(Lgnu/expr/Expression;Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    .line 74
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 75
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/expr/ReferenceExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 77
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/ResolveNames;
    return-object v0
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ResolveNames;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ReferenceExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ResolveNames;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ResolveNames;
    return-object v0
.end method

.method protected visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ResolveNames;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ScopeExp;
    move-object v2, p2

    .local v2, "ignored":Ljava/lang/Void;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/ResolveNames;->visitDeclarationTypes(Lgnu/expr/ScopeExp;)V

    .line 47
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/ResolveNames;->push(Lgnu/expr/ScopeExp;)V

    .line 48
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ScopeExp;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 49
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V

    .line 50
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ResolveNames;
    return-object v0
.end method

.method protected bridge synthetic visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ResolveNames;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ScopeExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ResolveNames;->visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ResolveNames;
    return-object v0
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ResolveNames;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/SetExp;
    move-object v2, p2

    .local v2, "ignored":Ljava/lang/Void;
    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-nez v4, :cond_1

    .line 84
    move-object v4, v0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/SetExp;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/expr/SetExp;->isFuncDef()Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lgnu/expr/ResolveNames;->lookup(Lgnu/expr/Expression;Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    .line 85
    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 86
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 87
    :cond_0
    move-object v4, v1

    move-object v5, v3

    iput-object v5, v4, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 89
    .end local v3    # "decl":Lgnu/expr/Declaration;
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lgnu/expr/ExpExpVisitor;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Expression;

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/ResolveNames;
    return-object v0
.end method

.method protected bridge synthetic visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ResolveNames;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/SetExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ResolveNames;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ResolveNames;
    return-object v0
.end method
