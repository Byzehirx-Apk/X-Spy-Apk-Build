.class public Lgnu/text/LineInputStreamReader;
.super Lgnu/text/LineBufferedReader;
.source "LineInputStreamReader.java"


# instance fields
.field barr:[B

.field bbuf:Ljava/nio/ByteBuffer;

.field carr:[C

.field cbuf:Ljava/nio/CharBuffer;

.field cset:Ljava/nio/charset/Charset;

.field decoder:Ljava/nio/charset/CharsetDecoder;

.field istrm:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineInputStreamReader;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Ljava/io/Reader;

    invoke-direct {v2, v3}, Lgnu/text/LineBufferedReader;-><init>(Ljava/io/Reader;)V

    .line 23
    move-object v2, v0

    const/16 v3, 0x2000

    new-array v3, v3, [B

    iput-object v3, v2, Lgnu/text/LineInputStreamReader;->barr:[B

    .line 26
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    .line 64
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LineInputStreamReader;->barr:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    .line 65
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LineInputStreamReader;->barr:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    .line 66
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/LineInputStreamReader;->istrm:Ljava/io/InputStream;

    .line 70
    return-void
.end method

.method private fillBytes(I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineInputStreamReader;
    move v1, p1

    .local v1, "remaining":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LineInputStreamReader;->istrm:Ljava/io/InputStream;

    move-object v4, v0

    iget-object v4, v4, Lgnu/text/LineInputStreamReader;->barr:[B

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/text/LineInputStreamReader;->barr:[B

    array-length v6, v6

    move v7, v1

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v2, v3

    .line 83
    .local v2, "n":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    .line 84
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    move v4, v1

    move v5, v2

    if-gez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v3

    .line 85
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lgnu/text/LineInputStreamReader;
    return v0

    .line 84
    .restart local v0    # "this":Lgnu/text/LineInputStreamReader;
    :cond_0
    move v5, v2

    goto :goto_0
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
    .line 74
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineInputStreamReader;
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/LineInputStreamReader;->in:Ljava/io/Reader;

    if-eqz v1, :cond_0

    .line 75
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/LineInputStreamReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 76
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/text/LineInputStreamReader;->istrm:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 77
    return-void
.end method

.method public fill(I)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineInputStreamReader;
    move v1, p1

    .local v1, "len":I
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/LineInputStreamReader;->cset:Ljava/nio/charset/Charset;

    if-nez v7, :cond_0

    .line 126
    move-object v7, v0

    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v7, v8}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    .line 127
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/LineInputStreamReader;->buffer:[C

    move-object v8, v0

    iget-object v8, v8, Lgnu/text/LineInputStreamReader;->carr:[C

    if-eq v7, v8, :cond_1

    .line 129
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lgnu/text/LineInputStreamReader;->buffer:[C

    invoke-static {v8}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v8

    iput-object v8, v7, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    .line 130
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lgnu/text/LineInputStreamReader;->buffer:[C

    iput-object v8, v7, Lgnu/text/LineInputStreamReader;->carr:[C

    .line 132
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    move-object v8, v0

    iget v8, v8, Lgnu/text/LineInputStreamReader;->pos:I

    move v9, v1

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v7

    .line 133
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    move-object v8, v0

    iget v8, v8, Lgnu/text/LineInputStreamReader;->pos:I

    invoke-virtual {v7, v8}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    .line 134
    const/4 v7, 0x0

    move v2, v7

    .line 138
    .local v2, "eof":Z
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/LineInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    move-object v8, v0

    iget-object v8, v8, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    move-object v9, v0

    iget-object v9, v9, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    move v10, v2

    invoke-virtual {v7, v8, v9, v10}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v7

    move-object v4, v7

    .line 139
    .local v4, "cres":Ljava/nio/charset/CoderResult;
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->position()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Lgnu/text/LineInputStreamReader;->pos:I

    sub-int/2addr v7, v8

    move v3, v7

    .line 140
    .local v3, "count":I
    move v7, v3

    if-gtz v7, :cond_2

    move-object v7, v4

    invoke-virtual {v7}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_3

    .line 141
    .line 154
    :cond_2
    :goto_1
    move v7, v3

    if-nez v7, :cond_6

    move v7, v2

    if-eqz v7, :cond_6

    const/4 v7, -0x1

    :goto_2
    move v0, v7

    .end local v0    # "this":Lgnu/text/LineInputStreamReader;
    return v0

    .line 142
    .restart local v0    # "this":Lgnu/text/LineInputStreamReader;
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    move v5, v7

    .line 143
    .local v5, "rem":I
    move v7, v5

    if-lez v7, :cond_4

    .line 145
    move-object v7, v0

    iget-object v7, v7, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 147
    :cond_4
    move-object v7, v0

    move v8, v5

    invoke-direct {v7, v8}, Lgnu/text/LineInputStreamReader;->fillBytes(I)I

    move-result v7

    move v6, v7

    .line 148
    .local v6, "n":I
    move v7, v6

    if-gez v7, :cond_5

    .line 150
    const/4 v7, 0x1

    move v2, v7

    .line 151
    goto :goto_1

    .line 153
    :cond_5
    goto :goto_0

    .line 154
    .end local v5    # "rem":I
    .end local v6    # "n":I
    :cond_6
    move v7, v3

    goto :goto_2
.end method

.method public getByte()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineInputStreamReader;
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lgnu/text/LineInputStreamReader;->fillBytes(I)I

    move-result v2

    move v1, v2

    .line 113
    .local v1, "n":I
    move v2, v1

    if-gtz v2, :cond_0

    .line 114
    const/4 v2, -0x1

    move v0, v2

    .line 116
    .end local v0    # "this":Lgnu/text/LineInputStreamReader;
    .end local v1    # "n":I
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/text/LineInputStreamReader;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move v0, v2

    goto :goto_0
.end method

.method public markStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    return-void
.end method

.method public ready()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineInputStreamReader;
    move-object v1, v0

    iget v1, v1, Lgnu/text/LineInputStreamReader;->pos:I

    move-object v2, v0

    iget v2, v2, Lgnu/text/LineInputStreamReader;->limit:I

    if-lt v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/text/LineInputStreamReader;->istrm:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/text/LineInputStreamReader;
    return v0

    .restart local v0    # "this":Lgnu/text/LineInputStreamReader;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetStart(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineInputStreamReader;
    move v1, p1

    .local v1, "pos":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    .line 105
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineInputStreamReader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    move-object v2, v3

    .line 42
    .local v2, "cset":Ljava/nio/charset/Charset;
    move-object v3, v0

    iget-object v3, v3, Lgnu/text/LineInputStreamReader;->cset:Ljava/nio/charset/Charset;

    if-nez v3, :cond_1

    .line 43
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/nio/charset/Charset;)V

    .line 58
    :cond_0
    return-void

    .line 44
    :cond_1
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/text/LineInputStreamReader;->cset:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "encoding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " does not match previous "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lgnu/text/LineInputStreamReader;->cset:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/text/LineInputStreamReader;
    move-object v1, p1

    .local v1, "cset":Ljava/nio/charset/Charset;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/text/LineInputStreamReader;->cset:Ljava/nio/charset/Charset;

    .line 34
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    iput-object v3, v2, Lgnu/text/LineInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 35
    return-void
.end method
