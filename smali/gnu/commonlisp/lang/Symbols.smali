.class public Lgnu/commonlisp/lang/Symbols;
.super Ljava/lang/Object;
.source "Symbols.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Symbols;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getFunctionBinding(Lgnu/mapping/Environment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "environ":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "environ":Lgnu/mapping/Environment;
    return-object v0
.end method

.method public static getFunctionBinding(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    move-object v2, v0

    invoke-static {v2}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "symbol":Ljava/lang/Object;
    return-object v0
.end method

.method public static getPrintName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "sym":Ljava/lang/Object;
    move-object v1, v0

    sget-object v2, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "nil"

    :goto_0
    move-object v0, v1

    .end local v0    # "sym":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "sym":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    check-cast v1, Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/commonlisp/lang/Lisp2;->getString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSymbol(Lgnu/mapping/Environment;Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "env":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "sym":Ljava/lang/Object;
    move-object v2, v1

    sget-object v3, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne v2, v3, :cond_0

    .line 36
    const-string/jumbo v2, "nil"

    move-object v1, v2

    .line 37
    .end local v1    # "sym":Ljava/lang/Object;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lgnu/mapping/Symbol;

    :goto_0
    move-object v0, v2

    .end local v0    # "env":Lgnu/mapping/Environment;
    return-object v0

    .restart local v0    # "env":Lgnu/mapping/Environment;
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/Environment;->defaultNamespace()Lgnu/mapping/Namespace;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    goto :goto_0
.end method

.method public static getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "sym":Ljava/lang/Object;
    move-object v1, v0

    sget-object v2, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne v1, v2, :cond_0

    .line 44
    const-string/jumbo v1, "nil"

    move-object v0, v1

    .line 45
    .end local v0    # "sym":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lgnu/mapping/Symbol;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lgnu/mapping/Namespace;->getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    goto :goto_0
.end method

.method public static isBound(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "sym":Ljava/lang/Object;
    move-object v3, v0

    sget-object v4, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne v3, v4, :cond_0

    .line 23
    const/4 v3, 0x1

    move v0, v3

    .line 30
    .end local v0    # "sym":Ljava/lang/Object;
    .local v1, "env":Lgnu/mapping/Environment;
    .local v2, "symbol":Lgnu/mapping/Symbol;
    :goto_0
    return v0

    .line 24
    .end local v1    # "env":Lgnu/mapping/Environment;
    .end local v2    # "symbol":Lgnu/mapping/Symbol;
    .restart local v0    # "sym":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v3

    move-object v1, v3

    .line 26
    .restart local v1    # "env":Lgnu/mapping/Environment;
    move-object v3, v0

    instance-of v3, v3, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_1

    .line 27
    move-object v3, v0

    check-cast v3, Lgnu/mapping/Symbol;

    move-object v2, v3

    .line 30
    .restart local v2    # "symbol":Lgnu/mapping/Symbol;
    :goto_1
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_0

    .line 29
    .end local v2    # "symbol":Lgnu/mapping/Symbol;
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/Environment;->defaultNamespace()Lgnu/mapping/Namespace;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v2, v3

    .restart local v2    # "symbol":Lgnu/mapping/Symbol;
    goto :goto_1

    .line 30
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static isSymbol(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "val":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "val":Ljava/lang/Object;
    return v0

    .restart local v0    # "val":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setFunctionBinding(Lgnu/mapping/Environment;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "environ":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newValue":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v4

    sget-object v5, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    return-void
.end method
