.class public Lgnu/mapping/LogWriter;
.super Ljava/io/FilterWriter;
.source "LogWriter.java"


# instance fields
.field private log:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LogWriter;
    move-object v1, p1

    .local v1, "out":Ljava/io/Writer;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 14
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LogWriter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 78
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 79
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Ljava/io/FilterWriter;->close()V

    .line 80
    return-void
.end method

.method public closeLogFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LogWriter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 37
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 38
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    .line 39
    return-void
.end method

.method public echo([CII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LogWriter;
    move-object v1, p1

    .local v1, "buf":[C
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    if-eqz v4, :cond_0

    .line 51
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Writer;->write([CII)V

    .line 52
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LogWriter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 71
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 72
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Ljava/io/FilterWriter;->flush()V

    .line 73
    return-void
.end method

.method public final getLogFile()Ljava/io/Writer;
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LogWriter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/LogWriter;
    return-object v0
.end method

.method public setLogFile(Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LogWriter;
    move-object v1, p1

    .local v1, "log":Ljava/io/Writer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    .line 21
    return-void
.end method

.method public setLogFile(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LogWriter;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    new-instance v3, Ljava/io/PrintWriter;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    new-instance v5, Ljava/io/BufferedWriter;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/io/FileWriter;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, v2, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    .line 32
    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LogWriter;
    move v1, p1

    .local v1, "c":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    if-eqz v2, :cond_0

    .line 44
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 45
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljava/io/FilterWriter;->write(I)V

    .line 46
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LogWriter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    if-eqz v4, :cond_0

    .line 64
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 65
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Ljava/io/FilterWriter;->write(Ljava/lang/String;II)V

    .line 66
    return-void
.end method

.method public write([CII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/LogWriter;
    move-object v1, p1

    .local v1, "buf":[C
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    if-eqz v4, :cond_0

    .line 57
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/LogWriter;->log:Ljava/io/Writer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Writer;->write([CII)V

    .line 58
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Ljava/io/FilterWriter;->write([CII)V

    .line 59
    return-void
.end method
