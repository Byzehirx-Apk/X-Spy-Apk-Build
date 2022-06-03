.class public Lkawa/lang/SyntaxForms;
.super Ljava/lang/Object;
.source "SyntaxForms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkawa/lang/SyntaxForms$PairSyntaxForm;,
        Lkawa/lang/SyntaxForms$SimpleSyntaxForm;
    }
.end annotation


# static fields
.field public static final DEBUGGING:Z = true


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lkawa/lang/SyntaxForms;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method public static freeIdentifierEquals(Lkawa/lang/SyntaxForm;Lkawa/lang/SyntaxForm;)Z
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "id1":Lkawa/lang/SyntaxForm;
    move-object v1, p1

    .local v1, "id2":Lkawa/lang/SyntaxForm;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v3

    check-cast v3, Lkawa/lang/Translator;

    move-object v2, v3

    .line 48
    .local v2, "tr":Lkawa/lang/Translator;
    move-object v3, v2

    iget-object v3, v3, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    move-object v4, v0

    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v3

    move-object v4, v2

    iget-object v4, v4, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    move-object v5, v1

    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "id1":Lkawa/lang/SyntaxForm;
    return v0

    .restart local v0    # "id1":Lkawa/lang/SyntaxForm;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static fromDatum(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "datum":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "template":Lkawa/lang/SyntaxForm;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v3

    invoke-static {v2, v3}, Lkawa/lang/SyntaxForms;->makeForm(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "datum":Ljava/lang/Object;
    return-object v0
.end method

.method public static fromDatumIfNeeded(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "datum":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "template":Lkawa/lang/SyntaxForm;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 68
    move-object v2, v1

    move-object v0, v2

    .line 72
    .end local v0    # "datum":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 69
    .restart local v0    # "datum":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_1

    .line 70
    move-object v2, v0

    check-cast v2, Lkawa/lang/SyntaxForm;

    move-object v0, v2

    goto :goto_0

    .line 72
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lkawa/lang/SyntaxForms;->fromDatum(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static isIdentifier(Lkawa/lang/SyntaxForm;)Z
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "form":Lkawa/lang/SyntaxForm;
    move-object v1, v0

    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgnu/mapping/Symbol;

    move v0, v1

    .end local v0    # "form":Lkawa/lang/SyntaxForm;
    return v0
.end method

.method public static makeForm(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "datum":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "scope":Lkawa/lang/TemplateScope;
    move-object v2, v0

    instance-of v2, v2, Lgnu/lists/Pair;

    if-eqz v2, :cond_0

    .line 18
    new-instance v2, Lkawa/lang/SyntaxForms$PairSyntaxForm;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    check-cast v4, Lgnu/lists/Pair;

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lkawa/lang/SyntaxForms$PairSyntaxForm;-><init>(Lgnu/lists/Pair;Lkawa/lang/TemplateScope;)V

    move-object v0, v2

    .line 21
    .end local v0    # "datum":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 19
    .restart local v0    # "datum":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_1

    .line 20
    move-object v2, v0

    move-object v0, v2

    goto :goto_0

    .line 21
    :cond_1
    new-instance v2, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lkawa/lang/SyntaxForms$SimpleSyntaxForm;-><init>(Ljava/lang/Object;Lkawa/lang/TemplateScope;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static makeWithTemplate(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "template":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "form":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_0

    .line 34
    move-object v3, v1

    check-cast v3, Lkawa/lang/SyntaxForm;

    move-object v0, v3

    .line 42
    .end local v0    # "template":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 35
    .restart local v0    # "template":Ljava/lang/Object;
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_2

    .line 37
    move-object v3, v0

    check-cast v3, Lkawa/lang/SyntaxForm;

    move-object v2, v3

    .line 38
    .local v2, "sform":Lkawa/lang/SyntaxForm;
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 39
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 40
    :cond_1
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lkawa/lang/SyntaxForms;->fromDatum(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 42
    .end local v2    # "sform":Lkawa/lang/SyntaxForm;
    :cond_2
    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method

.method public static rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v2

    check-cast v2, Lkawa/lang/Translator;

    move-object v1, v2

    .line 78
    .local v1, "tr":Lkawa/lang/Translator;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x":Ljava/lang/Object;
    return-object v0
.end method

.method public static rewriteBody(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v2

    check-cast v2, Lkawa/lang/Translator;

    move-object v1, v2

    .line 84
    .local v1, "tr":Lkawa/lang/Translator;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x":Ljava/lang/Object;
    return-object v0
.end method

.method public static toString(Lkawa/lang/SyntaxForm;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "sform":Lkawa/lang/SyntaxForm;
    move-object v1, p1

    .local v1, "id":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "#<syntax"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 92
    .local v2, "sbuf":Ljava/lang/StringBuilder;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 94
    move-object v4, v2

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 95
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 97
    :cond_0
    move-object v4, v2

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 98
    move-object v4, v2

    move-object v5, v0

    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 101
    move-object v4, v0

    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    .line 102
    .local v3, "scope":Lkawa/lang/TemplateScope;
    move-object v4, v3

    if-nez v4, :cond_1

    .line 104
    move-object v4, v2

    const-string/jumbo v5, " in null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 112
    :goto_0
    move-object v4, v2

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 113
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "sform":Lkawa/lang/SyntaxForm;
    return-object v0

    .line 108
    .restart local v0    # "sform":Lkawa/lang/SyntaxForm;
    :cond_1
    move-object v4, v2

    const-string/jumbo v5, " in #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 109
    move-object v4, v2

    move-object v5, v3

    iget v5, v5, Lkawa/lang/TemplateScope;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0
.end method
