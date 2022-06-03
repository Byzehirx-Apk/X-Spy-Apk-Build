.class public Lkawa/lang/AutoloadSyntax;
.super Lkawa/lang/Syntax;
.source "AutoloadSyntax.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field className:Ljava/lang/String;

.field env:Lgnu/mapping/Environment;

.field loaded:Lkawa/lang/Syntax;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadSyntax;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadSyntax;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "className":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 35
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lgnu/mapping/Environment;)V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadSyntax;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "className":Ljava/lang/String;
    move-object v3, p3

    .local v3, "env":Lgnu/mapping/Environment;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 41
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    .line 42
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lkawa/lang/AutoloadSyntax;->env:Lgnu/mapping/Environment;

    .line 43
    return-void
.end method

.method private throw_error(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadSyntax;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    new-instance v2, Lkawa/lang/GenericError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " while autoloading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v5, ""

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method load()V
    .locals 7

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadSyntax;
    move-object v3, v0

    invoke-virtual {v3}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 83
    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 84
    .local v2, "value":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Lkawa/lang/Syntax;

    if-eqz v3, :cond_1

    .line 86
    move-object v3, v0

    move-object v4, v2

    check-cast v4, Lkawa/lang/Syntax;

    iput-object v4, v3, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    .line 87
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    invoke-virtual {v3}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 88
    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lkawa/lang/Syntax;->setName(Ljava/lang/String;)V

    .line 102
    .line 103
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    move-object v3, v0

    const-string/jumbo v4, "failed to autoload valid syntax object "

    invoke-direct {v3, v4}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lgnu/mapping/WrongArguments; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 93
    .end local v2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 94
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    move-object v3, v0

    const-string/jumbo v4, "failed to find class "

    invoke-direct {v3, v4}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    .line 102
    goto :goto_0

    .line 95
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 96
    .local v2, "ex":Ljava/lang/InstantiationException;
    move-object v3, v0

    const-string/jumbo v4, "failed to instantiate class "

    invoke-direct {v3, v4}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    .line 102
    goto :goto_0

    .line 97
    .end local v2    # "ex":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 98
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    move-object v3, v0

    const-string/jumbo v4, "illegal access in class "

    invoke-direct {v3, v4}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    .line 102
    goto :goto_0

    .line 99
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    move-object v2, v3

    .line 100
    .local v2, "e":Lgnu/mapping/UnboundLocationException;
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "missing symbol \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/mapping/UnboundLocationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    .line 102
    goto :goto_0

    .line 101
    .end local v2    # "e":Lgnu/mapping/UnboundLocationException;
    :catch_4
    move-exception v3

    move-object v2, v3

    .line 102
    .local v2, "ex":Lgnu/mapping/WrongArguments;
    move-object v3, v0

    const-string/jumbo v4, "type error"

    invoke-direct {v3, v4}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadSyntax;
    move-object v1, p1

    .local v1, "ps":Ljava/io/PrintWriter;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lkawa/lang/AutoloadSyntax;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadSyntax;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lkawa/lang/AutoloadSyntax;->setName(Ljava/lang/String;)V

    .line 161
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 9

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadSyntax;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    if-nez v6, :cond_0

    .line 128
    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Lkawa/lang/AutoloadSyntax;->load()V
    :try_end_0
    .catch Lkawa/lang/GenericError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lgnu/mapping/WrongType; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    .line 139
    :cond_0
    move-object v6, v2

    iget-object v6, v6, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    move-object v3, v6

    .line 140
    .local v3, "saveSyntax":Lkawa/lang/Syntax;
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    iput-object v7, v6, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 143
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lkawa/lang/Syntax;->rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    move-object v4, v6

    .line 147
    move-object v6, v2

    move-object v7, v3

    iput-object v7, v6, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lkawa/lang/AutoloadSyntax;
    .end local v3    # "saveSyntax":Lkawa/lang/Syntax;
    :goto_0
    return-object v0

    .line 130
    .restart local v0    # "this":Lkawa/lang/AutoloadSyntax;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 132
    .local v3, "e":Lkawa/lang/GenericError;
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Lkawa/lang/GenericError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 134
    .end local v3    # "e":Lkawa/lang/GenericError;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 136
    .local v3, "e":Lgnu/mapping/WrongType;
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Lgnu/mapping/WrongType;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 147
    .local v3, "saveSyntax":Lkawa/lang/Syntax;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    move-object v7, v3

    iput-object v7, v6, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    move-object v6, v5

    throw v6
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 9

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadSyntax;
    move-object v1, p1

    .local v1, "st":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "defs":Lgnu/expr/ScopeExp;
    move-object v3, p3

    .local v3, "tr":Lkawa/lang/Translator;
    move-object v5, v0

    iget-object v5, v5, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    if-nez v5, :cond_0

    .line 111
    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Lkawa/lang/AutoloadSyntax;->load()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 119
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lkawa/lang/Syntax;->scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V

    .line 120
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 115
    .local v4, "e":Ljava/lang/RuntimeException;
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    .line 116
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadSyntax;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v1, v2

    .line 53
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v1

    const-string/jumbo v3, "#<syntax "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 54
    move-object v2, v0

    invoke-virtual {v2}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 56
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 57
    move-object v2, v1

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 59
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    if-eqz v2, :cond_1

    .line 60
    move-object v2, v1

    const-string/jumbo v3, "autoloaded>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 67
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lkawa/lang/AutoloadSyntax;
    return-object v0

    .line 63
    .restart local v0    # "this":Lkawa/lang/AutoloadSyntax;
    :cond_1
    move-object v2, v1

    const-string/jumbo v3, "autoload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 64
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 65
    move-object v2, v1

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadSyntax;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 154
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 155
    return-void
.end method
