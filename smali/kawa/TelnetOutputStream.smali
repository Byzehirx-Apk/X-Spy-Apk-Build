.class public Lkawa/TelnetOutputStream;
.super Ljava/io/FilterOutputStream;
.source "TelnetOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lkawa/TelnetOutputStream;
    move-object v1, p1

    .local v1, "out":Ljava/io/OutputStream;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 15
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lkawa/TelnetOutputStream;
    move v1, p1

    .local v1, "value":I
    move v2, v1

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    .line 20
    move-object v2, v0

    iget-object v2, v2, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 21
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 22
    return-void
.end method

.method public write([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lkawa/TelnetOutputStream;
    move-object v1, p1

    .local v1, "b":[B
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lkawa/TelnetOutputStream;->write([BII)V

    .line 27
    return-void
.end method

.method public write([BII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lkawa/TelnetOutputStream;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move v6, v2

    move v7, v3

    add-int/2addr v6, v7

    move v5, v6

    .line 33
    .local v5, "limit":I
    move v6, v2

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_1

    .line 35
    move-object v6, v1

    move v7, v4

    aget-byte v6, v6, v7

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 38
    move-object v6, v0

    iget-object v6, v6, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    move-object v7, v1

    move v8, v2

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v2

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 41
    move v6, v4

    move v2, v6

    .line 33
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    move-object v7, v1

    move v8, v2

    move v9, v5

    move v10, v2

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 46
    return-void
.end method

.method public writeCommand(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lkawa/TelnetOutputStream;
    move v1, p1

    .local v1, "code":I
    move-object v2, v0

    iget-object v2, v2, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 51
    move-object v2, v0

    iget-object v2, v2, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 52
    return-void
.end method

.method public final writeCommand(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lkawa/TelnetOutputStream;
    move v1, p1

    .local v1, "code":I
    move v2, p2

    .local v2, "option":I
    move-object v3, v0

    iget-object v3, v3, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 57
    move-object v3, v0

    iget-object v3, v3, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 58
    move-object v3, v0

    iget-object v3, v3, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 59
    return-void
.end method

.method public final writeDo(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lkawa/TelnetOutputStream;
    move v1, p1

    .local v1, "option":I
    move-object v2, v0

    const/16 v3, 0xfd

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 64
    return-void
.end method

.method public final writeDont(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lkawa/TelnetOutputStream;
    move v1, p1

    .local v1, "option":I
    move-object v2, v0

    const/16 v3, 0xfe

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 69
    return-void
.end method

.method public final writeSubCommand(I[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lkawa/TelnetOutputStream;
    move v1, p1

    .local v1, "option":I
    move-object v2, p2

    .local v2, "command":[B
    move-object v3, v0

    const/16 v4, 0xfa

    move v5, v1

    invoke-virtual {v3, v4, v5}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 85
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lkawa/TelnetOutputStream;->write([B)V

    .line 86
    move-object v3, v0

    const/16 v4, 0xf0

    invoke-virtual {v3, v4}, Lkawa/TelnetOutputStream;->writeCommand(I)V

    .line 87
    return-void
.end method

.method public final writeWill(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lkawa/TelnetOutputStream;
    move v1, p1

    .local v1, "option":I
    move-object v2, v0

    const/16 v3, 0xfb

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 74
    return-void
.end method

.method public final writeWont(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lkawa/TelnetOutputStream;
    move v1, p1

    .local v1, "option":I
    move-object v2, v0

    const/16 v3, 0xfc

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 79
    return-void
.end method
