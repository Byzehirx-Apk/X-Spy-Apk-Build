.class public Lgnu/text/SyntaxException;
.super Ljava/lang/Exception;
.source "SyntaxException.java"


# instance fields
.field header:Ljava/lang/String;

.field public maxToPrint:I

.field messages:Lgnu/text/SourceMessages;


# direct methods
.method public constructor <init>(Lgnu/text/SourceMessages;)V
    .locals 4

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/text/SyntaxException;
    move-object v1, p1

    .local v1, "messages":Lgnu/text/SourceMessages;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 53
    move-object v2, v0

    const/16 v3, 0xa

    iput v3, v2, Lgnu/text/SyntaxException;->maxToPrint:I

    .line 23
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/SyntaxException;->messages:Lgnu/text/SourceMessages;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/text/SourceMessages;)V
    .locals 5

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/text/SyntaxException;
    move-object v1, p1

    .local v1, "header":Ljava/lang/String;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    .line 53
    move-object v3, v0

    const/16 v4, 0xa

    iput v4, v3, Lgnu/text/SyntaxException;->maxToPrint:I

    .line 28
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/text/SyntaxException;->header:Ljava/lang/String;

    .line 29
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/text/SyntaxException;->messages:Lgnu/text/SourceMessages;

    .line 30
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/text/SyntaxException;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/SyntaxException;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->clear()V

    .line 51
    return-void
.end method

.method public final getHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/text/SyntaxException;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/SyntaxException;->header:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/SyntaxException;
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/text/SyntaxException;
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v4

    .line 58
    .local v1, "buffer":Ljava/lang/StringBuffer;
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SyntaxException;->header:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 59
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/text/SyntaxException;->header:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 60
    :cond_0
    move-object v4, v0

    iget v4, v4, Lgnu/text/SyntaxException;->maxToPrint:I

    move v2, v4

    .line 61
    .local v2, "max":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SyntaxException;->messages:Lgnu/text/SourceMessages;

    iget-object v4, v4, Lgnu/text/SourceMessages;->firstError:Lgnu/text/SourceError;

    move-object v3, v4

    .line 62
    .local v3, "err":Lgnu/text/SourceError;
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    if-ltz v4, :cond_1

    .line 64
    move-object v4, v1

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 65
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 62
    move-object v4, v3

    iget-object v4, v4, Lgnu/text/SourceError;->next:Lgnu/text/SourceError;

    move-object v3, v4

    goto :goto_0

    .line 67
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/text/SyntaxException;
    return-object v0
.end method

.method public getMessages()Lgnu/text/SourceMessages;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/text/SyntaxException;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/SyntaxException;->messages:Lgnu/text/SourceMessages;

    move-object v0, v1

    .end local v0    # "this":Lgnu/text/SyntaxException;
    return-object v0
.end method

.method public printAll(Ljava/io/PrintWriter;I)V
    .locals 6

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/text/SyntaxException;
    move-object v1, p1

    .local v1, "out":Ljava/io/PrintWriter;
    move v2, p2

    .local v2, "max":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/SyntaxException;->header:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 44
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/text/SyntaxException;->header:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/SyntaxException;->messages:Lgnu/text/SourceMessages;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 46
    return-void
.end method

.method public final setHeader(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/text/SyntaxException;
    move-object v1, p1

    .local v1, "header":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/SyntaxException;->header:Ljava/lang/String;

    return-void
.end method
