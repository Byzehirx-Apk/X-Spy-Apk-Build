.class public Lgnu/expr/ExpVisitor;
.super Ljava/lang/Object;
.source "ExpVisitor.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgnu/text/SourceLocator;"
    }
.end annotation


# instance fields
.field comp:Lgnu/expr/Compilation;

.field protected currentLambda:Lgnu/expr/LambdaExp;

.field protected exitValue:Ljava/lang/Object;

.field protected messages:Lgnu/text/SourceMessages;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 150
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 153
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "r":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method public error(CLjava/lang/String;)V
    .locals 8

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move v1, p1

    .local v1, "kind":C
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move v3, v1

    const/16 v4, 0x77

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v3}, Lgnu/expr/Compilation;->warnAsError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    const/16 v3, 0x65

    move v1, v3

    .line 188
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    if-eqz v3, :cond_1

    .line 189
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_1
    new-instance v3, Ljava/lang/Error;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "internal error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getColumnNumber()I
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->getColumnNumber()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return v0
.end method

.method public getCompilation()Lgnu/expr/Compilation;
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method public final getCurrentLambda()Lgnu/expr/LambdaExp;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method public getExitValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->getFileName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method public final getLineNumber()I
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->getLineNumber()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return v0
.end method

.method public getMessages()Lgnu/text/SourceMessages;
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->getPublicId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->getSystemId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method public isStableSourceLocation()Z
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return v0
.end method

.method public noteError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    if-eqz v2, :cond_0

    .line 197
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    const/16 v3, 0x65

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 198
    :cond_0
    new-instance v2, Lgnu/expr/ErrorExp;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method public setColumn(I)V
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move v1, p1

    .local v1, "column":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/SourceMessages;->setColumn(I)V

    return-void
.end method

.method public setContext(Lgnu/expr/Compilation;)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    .line 34
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v3

    iput-object v3, v2, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    .line 35
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/SourceMessages;->setFile(Ljava/lang/String;)V

    return-void
.end method

.method public setLine(I)V
    .locals 4

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move v1, p1

    .local v1, "line":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/SourceMessages;->setLine(I)V

    return-void
.end method

.method public setLine(Ljava/lang/String;II)V
    .locals 8

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move v2, p2

    .local v2, "line":I
    move v3, p3

    .local v3, "column":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 217
    return-void
.end method

.method protected update(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TR;)",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "r":Ljava/lang/Object;, "TR;"
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method public visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v8

    move v3, v8

    .line 45
    .local v3, "line":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    if-eqz v8, :cond_0

    move v8, v3

    if-lez v8, :cond_0

    .line 47
    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v8}, Lgnu/text/SourceMessages;->getFileName()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 48
    .local v4, "saveFile":Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v8}, Lgnu/text/SourceMessages;->getLineNumber()I

    move-result v8

    move v5, v8

    .line 49
    .local v5, "saveLine":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v8}, Lgnu/text/SourceMessages;->getColumnNumber()I

    move-result v8

    move v6, v8

    .line 50
    .local v6, "saveColumn":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/Expression;->getFileName()Ljava/lang/String;

    move-result-object v9

    move v10, v3

    move-object v11, v1

    invoke-virtual {v11}, Lgnu/expr/Expression;->getColumnNumber()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 51
    move-object v8, v1

    move-object v9, v0

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 52
    .local v7, "ret":Ljava/lang/Object;, "TR;"
    move-object v8, v0

    iget-object v8, v8, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    move-object v9, v4

    move v10, v5

    move v11, v6

    invoke-virtual {v8, v9, v10, v11}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 53
    move-object v8, v7

    move-object v0, v8

    .line 55
    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .end local v4    # "saveFile":Ljava/lang/String;
    .end local v5    # "saveLine":I
    .end local v6    # "saveColumn":I
    .end local v7    # "ret":Ljava/lang/Object;, "TR;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    :cond_0
    move-object v8, v1

    move-object v9, v0

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    goto :goto_0
.end method

.method public visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TD;)",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/expr/ExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->update(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ApplyExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitBeginExp(Lgnu/expr/BeginExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/BeginExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/BeginExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitBlockExp(Lgnu/expr/BlockExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/BlockExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/BlockExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ClassExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ClassExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected final visitDeclarationType(Lgnu/expr/Declaration;)V
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v4, v1

    iget-object v4, v4, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    move-object v2, v4

    .line 76
    .local v2, "texp1":Lgnu/expr/Expression;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 78
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v3, v4

    .line 79
    .local v3, "texp2":Lgnu/expr/Expression;
    move-object v4, v3

    move-object v5, v2

    if-eq v4, v5, :cond_0

    .line 80
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 82
    .end local v3    # "texp2":Lgnu/expr/Expression;
    :cond_0
    return-void
.end method

.method protected final visitDeclarationTypes(Lgnu/expr/ScopeExp;)V
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ScopeExp;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    .local v2, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 89
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/ExpVisitor;->visitDeclarationType(Lgnu/expr/Declaration;)V

    .line 87
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method public visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/LambdaExp;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    .line 182
    return-void
.end method

.method protected visitExitExp(Lgnu/expr/ExitExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ExitExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ExitExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Expression;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 28
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method public visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lgnu/expr/Expression;",
            "ITD;)[",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exps":[Lgnu/expr/Expression;
    move v2, p2

    .local v2, "n":I
    move-object v3, p3

    .local v3, "d":Ljava/lang/Object;, "TD;"
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 175
    move-object v5, v1

    move v6, v4

    move-object v7, v0

    move-object v8, v1

    move v9, v4

    aget-object v8, v8, v9

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v7

    aput-object v7, v5, v6

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    :cond_0
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method public visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lgnu/expr/Expression;",
            "TD;)[",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exps":[Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0

    .restart local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    array-length v5, v5

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v3

    goto :goto_0
.end method

.method protected visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/FluidLetExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/FluidLetExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitIfExp(Lgnu/expr/IfExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/IfExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/IfExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/LambdaExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/LambdaExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitLangExp(Lgnu/expr/LangExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/LangExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/LangExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/LetExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/LetExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ModuleExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ModuleExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitObjectExp(Lgnu/expr/ObjectExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ObjectExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ObjectExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitQuoteExp(Lgnu/expr/QuoteExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/QuoteExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/QuoteExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ReferenceExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ReferenceExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ScopeExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ScopeExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/ExpVisitor;->visitDeclarationTypes(Lgnu/expr/ScopeExp;)V

    .line 96
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/SetExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/SetExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    move-object v3, v5

    .line 113
    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 114
    .local v4, "updateNeeded":Z
    move-object v5, v1

    move-object v6, v0

    move-object v7, v1

    iget-object v7, v7, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/SetExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lgnu/expr/ExpVisitor;->visitSetExpValue(Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v6

    iput-object v6, v5, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    .line 122
    move v5, v4

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    iput-object v6, v5, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 125
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    instance-of v5, v5, Lgnu/expr/LambdaExp;

    if-eqz v5, :cond_0

    .line 126
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    check-cast v5, Lgnu/expr/LambdaExp;

    move-object v6, v3

    iput-object v6, v5, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 128
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lgnu/expr/ExpVisitor;->defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0

    .line 113
    .end local v4    # "updateNeeded":Z
    .restart local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected visitSetExpValue(Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TD;",
            "Lgnu/expr/Declaration;",
            ")",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "new_value":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, p3

    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitSynchronizedExp(Lgnu/expr/SynchronizedExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/SynchronizedExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/SynchronizedExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ThisExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ThisExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method

.method protected visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/TryExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/TryExp;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    return-object v0
.end method
