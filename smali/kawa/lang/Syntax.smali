.class public abstract Lkawa/lang/Syntax;
.super Ljava/lang/Object;
.source "Syntax.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Lgnu/mapping/Named;


# instance fields
.field name:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Syntax;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Syntax;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lkawa/lang/Syntax;->setName(Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Syntax;
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/Syntax;
    return-object v0

    .restart local v0    # "this":Lkawa/lang/Syntax;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    check-cast v1, Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSymbol()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Syntax;
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/Syntax;
    return-object v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 5

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Syntax;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v3, v1

    const-string/jumbo v4, "#<syntax "

    invoke-interface {v3, v4}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 88
    move-object v3, v0

    invoke-virtual {v3}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 89
    .local v2, "name":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    if-nez v4, :cond_0

    const-string/jumbo v4, "<unnamed>"

    :goto_0
    invoke-interface {v3, v4}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 90
    move-object v3, v1

    const/16 v4, 0x3e

    invoke-interface {v3, v4}, Lgnu/lists/Consumer;->write(I)V

    .line 91
    return-void

    .line 89
    :cond_0
    move-object v4, v2

    goto :goto_0
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Syntax;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    new-instance v3, Ljava/lang/InternalError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "rewrite method not defined"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Syntax;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lkawa/lang/Syntax;->rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lkawa/lang/Syntax;
    return-object v0
.end method

.method public rewriteForm(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Syntax;
    move-object v1, p1

    .local v1, "form":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v3, v1

    instance-of v3, v3, Lgnu/lists/Pair;

    if-eqz v3, :cond_0

    .line 53
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lgnu/lists/Pair;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lkawa/lang/Syntax;->rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .line 55
    .end local v0    # "this":Lkawa/lang/Syntax;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lkawa/lang/Syntax;
    :cond_0
    move-object v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "non-list form for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Syntax;
    move-object v1, p1

    .local v1, "st":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "forms":Ljava/util/Vector;
    move-object v3, p3

    .local v3, "defs":Lgnu/expr/ScopeExp;
    move-object v4, p4

    .local v4, "tr":Lkawa/lang/Translator;
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 82
    const/4 v5, 0x1

    move v0, v5

    .end local v0    # "this":Lkawa/lang/Syntax;
    return v0
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 11

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Syntax;
    move-object v1, p1

    .local v1, "st":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "defs":Lgnu/expr/ScopeExp;
    move-object v3, p3

    .local v3, "tr":Lkawa/lang/Translator;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    iget-object v7, v7, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v5

    move v4, v5

    .line 66
    .local v4, "ok":Z
    move v5, v4

    if-nez v5, :cond_0

    .line 67
    move-object v5, v3

    iget-object v5, v5, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    new-instance v6, Lgnu/expr/ErrorExp;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "syntax error expanding "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 68
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Syntax;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Syntax;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    return-void
.end method
