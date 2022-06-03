.class public Lkawa/lang/TemplateScope;
.super Lgnu/expr/LetExp;
.source "TemplateScope.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field macroContext:Lgnu/expr/Declaration;

.field private syntax:Lkawa/lang/Syntax;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lkawa/lang/TemplateScope;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lgnu/expr/ScopeExp;)V
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lkawa/lang/TemplateScope;
    move-object v1, p1

    .local v1, "outer":Lgnu/expr/ScopeExp;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 29
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/lang/TemplateScope;->outer:Lgnu/expr/ScopeExp;

    .line 30
    return-void
.end method

.method public static make()Lkawa/lang/TemplateScope;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    invoke-static {v0}, Lkawa/lang/TemplateScope;->make(Lkawa/lang/Translator;)Lkawa/lang/TemplateScope;

    move-result-object v0

    return-object v0
.end method

.method public static make(Lkawa/lang/Translator;)Lkawa/lang/TemplateScope;
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "tr":Lkawa/lang/Translator;
    new-instance v3, Lkawa/lang/TemplateScope;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lkawa/lang/TemplateScope;-><init>()V

    move-object v1, v3

    .line 40
    .local v1, "templateScope":Lkawa/lang/TemplateScope;
    move-object v3, v0

    invoke-virtual {v3}, Lkawa/lang/Translator;->getCurrentSyntax()Lkawa/lang/Syntax;

    move-result-object v3

    move-object v2, v3

    .line 41
    .local v2, "curSyntax":Lkawa/lang/Syntax;
    move-object v3, v2

    instance-of v3, v3, Lkawa/lang/Macro;

    if-eqz v3, :cond_0

    .line 43
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Lkawa/lang/Macro;

    invoke-virtual {v4}, Lkawa/lang/Macro;->getCapturedScope()Lgnu/expr/ScopeExp;

    move-result-object v4

    iput-object v4, v3, Lkawa/lang/TemplateScope;->outer:Lgnu/expr/ScopeExp;

    .line 44
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    iput-object v4, v3, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    .line 46
    :cond_0
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lkawa/lang/TemplateScope;->syntax:Lkawa/lang/Syntax;

    .line 47
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "tr":Lkawa/lang/Translator;
    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lkawa/lang/TemplateScope;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/ScopeExp;

    iput-object v3, v2, Lkawa/lang/TemplateScope;->outer:Lgnu/expr/ScopeExp;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lkawa/lang/TemplateScope;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-super {v2}, Lgnu/expr/LetExp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/TemplateScope;->syntax:Lkawa/lang/Syntax;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/TemplateScope;
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lkawa/lang/TemplateScope;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/TemplateScope;->outer:Lgnu/expr/ScopeExp;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
