.class public Lgnu/expr/ErrorExp;
.super Lgnu/expr/Expression;
.source "ErrorExp.java"


# instance fields
.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ErrorExp;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/expr/Expression;-><init>()V

    .line 15
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ErrorExp;->message:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/expr/Compilation;)V
    .locals 6

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ErrorExp;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/expr/Expression;-><init>()V

    .line 26
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v3

    const/16 v4, 0x65

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 27
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/ErrorExp;->message:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/text/SourceMessages;)V
    .locals 6

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ErrorExp;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/expr/Expression;-><init>()V

    .line 20
    move-object v3, v2

    const/16 v4, 0x65

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 21
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/ErrorExp;->message:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ErrorExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    new-instance v3, Ljava/lang/Error;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": internal error: compiling error expression: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ErrorExp;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected mustCompile()Z
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ErrorExp;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/ErrorExp;
    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ErrorExp;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v2, v1

    const-string/jumbo v3, "(Error"

    const/4 v4, 0x0

    const-string/jumbo v5, ")"

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 35
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 36
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ErrorExp;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 37
    move-object v2, v1

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 38
    return-void
.end method
