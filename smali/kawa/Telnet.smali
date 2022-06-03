.class public Lkawa/Telnet;
.super Ljava/lang/Object;
.source "Telnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DO:I = 0xfd

.field public static final DONT:I = 0xfe

.field public static final ECHO:I = 0x1

.field static final EOF:I = 0xec

.field static final IAC:I = 0xff

.field static final IP:I = 0xf4

.field static final LINEMODE:I = 0x22

.field static final NAWS:I = 0x1f

.field static final NOP:I = 0xf1

.field static final OPTION_NO:I = 0x0

.field static final OPTION_WANTNO:I = 0x1

.field static final OPTION_WANTNO_OPPOSITE:I = 0x2

.field static final OPTION_WANTYES:I = 0x3

.field static final OPTION_WANTYES_OPPOSITE:I = 0x4

.field static final OPTION_YES:I = 0x5

.field static final SB:I = 0xfa

.field static final SE:I = 0xf0

.field public static final SUPPRESS_GO_AHEAD:I = 0x3

.field static final TM:I = 0x6

.field static final TTYPE:I = 0x18

.field public static final WILL:I = 0xfb

.field public static final WONT:I = 0xfc


# instance fields
.field in:Lkawa/TelnetInputStream;

.field isServer:Z

.field final optionsState:[B

.field out:Lkawa/TelnetOutputStream;

.field final preferredLineMode:B

.field sin:Ljava/io/InputStream;

.field sout:Ljava/io/OutputStream;

.field public terminalType:[B

.field public windowHeight:S

.field public windowWidth:S


# direct methods
.method public constructor <init>(Ljava/net/Socket;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Lkawa/Telnet;
    move-object v1, p1

    .local v1, "socket":Ljava/net/Socket;
    move v2, p2

    .local v2, "isServer":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 74
    move-object v3, v0

    const/4 v4, 0x3

    iput-byte v4, v3, Lkawa/Telnet;->preferredLineMode:B

    .line 99
    move-object v3, v0

    const/16 v4, 0x100

    new-array v4, v4, [B

    iput-object v4, v3, Lkawa/Telnet;->optionsState:[B

    .line 412
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, v3, Lkawa/Telnet;->sin:Ljava/io/InputStream;

    .line 413
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, v3, Lkawa/Telnet;->sout:Ljava/io/OutputStream;

    .line 414
    move-object v3, v0

    new-instance v4, Lkawa/TelnetOutputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lkawa/Telnet;->sout:Ljava/io/OutputStream;

    invoke-direct {v5, v6}, Lkawa/TelnetOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, v3, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    .line 415
    move-object v3, v0

    new-instance v4, Lkawa/TelnetInputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lkawa/Telnet;->sin:Ljava/io/InputStream;

    move-object v7, v0

    invoke-direct {v5, v6, v7}, Lkawa/TelnetInputStream;-><init>(Ljava/io/InputStream;Lkawa/Telnet;)V

    iput-object v4, v3, Lkawa/Telnet;->in:Lkawa/TelnetInputStream;

    .line 416
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lkawa/Telnet;->isServer:Z

    .line 417
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 367
    move-object/from16 v0, p0

    .local v0, "args":[Ljava/lang/String;
    move-object v10, v0

    array-length v10, v10

    if-nez v10, :cond_0

    .line 368
    invoke-static {}, Lkawa/Telnet;->usage()V

    .line 369
    :cond_0
    move-object v10, v0

    const/4 v11, 0x0

    aget-object v10, v10, v11

    move-object v1, v10

    .line 370
    .local v1, "host":Ljava/lang/String;
    const/16 v10, 0x17

    move v2, v10

    .line 371
    .local v2, "port":I
    move-object v10, v0

    array-length v10, v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_1

    .line 373
    move-object v10, v0

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v2, v10

    .line 377
    :cond_1
    :try_start_0
    new-instance v10, Ljava/net/Socket;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v1

    move v13, v2

    invoke-direct {v11, v12, v13}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    move-object v3, v10

    .line 378
    .local v3, "socket":Ljava/net/Socket;
    new-instance v10, Lkawa/Telnet;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v3

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    move-object v4, v10

    .line 379
    .local v4, "telnet":Lkawa/Telnet;
    move-object v10, v4

    invoke-virtual {v10}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object v10

    move-object v5, v10

    .line 380
    .local v5, "tout":Lkawa/TelnetOutputStream;
    new-instance v10, Ljava/lang/Thread;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v4

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v6, v10

    .line 382
    .local v6, "t":Ljava/lang/Thread;
    move-object v10, v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getPriority()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/Thread;->setPriority(I)V

    .line 383
    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 385
    const/16 v10, 0x400

    new-array v10, v10, [B

    move-object v7, v10

    .line 388
    .local v7, "buffer":[B
    :goto_0
    sget-object v10, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v10

    move v8, v10

    .line 389
    .local v8, "ch":I
    move v10, v8

    if-gez v10, :cond_2

    .line 390
    .line 401
    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Thread;->stop()V

    .line 406
    .line 407
    .end local v3    # "socket":Ljava/net/Socket;
    .end local v4    # "telnet":Lkawa/Telnet;
    .end local v5    # "tout":Lkawa/TelnetOutputStream;
    .end local v6    # "t":Ljava/lang/Thread;
    .end local v7    # "buffer":[B
    .end local v8    # "ch":I
    :goto_1
    return-void

    .line 391
    .restart local v3    # "socket":Ljava/net/Socket;
    .restart local v4    # "telnet":Lkawa/Telnet;
    .restart local v5    # "tout":Lkawa/TelnetOutputStream;
    .restart local v6    # "t":Ljava/lang/Thread;
    .restart local v7    # "buffer":[B
    .restart local v8    # "ch":I
    :cond_2
    move-object v10, v7

    const/4 v11, 0x0

    move v12, v8

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 392
    sget-object v10, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v10

    move v9, v10

    .line 393
    .local v9, "avail":I
    move v10, v9

    if-lez v10, :cond_4

    .line 395
    move v10, v9

    move-object v11, v7

    array-length v11, v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    if-le v10, v11, :cond_3

    .line 396
    move-object v10, v7

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v9, v10

    .line 397
    :cond_3
    sget-object v10, Ljava/lang/System;->in:Ljava/io/InputStream;

    move-object v11, v7

    const/4 v12, 0x1

    move v13, v9

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    move v9, v10

    .line 399
    :cond_4
    move-object v10, v5

    move-object v11, v7

    const/4 v12, 0x0

    move v13, v9

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lkawa/TelnetOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    goto :goto_0

    .line 403
    .end local v3    # "socket":Ljava/net/Socket;
    .end local v4    # "telnet":Lkawa/Telnet;
    .end local v5    # "tout":Lkawa/TelnetOutputStream;
    .end local v6    # "t":Ljava/lang/Thread;
    .end local v7    # "buffer":[B
    .end local v8    # "ch":I
    .end local v9    # "avail":I
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 405
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static usage()V
    .locals 2

    .prologue
    .line 361
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Usage:  [java] kawa.Telnet HOST [PORT#]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 363
    return-void
.end method


# virtual methods
.method change(II)Z
    .locals 8

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lkawa/Telnet;
    move v1, p1

    .local v1, "command":I
    move v2, p2

    .local v2, "option":I
    move v5, v2

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    .line 136
    const/4 v5, 0x1

    move v0, v5

    .line 175
    .end local v0    # "this":Lkawa/Telnet;
    :goto_0
    return v0

    .line 137
    .restart local v0    # "this":Lkawa/Telnet;
    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Lkawa/Telnet;->isServer:Z

    if-eqz v5, :cond_1

    move v5, v2

    const/16 v6, 0x1f

    if-ne v5, v6, :cond_1

    .line 138
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 139
    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Lkawa/Telnet;->isServer:Z

    if-eqz v5, :cond_2

    move v5, v1

    const/16 v6, 0xfb

    if-ne v5, v6, :cond_2

    move v5, v2

    const/16 v6, 0x22

    if-ne v5, v6, :cond_2

    .line 141
    const/4 v5, 0x2

    new-array v5, v5, [B

    move-object v3, v5

    .line 142
    .local v3, "buf":[B
    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    .line 143
    move-object v5, v3

    const/4 v6, 0x1

    const/4 v7, 0x3

    aput-byte v7, v5, v6

    .line 146
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    const/16 v6, 0x22

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lkawa/TelnetOutputStream;->writeSubCommand(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    :goto_1
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 148
    :catch_0
    move-exception v5

    move-object v4, v5

    goto :goto_1

    .line 154
    .end local v3    # "buf":[B
    :cond_2
    move-object v5, v0

    iget-boolean v5, v5, Lkawa/Telnet;->isServer:Z

    if-eqz v5, :cond_3

    move v5, v1

    const/16 v6, 0xfb

    if-ne v5, v6, :cond_3

    move v5, v2

    const/16 v6, 0x18

    if-ne v5, v6, :cond_3

    .line 156
    const/4 v5, 0x1

    new-array v5, v5, [B

    move-object v3, v5

    .line 157
    .restart local v3    # "buf":[B
    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    .line 160
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    move v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lkawa/TelnetOutputStream;->writeSubCommand(I[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    .line 166
    :goto_2
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 162
    :catch_1
    move-exception v5

    move-object v4, v5

    goto :goto_2

    .line 168
    .end local v3    # "buf":[B
    :cond_3
    move-object v5, v0

    iget-boolean v5, v5, Lkawa/Telnet;->isServer:Z

    if-nez v5, :cond_5

    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 170
    move v5, v1

    const/16 v6, 0xfd

    if-ne v5, v6, :cond_4

    .line 171
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 172
    :cond_4
    move v5, v1

    const/16 v6, 0xfb

    if-ne v5, v6, :cond_5

    .line 173
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 175
    :cond_5
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public getInputStream()Lkawa/TelnetInputStream;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lkawa/Telnet;
    move-object v1, v0

    iget-object v1, v1, Lkawa/Telnet;->in:Lkawa/TelnetInputStream;

    move-object v0, v1

    .end local v0    # "this":Lkawa/Telnet;
    return-object v0
.end method

.method public getOutputStream()Lkawa/TelnetOutputStream;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lkawa/Telnet;
    move-object v1, v0

    iget-object v1, v1, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    move-object v0, v1

    .end local v0    # "this":Lkawa/Telnet;
    return-object v0
.end method

.method handle(II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lkawa/Telnet;
    move v1, p1

    .local v1, "command":I
    move v2, p2

    .local v2, "option":I
    move v6, v1

    const/16 v7, 0xfd

    if-ge v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 228
    .local v3, "otherSide":Z
    move v6, v1

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v4, v6

    .line 229
    .local v4, "wantOn":Z
    move-object v6, v0

    iget-object v6, v6, Lkawa/Telnet;->optionsState:[B

    move v7, v2

    aget-byte v6, v6, v7

    move v5, v6

    .line 231
    .local v5, "state":B
    move v6, v3

    if-eqz v6, :cond_0

    .line 232
    move v6, v5

    const/4 v7, 0x3

    shr-int/lit8 v6, v6, 0x3

    int-to-byte v6, v6

    move v5, v6

    .line 233
    :cond_0
    move v6, v5

    const/4 v7, 0x3

    shr-int/lit8 v6, v6, 0x3

    const/4 v7, 0x7

    and-int/lit8 v6, v6, 0x7

    packed-switch v6, :pswitch_data_0

    .line 290
    :goto_2
    move v6, v3

    if-eqz v6, :cond_d

    .line 291
    move-object v6, v0

    iget-object v6, v6, Lkawa/Telnet;->optionsState:[B

    move v7, v2

    aget-byte v6, v6, v7

    const/16 v7, 0xc7

    and-int/lit16 v6, v6, 0xc7

    move v7, v5

    const/4 v8, 0x3

    shl-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    move v5, v6

    .line 294
    :goto_3
    move-object v6, v0

    iget-object v6, v6, Lkawa/Telnet;->optionsState:[B

    move v7, v2

    move v8, v5

    aput-byte v8, v6, v7

    .line 295
    :goto_4
    return-void

    .line 225
    .end local v3    # "otherSide":Z
    .end local v4    # "wantOn":Z
    .end local v5    # "state":B
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 228
    .restart local v3    # "otherSide":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 236
    .restart local v4    # "wantOn":Z
    .restart local v5    # "state":B
    :pswitch_0
    move v6, v4

    if-eqz v6, :cond_3

    .line 237
    goto :goto_4

    .line 239
    :cond_3
    const/4 v6, 0x0

    move v5, v6

    .line 240
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lkawa/Telnet;->change(II)Z

    move-result v6

    .line 241
    move-object v6, v0

    iget-object v6, v6, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    move v7, v3

    if-eqz v7, :cond_4

    const/16 v7, 0xfe

    :goto_5
    move v8, v2

    invoke-virtual {v6, v7, v8}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 242
    goto :goto_2

    .line 241
    :cond_4
    const/16 v7, 0xfc

    goto :goto_5

    .line 244
    :pswitch_1
    move v6, v4

    if-nez v6, :cond_5

    .line 245
    goto :goto_4

    .line 246
    :cond_5
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lkawa/Telnet;->change(II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 248
    const/4 v6, 0x5

    move v5, v6

    .line 249
    move-object v6, v0

    iget-object v6, v6, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    move v7, v3

    if-eqz v7, :cond_6

    const/16 v7, 0xfd

    :goto_6
    move v8, v2

    invoke-virtual {v6, v7, v8}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_2

    :cond_6
    const/16 v7, 0xfb

    goto :goto_6

    .line 253
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    move v7, v3

    if-eqz v7, :cond_8

    const/16 v7, 0xfe

    :goto_7
    move v8, v2

    invoke-virtual {v6, v7, v8}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 256
    goto :goto_2

    .line 253
    :cond_8
    const/16 v7, 0xfc

    goto :goto_7

    .line 258
    :pswitch_2
    const/4 v6, 0x0

    move v5, v6

    .line 259
    goto :goto_2

    .line 265
    :pswitch_3
    const/4 v6, 0x3

    move v5, v6

    .line 266
    move-object v6, v0

    iget-object v6, v6, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    move v7, v3

    if-eqz v7, :cond_9

    const/16 v7, 0xfd

    :goto_8
    move v8, v2

    invoke-virtual {v6, v7, v8}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 268
    goto :goto_2

    .line 266
    :cond_9
    const/16 v7, 0xfb

    goto :goto_8

    .line 270
    :pswitch_4
    move v6, v4

    if-eqz v6, :cond_a

    .line 272
    const/4 v6, 0x5

    move v5, v6

    .line 273
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lkawa/Telnet;->change(II)Z

    move-result v6

    goto/16 :goto_2

    .line 276
    :cond_a
    const/4 v6, 0x0

    move v5, v6

    .line 277
    goto/16 :goto_2

    .line 279
    :pswitch_5
    move v6, v4

    if-eqz v6, :cond_c

    .line 281
    const/4 v6, 0x1

    move v5, v6

    .line 282
    move-object v6, v0

    iget-object v6, v6, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    move v7, v3

    if-eqz v7, :cond_b

    const/16 v7, 0xfe

    :goto_9
    move v8, v2

    invoke-virtual {v6, v7, v8}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto/16 :goto_2

    :cond_b
    const/16 v7, 0xfc

    goto :goto_9

    .line 286
    :cond_c
    const/4 v6, 0x0

    move v5, v6

    goto/16 :goto_2

    .line 293
    :cond_d
    move-object v6, v0

    iget-object v6, v6, Lkawa/Telnet;->optionsState:[B

    move v7, v2

    aget-byte v6, v6, v7

    const/16 v7, 0xf8

    and-int/lit16 v6, v6, 0xf8

    move v7, v5

    or-int/2addr v6, v7

    int-to-byte v6, v6

    move v5, v6

    goto/16 :goto_3

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public request(II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lkawa/Telnet;
    move v1, p1

    .local v1, "command":I
    move v2, p2

    .local v2, "option":I
    move v6, v1

    const/16 v7, 0xfd

    if-lt v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 307
    .local v3, "otherSide":Z
    move v6, v1

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    move v4, v6

    .line 309
    .local v4, "wantOn":Z
    move-object v6, v0

    iget-object v6, v6, Lkawa/Telnet;->optionsState:[B

    move v7, v2

    aget-byte v6, v6, v7

    move v5, v6

    .line 310
    .local v5, "state":B
    move v6, v3

    if-eqz v6, :cond_0

    .line 311
    move v6, v5

    const/4 v7, 0x3

    shr-int/lit8 v6, v6, 0x3

    int-to-byte v6, v6

    move v5, v6

    .line 313
    :cond_0
    move v6, v5

    const/4 v7, 0x7

    and-int/lit8 v6, v6, 0x7

    packed-switch v6, :pswitch_data_0

    .line 352
    :cond_1
    :goto_2
    move v6, v3

    if-eqz v6, :cond_5

    .line 353
    move-object v6, v0

    iget-object v6, v6, Lkawa/Telnet;->optionsState:[B

    move v7, v2

    aget-byte v6, v6, v7

    const/16 v7, 0xc7

    and-int/lit16 v6, v6, 0xc7

    move v7, v5

    const/4 v8, 0x3

    shl-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    move v5, v6

    .line 356
    :goto_3
    move-object v6, v0

    iget-object v6, v6, Lkawa/Telnet;->optionsState:[B

    move v7, v2

    move v8, v5

    aput-byte v8, v6, v7

    .line 357
    return-void

    .line 304
    .end local v3    # "otherSide":Z
    .end local v4    # "wantOn":Z
    .end local v5    # "state":B
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 307
    .restart local v3    # "otherSide":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 316
    .restart local v4    # "wantOn":Z
    .restart local v5    # "state":B
    :pswitch_0
    move v6, v4

    if-eqz v6, :cond_1

    .line 318
    const/4 v6, 0x3

    move v5, v6

    .line 319
    move-object v6, v0

    iget-object v6, v6, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_2

    .line 324
    :pswitch_1
    move v6, v4

    if-nez v6, :cond_1

    .line 326
    const/4 v6, 0x1

    move v5, v6

    .line 327
    move-object v6, v0

    iget-object v6, v6, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_2

    .line 332
    :pswitch_2
    move v6, v4

    if-eqz v6, :cond_1

    .line 333
    const/4 v6, 0x2

    move v5, v6

    goto :goto_2

    .line 337
    :pswitch_3
    move v6, v4

    if-nez v6, :cond_1

    .line 338
    const/4 v6, 0x1

    move v5, v6

    goto :goto_2

    .line 342
    :pswitch_4
    move v6, v4

    if-nez v6, :cond_4

    .line 343
    const/4 v6, 0x4

    move v5, v6

    .line 346
    :cond_4
    :pswitch_5
    move v6, v4

    if-eqz v6, :cond_1

    .line 347
    const/4 v6, 0x3

    move v5, v6

    goto :goto_2

    .line 355
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lkawa/Telnet;->optionsState:[B

    move v7, v2

    aget-byte v6, v6, v7

    const/16 v7, 0xf8

    and-int/lit16 v6, v6, 0xf8

    move v7, v5

    or-int/2addr v6, v7

    int-to-byte v6, v6

    move v5, v6

    goto :goto_3

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 10

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lkawa/Telnet;
    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v5

    move-object v1, v5

    .line 424
    .local v1, "tin":Lkawa/TelnetInputStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    move-object v2, v5

    .line 427
    .local v2, "buffer":[B
    :goto_0
    move-object v5, v1

    invoke-virtual {v5}, Lkawa/TelnetInputStream;->read()I

    move-result v5

    move v3, v5

    .line 428
    .local v3, "ch":I
    move v5, v3

    if-gez v5, :cond_0

    .line 429
    .line 445
    .line 446
    .end local v1    # "tin":Lkawa/TelnetInputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "ch":I
    :goto_1
    return-void

    .line 430
    .restart local v1    # "tin":Lkawa/TelnetInputStream;
    .restart local v2    # "buffer":[B
    .restart local v3    # "ch":I
    :cond_0
    move-object v5, v2

    const/4 v6, 0x0

    move v7, v3

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 431
    move-object v5, v1

    invoke-virtual {v5}, Lkawa/TelnetInputStream;->available()I

    move-result v5

    move v4, v5

    .line 432
    .local v4, "avail":I
    move v5, v4

    if-lez v5, :cond_2

    .line 434
    move v5, v4

    move-object v6, v2

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-le v5, v6, :cond_1

    .line 435
    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .line 436
    :cond_1
    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x1

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lkawa/TelnetInputStream;->read([BII)I

    move-result v5

    move v4, v5

    .line 438
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v6, v2

    const/4 v7, 0x0

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/PrintStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    goto :goto_0

    .line 441
    .end local v1    # "tin":Lkawa/TelnetInputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "ch":I
    .end local v4    # "avail":I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 443
    .local v1, "ex":Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 444
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method

.method public subCommand([BII)V
    .locals 14

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lkawa/Telnet;
    move-object v1, p1

    .local v1, "buf":[B
    move/from16 v2, p2

    .local v2, "off":I
    move/from16 v3, p3

    .local v3, "len":I
    move-object v7, v1

    move v8, v2

    aget-byte v7, v7, v8

    move v4, v7

    .line 183
    .local v4, "command":I
    move v7, v4

    sparse-switch v7, :sswitch_data_0

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 186
    :sswitch_0
    move v7, v3

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    .line 188
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    const/16 v9, 0x8

    shl-int/lit8 v8, v8, 0x8

    move-object v9, v1

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    int-to-short v8, v8

    iput-short v8, v7, Lkawa/Telnet;->windowWidth:S

    .line 189
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x3

    aget-byte v8, v8, v9

    const/16 v9, 0x8

    shl-int/lit8 v8, v8, 0x8

    move-object v9, v1

    const/4 v10, 0x4

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    int-to-short v8, v8

    iput-short v8, v7, Lkawa/Telnet;->windowHeight:S

    .line 194
    goto :goto_0

    .line 198
    :sswitch_1
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    new-array v7, v7, [B

    move-object v5, v7

    .line 199
    .local v5, "type":[B
    move-object v7, v1

    const/4 v8, 0x1

    move-object v9, v5

    const/4 v10, 0x0

    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lkawa/Telnet;->terminalType:[B

    .line 201
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "terminal type: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v5

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    goto :goto_0

    .line 205
    .end local v5    # "type":[B
    :sswitch_2
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SBCommand LINEMODE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " len:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    move-object v7, v1

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 208
    const/4 v7, 0x2

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 210
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    move v10, v6

    aget-byte v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    move v10, v6

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    aget-byte v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    add-int/lit8 v6, v6, 0x3

    goto :goto_1

    .line 212
    :cond_1
    goto/16 :goto_0

    .line 183
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x1f -> :sswitch_0
        0x22 -> :sswitch_2
    .end sparse-switch
.end method
