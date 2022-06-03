.class public Lkawa/TelnetInputStream;
.super Ljava/io/FilterInputStream;
.source "TelnetInputStream.java"


# static fields
.field static final SB_IAC:I = 0x190


# instance fields
.field protected buf:[B

.field connection:Lkawa/Telnet;

.field count:I

.field pos:I

.field state:I

.field subCommandLength:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lkawa/Telnet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lkawa/TelnetInputStream;
    move-object v1, p1

    .local v1, "in":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "conn":Lkawa/Telnet;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lkawa/TelnetInputStream;->state:I

    .line 30
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lkawa/TelnetInputStream;->subCommandLength:I

    .line 18
    move-object v3, v0

    const/16 v4, 0x200

    new-array v4, v4, [B

    iput-object v4, v3, Lkawa/TelnetInputStream;->buf:[B

    .line 19
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkawa/TelnetInputStream;->connection:Lkawa/Telnet;

    .line 20
    return-void
.end method


# virtual methods
.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lkawa/TelnetInputStream;
    :goto_0
    move-object v2, v0

    iget v2, v2, Lkawa/TelnetInputStream;->pos:I

    move-object v3, v0

    iget v3, v3, Lkawa/TelnetInputStream;->count:I

    if-lt v2, v3, :cond_2

    .line 40
    move-object v2, v0

    iget-object v2, v2, Lkawa/TelnetInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    move v1, v2

    .line 41
    .local v1, "avail":I
    move v2, v1

    if-gtz v2, :cond_1

    .line 42
    const/4 v2, 0x1

    move v1, v2

    .line 47
    :cond_0
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Lkawa/TelnetInputStream;->in:Ljava/io/InputStream;

    move-object v3, v0

    iget-object v3, v3, Lkawa/TelnetInputStream;->buf:[B

    move-object v4, v0

    iget v4, v4, Lkawa/TelnetInputStream;->subCommandLength:I

    move v5, v1

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    move v1, v2

    .line 48
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lkawa/TelnetInputStream;->subCommandLength:I

    iput v3, v2, Lkawa/TelnetInputStream;->pos:I

    .line 49
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkawa/TelnetInputStream;->count:I

    .line 50
    move v2, v1

    if-gtz v2, :cond_2

    .line 51
    const/4 v2, -0x1

    move v0, v2

    .line 83
    .end local v0    # "this":Lkawa/TelnetInputStream;
    .local v1, "ch":I
    :goto_2
    return v0

    .line 43
    .restart local v0    # "this":Lkawa/TelnetInputStream;
    .local v1, "avail":I
    :cond_1
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/TelnetInputStream;->buf:[B

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Lkawa/TelnetInputStream;->subCommandLength:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    .line 45
    move-object v2, v0

    iget-object v2, v2, Lkawa/TelnetInputStream;->buf:[B

    array-length v2, v2

    move-object v3, v0

    iget v3, v3, Lkawa/TelnetInputStream;->subCommandLength:I

    sub-int/2addr v2, v3

    move v1, v2

    goto :goto_1

    .line 53
    .end local v1    # "avail":I
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lkawa/TelnetInputStream;->buf:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lkawa/TelnetInputStream;->pos:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lkawa/TelnetInputStream;->pos:I

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move v1, v2

    .line 54
    .local v1, "ch":I
    move-object v2, v0

    iget v2, v2, Lkawa/TelnetInputStream;->state:I

    if-nez v2, :cond_4

    .line 56
    move v2, v1

    const/16 v3, 0xff

    if-eq v2, v3, :cond_3

    .line 57
    move v2, v1

    move v0, v2

    goto :goto_2

    .line 58
    :cond_3
    move-object v2, v0

    const/16 v3, 0xff

    iput v3, v2, Lkawa/TelnetInputStream;->state:I

    .line 59
    goto :goto_0

    .line 61
    :cond_4
    move-object v2, v0

    iget v2, v2, Lkawa/TelnetInputStream;->state:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_a

    .line 63
    move v2, v1

    const/16 v3, 0xff

    if-ne v2, v3, :cond_5

    .line 65
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lkawa/TelnetInputStream;->state:I

    .line 66
    const/16 v2, 0xff

    move v0, v2

    goto :goto_2

    .line 68
    :cond_5
    move v2, v1

    const/16 v3, 0xfb

    if-eq v2, v3, :cond_6

    move v2, v1

    const/16 v3, 0xfc

    if-eq v2, v3, :cond_6

    move v2, v1

    const/16 v3, 0xfd

    if-eq v2, v3, :cond_6

    move v2, v1

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_6

    move v2, v1

    const/16 v3, 0xfa

    if-ne v2, v3, :cond_7

    .line 74
    :cond_6
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lkawa/TelnetInputStream;->state:I

    .line 124
    :goto_3
    goto/16 :goto_0

    .line 76
    :cond_7
    move v2, v1

    const/16 v3, 0xf4

    if-ne v2, v3, :cond_8

    .line 78
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "Interrupt Process"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lkawa/TelnetInputStream;->state:I

    goto :goto_3

    .line 81
    :cond_8
    move v2, v1

    const/16 v3, 0xec

    if-ne v2, v3, :cond_9

    .line 83
    const/4 v2, -0x1

    move v0, v2

    goto/16 :goto_2

    .line 87
    :cond_9
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lkawa/TelnetInputStream;->state:I

    goto :goto_3

    .line 90
    :cond_a
    move-object v2, v0

    iget v2, v2, Lkawa/TelnetInputStream;->state:I

    const/16 v3, 0xfb

    if-eq v2, v3, :cond_b

    move-object v2, v0

    iget v2, v2, Lkawa/TelnetInputStream;->state:I

    const/16 v3, 0xfc

    if-eq v2, v3, :cond_b

    move-object v2, v0

    iget v2, v2, Lkawa/TelnetInputStream;->state:I

    const/16 v3, 0xfd

    if-eq v2, v3, :cond_b

    move-object v2, v0

    iget v2, v2, Lkawa/TelnetInputStream;->state:I

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_c

    .line 93
    :cond_b
    move-object v2, v0

    iget-object v2, v2, Lkawa/TelnetInputStream;->connection:Lkawa/Telnet;

    move-object v3, v0

    iget v3, v3, Lkawa/TelnetInputStream;->state:I

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lkawa/Telnet;->handle(II)V

    .line 94
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lkawa/TelnetInputStream;->state:I

    goto :goto_3

    .line 96
    :cond_c
    move-object v2, v0

    iget v2, v2, Lkawa/TelnetInputStream;->state:I

    const/16 v3, 0xfa

    if-ne v2, v3, :cond_e

    .line 98
    move v2, v1

    const/16 v3, 0xff

    if-ne v2, v3, :cond_d

    .line 99
    move-object v2, v0

    const/16 v3, 0x190

    iput v3, v2, Lkawa/TelnetInputStream;->state:I

    goto :goto_3

    .line 101
    :cond_d
    move-object v2, v0

    iget-object v2, v2, Lkawa/TelnetInputStream;->buf:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lkawa/TelnetInputStream;->subCommandLength:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lkawa/TelnetInputStream;->subCommandLength:I

    move v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_3

    .line 103
    :cond_e
    move-object v2, v0

    iget v2, v2, Lkawa/TelnetInputStream;->state:I

    const/16 v3, 0x190

    if-ne v2, v3, :cond_11

    .line 105
    move v2, v1

    const/16 v3, 0xff

    if-ne v2, v3, :cond_f

    .line 107
    move-object v2, v0

    iget-object v2, v2, Lkawa/TelnetInputStream;->buf:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lkawa/TelnetInputStream;->subCommandLength:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lkawa/TelnetInputStream;->subCommandLength:I

    move v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 108
    move-object v2, v0

    const/16 v3, 0xfa

    iput v3, v2, Lkawa/TelnetInputStream;->state:I

    goto/16 :goto_3

    .line 110
    :cond_f
    move v2, v1

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_10

    .line 112
    move-object v2, v0

    iget-object v2, v2, Lkawa/TelnetInputStream;->connection:Lkawa/Telnet;

    move-object v3, v0

    iget-object v3, v3, Lkawa/TelnetInputStream;->buf:[B

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lkawa/TelnetInputStream;->subCommandLength:I

    invoke-virtual {v2, v3, v4, v5}, Lkawa/Telnet;->subCommand([BII)V

    .line 113
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lkawa/TelnetInputStream;->state:I

    .line 114
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lkawa/TelnetInputStream;->subCommandLength:I

    goto/16 :goto_3

    .line 118
    :cond_10
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lkawa/TelnetInputStream;->state:I

    .line 119
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lkawa/TelnetInputStream;->subCommandLength:I

    goto/16 :goto_3

    .line 123
    :cond_11
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lkawa/TelnetInputStream;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lkawa/TelnetInputStream;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move v6, v3

    if-gtz v6, :cond_0

    .line 130
    const/4 v6, 0x0

    move v0, v6

    .line 152
    .end local v0    # "this":Lkawa/TelnetInputStream;
    :goto_0
    return v0

    .line 131
    .restart local v0    # "this":Lkawa/TelnetInputStream;
    :cond_0
    const/4 v6, 0x0

    move v4, v6

    .line 132
    .local v4, "done":I
    move-object v6, v0

    iget v6, v6, Lkawa/TelnetInputStream;->state:I

    if-nez v6, :cond_1

    move-object v6, v0

    iget v6, v6, Lkawa/TelnetInputStream;->pos:I

    move-object v7, v0

    iget v7, v7, Lkawa/TelnetInputStream;->count:I

    if-lt v6, v7, :cond_3

    .line 134
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lkawa/TelnetInputStream;->read()I

    move-result v6

    move v5, v6

    .line 135
    .local v5, "ch":I
    move v6, v5

    if-gez v6, :cond_2

    .line 136
    move v6, v5

    move v0, v6

    goto :goto_0

    .line 137
    :cond_2
    move-object v6, v1

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    move v8, v5

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 138
    add-int/lit8 v4, v4, 0x1

    .line 140
    .end local v5    # "ch":I
    :cond_3
    move-object v6, v0

    iget v6, v6, Lkawa/TelnetInputStream;->state:I

    if-nez v6, :cond_4

    .line 142
    :goto_1
    move-object v6, v0

    iget v6, v6, Lkawa/TelnetInputStream;->pos:I

    move-object v7, v0

    iget v7, v7, Lkawa/TelnetInputStream;->count:I

    if-ge v6, v7, :cond_4

    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_4

    .line 144
    move-object v6, v0

    iget-object v6, v6, Lkawa/TelnetInputStream;->buf:[B

    move-object v7, v0

    iget v7, v7, Lkawa/TelnetInputStream;->pos:I

    aget-byte v6, v6, v7

    move v5, v6

    .line 145
    .local v5, "ch":B
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 146
    .line 152
    .end local v5    # "ch":B
    :cond_4
    move v6, v4

    move v0, v6

    goto :goto_0

    .line 147
    .restart local v5    # "ch":B
    :cond_5
    move-object v6, v1

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    move v8, v5

    aput-byte v8, v6, v7

    .line 148
    add-int/lit8 v4, v4, 0x1

    .line 149
    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Lkawa/TelnetInputStream;->pos:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lkawa/TelnetInputStream;->pos:I

    .line 150
    goto :goto_1
.end method
