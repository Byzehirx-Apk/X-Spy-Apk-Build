.class Lgnu/kawa/servlet/HttpOutputStream;
.super Ljava/io/OutputStream;
.source "ServletPrinter.java"


# instance fields
.field buffer:[B

.field context:Lgnu/kawa/servlet/HttpRequestContext;

.field count:I

.field out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lgnu/kawa/servlet/HttpRequestContext;I)V
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpOutputStream;
    move-object v1, p1

    .local v1, "context":Lgnu/kawa/servlet/HttpRequestContext;
    move v2, p2

    .local v2, "bufSize":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/io/OutputStream;-><init>()V

    .line 80
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/servlet/HttpOutputStream;->context:Lgnu/kawa/servlet/HttpRequestContext;

    .line 81
    move-object v3, v0

    move v4, v2

    new-array v4, v4, [B

    iput-object v4, v3, Lgnu/kawa/servlet/HttpOutputStream;->buffer:[B

    .line 82
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpOutputStream;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/servlet/HttpOutputStream;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    .line 149
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    invoke-virtual {v1, v2}, Lgnu/kawa/servlet/HttpOutputStream;->maybeSendResponseHeaders(I)V

    .line 150
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/servlet/HttpOutputStream;->context:Lgnu/kawa/servlet/HttpRequestContext;

    invoke-virtual {v2}, Lgnu/kawa/servlet/HttpRequestContext;->getResponseStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, v1, Lgnu/kawa/servlet/HttpOutputStream;->out:Ljava/io/OutputStream;

    .line 152
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/servlet/HttpOutputStream;->flush()V

    .line 153
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/servlet/HttpOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 154
    return-void
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpOutputStream;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/servlet/HttpOutputStream;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    .line 123
    move-object v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lgnu/kawa/servlet/HttpOutputStream;->maybeSendResponseHeaders(I)V

    .line 124
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/servlet/HttpOutputStream;->context:Lgnu/kawa/servlet/HttpRequestContext;

    invoke-virtual {v2}, Lgnu/kawa/servlet/HttpRequestContext;->getResponseStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, v1, Lgnu/kawa/servlet/HttpOutputStream;->out:Ljava/io/OutputStream;

    .line 126
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    if-lez v1, :cond_1

    .line 128
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/servlet/HttpOutputStream;->out:Ljava/io/OutputStream;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/servlet/HttpOutputStream;->buffer:[B

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 129
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    .line 131
    :cond_1
    return-void
.end method

.method maybeSendResponseHeaders(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpOutputStream;
    move v1, p1

    .local v1, "count":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/servlet/HttpOutputStream;->context:Lgnu/kawa/servlet/HttpRequestContext;

    iget v3, v3, Lgnu/kawa/servlet/HttpRequestContext;->statusCode:I

    move v2, v3

    .line 137
    .local v2, "statusCode":I
    move v3, v2

    const/16 v4, -0x3e7

    if-eq v3, v4, :cond_0

    .line 139
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/servlet/HttpOutputStream;->context:Lgnu/kawa/servlet/HttpRequestContext;

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/servlet/HttpOutputStream;->context:Lgnu/kawa/servlet/HttpRequestContext;

    iget-object v5, v5, Lgnu/kawa/servlet/HttpRequestContext;->statusReasonPhrase:Ljava/lang/String;

    move v6, v1

    int-to-long v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/kawa/servlet/HttpRequestContext;->sendResponseHeaders(ILjava/lang/String;J)V

    .line 140
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/servlet/HttpOutputStream;->context:Lgnu/kawa/servlet/HttpRequestContext;

    const/16 v4, -0x3e7

    iput v4, v3, Lgnu/kawa/servlet/HttpRequestContext;->statusCode:I

    .line 142
    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 3

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpOutputStream;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    .line 115
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/servlet/HttpOutputStream;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/kawa/servlet/HttpOutputStream;
    return v0

    .restart local v0    # "this":Lgnu/kawa/servlet/HttpOutputStream;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public write(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpOutputStream;
    move v1, p1

    .local v1, "b":I
    move-object v2, v0

    iget v2, v2, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/servlet/HttpOutputStream;->buffer:[B

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 88
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/servlet/HttpOutputStream;->flush()V

    .line 89
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/servlet/HttpOutputStream;->buffer:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    move v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 90
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
    .line 95
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/servlet/HttpOutputStream;
    move-object v1, p1

    .local v1, "data":[B
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/servlet/HttpOutputStream;->buffer:[B

    array-length v5, v5

    move-object v6, v0

    iget v6, v6, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    sub-int/2addr v5, v6

    move v4, v5

    .line 96
    .local v4, "avail":I
    :goto_0
    move v5, v3

    move v6, v4

    if-le v5, v6, :cond_0

    .line 98
    move-object v5, v1

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/servlet/HttpOutputStream;->buffer:[B

    move-object v8, v0

    iget v8, v8, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    move v7, v4

    add-int/2addr v6, v7

    iput v6, v5, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    .line 100
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/kawa/servlet/HttpOutputStream;->flush()V

    .line 101
    move v5, v2

    move v6, v4

    add-int/2addr v5, v6

    move v2, v5

    .line 102
    move v5, v3

    move v6, v4

    sub-int/2addr v5, v6

    move v3, v5

    .line 103
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/servlet/HttpOutputStream;->buffer:[B

    array-length v5, v5

    move v4, v5

    goto :goto_0

    .line 105
    :cond_0
    move v5, v3

    if-lez v5, :cond_1

    .line 107
    move-object v5, v1

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/servlet/HttpOutputStream;->buffer:[B

    move-object v8, v0

    iget v8, v8, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    move v7, v3

    add-int/2addr v6, v7

    iput v6, v5, Lgnu/kawa/servlet/HttpOutputStream;->count:I

    .line 110
    :cond_1
    return-void
.end method
