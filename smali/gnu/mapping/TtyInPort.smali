.class public Lgnu/mapping/TtyInPort;
.super Lgnu/mapping/InPort;
.source "TtyInPort.java"


# instance fields
.field protected promptEmitted:Z

.field protected prompter:Lgnu/mapping/Procedure;

.field protected tie:Lgnu/mapping/OutPort;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/OutPort;)V
    .locals 7

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/TtyInPort;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "name":Lgnu/text/Path;
    move-object v3, p3

    .local v3, "tie":Lgnu/mapping/OutPort;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/mapping/InPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;)V

    .line 31
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/mapping/TtyInPort;->setConvertCR(Z)V

    .line 32
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lgnu/text/Path;Lgnu/mapping/OutPort;)V
    .locals 7

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/TtyInPort;
    move-object v1, p1

    .local v1, "in":Ljava/io/Reader;
    move-object v2, p2

    .local v2, "name":Lgnu/text/Path;
    move-object v3, p3

    .local v3, "tie":Lgnu/mapping/OutPort;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;Lgnu/text/Path;)V

    .line 38
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/mapping/TtyInPort;->setConvertCR(Z)V

    .line 39
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    .line 40
    return-void
.end method


# virtual methods
.method public emitPrompt(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/TtyInPort;
    move-object v1, p1

    .local v1, "prompt":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 55
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->flush()V

    .line 56
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->clearBuffer()V

    .line 57
    return-void
.end method

.method public fill(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/TtyInPort;
    move v1, p1

    .local v1, "len":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/TtyInPort;->in:Ljava/io/Reader;

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/TtyInPort;->buffer:[C

    move-object v5, v0

    iget v5, v5, Lgnu/mapping/TtyInPort;->pos:I

    move v6, v1

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    move-result v3

    move v2, v3

    .line 47
    .local v2, "count":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v3, :cond_0

    move v3, v2

    if-lez v3, :cond_0

    .line 48
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/TtyInPort;->buffer:[C

    move-object v5, v0

    iget v5, v5, Lgnu/mapping/TtyInPort;->pos:I

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/OutPort;->echo([CII)V

    .line 49
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lgnu/mapping/TtyInPort;
    return v0
.end method

.method public getPrompter()Lgnu/mapping/Procedure;
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/TtyInPort;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/TtyInPort;->prompter:Lgnu/mapping/Procedure;

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/TtyInPort;
    return-object v0
.end method

.method public lineStart(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/TtyInPort;
    move v1, p1

    .local v1, "revisited":Z
    move v4, v1

    if-nez v4, :cond_1

    .line 63
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v4, :cond_0

    .line 64
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v4}, Lgnu/mapping/OutPort;->freshLine()V

    .line 65
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/TtyInPort;->prompter:Lgnu/mapping/Procedure;

    if-eqz v4, :cond_1

    .line 69
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lgnu/mapping/TtyInPort;->prompter:Lgnu/mapping/Procedure;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 70
    .local v2, "prompt":Ljava/lang/Object;
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 72
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 73
    .local v3, "string":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 75
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/mapping/TtyInPort;->emitPrompt(Ljava/lang/String;)V

    .line 76
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lgnu/mapping/TtyInPort;->promptEmitted:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 85
    .end local v2    # "prompt":Ljava/lang/Object;
    .end local v3    # "string":Ljava/lang/String;
    :cond_1
    return-void

    .line 80
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 81
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v4, Ljava/io/IOException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error when evaluating prompt:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/TtyInPort;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v2, :cond_0

    .line 90
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->flush()V

    .line 91
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Lgnu/mapping/InPort;->read()I

    move-result v2

    move v1, v2

    .line 92
    .local v1, "ch":I
    move v2, v1

    if-gez v2, :cond_1

    .line 94
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/mapping/TtyInPort;->promptEmitted:Z

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 95
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->println()V

    .line 97
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/mapping/TtyInPort;->promptEmitted:Z

    .line 98
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lgnu/mapping/TtyInPort;
    return v0

    .line 94
    .restart local v0    # "this":Lgnu/mapping/TtyInPort;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public read([CII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/TtyInPort;
    move-object v1, p1

    .local v1, "cbuf":[C
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v5, :cond_0

    .line 104
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v5}, Lgnu/mapping/OutPort;->flush()V

    .line 105
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-super {v5, v6, v7, v8}, Lgnu/mapping/InPort;->read([CII)I

    move-result v5

    move v4, v5

    .line 106
    .local v4, "count":I
    move v5, v4

    if-gez v5, :cond_1

    move-object v5, v0

    iget-boolean v5, v5, Lgnu/mapping/TtyInPort;->promptEmitted:Z

    move-object v6, v0

    iget-object v6, v6, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 107
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v5}, Lgnu/mapping/OutPort;->println()V

    .line 108
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lgnu/mapping/TtyInPort;->promptEmitted:Z

    .line 109
    move v5, v4

    move v0, v5

    .end local v0    # "this":Lgnu/mapping/TtyInPort;
    return v0

    .line 106
    .restart local v0    # "this":Lgnu/mapping/TtyInPort;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public setPrompter(Lgnu/mapping/Procedure;)V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/TtyInPort;
    move-object v1, p1

    .local v1, "prompter":Lgnu/mapping/Procedure;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/mapping/TtyInPort;->prompter:Lgnu/mapping/Procedure;

    .line 26
    return-void
.end method
