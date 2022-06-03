.class public Lgnu/mapping/CharArrayOutPort;
.super Lgnu/mapping/OutPort;
.source "CharArrayOutPort.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CharArrayOutPort;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lgnu/mapping/CharArrayInPort;->stringPath:Lgnu/text/Path;

    invoke-direct {v1, v2, v3, v4}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZLgnu/text/Path;)V

    .line 14
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method protected closeOnExit()Z
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CharArrayOutPort;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/CharArrayOutPort;
    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CharArrayOutPort;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget v1, v1, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/CharArrayOutPort;
    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CharArrayOutPort;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    const/4 v2, 0x0

    iput v2, v1, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 29
    return-void
.end method

.method public setLength(I)V
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CharArrayOutPort;
    move v1, p1

    .local v1, "length":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    move v3, v1

    iput v3, v2, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 24
    return-void
.end method

.method public toCharArray()[C
    .locals 8

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CharArrayOutPort;
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget v3, v3, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    move v1, v3

    .line 35
    .local v1, "length":I
    move v3, v1

    new-array v3, v3, [C

    move-object v2, v3

    .line 36
    .local v2, "result":[C
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v3, v3, Lgnu/text/PrettyWriter;->buffer:[C

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/CharArrayOutPort;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CharArrayOutPort;
    new-instance v1, Ljava/lang/String;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v3, v3, Lgnu/text/PrettyWriter;->buffer:[C

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget v5, v5, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/CharArrayOutPort;
    return-object v0
.end method

.method public toSubString(I)Ljava/lang/String;
    .locals 9

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CharArrayOutPort;
    move v1, p1

    .local v1, "beginIndex":I
    new-instance v2, Ljava/lang/String;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v4, v4, Lgnu/text/PrettyWriter;->buffer:[C

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget v6, v6, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    move v7, v1

    sub-int/2addr v6, v7

    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/CharArrayOutPort;
    return-object v0
.end method

.method public toSubString(II)Ljava/lang/String;
    .locals 10

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CharArrayOutPort;
    move v1, p1

    .local v1, "beginIndex":I
    move v2, p2

    .local v2, "endIndex":I
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget v4, v4, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    if-le v3, v4, :cond_0

    .line 68
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 69
    :cond_0
    new-instance v3, Ljava/lang/String;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v5, v5, Lgnu/text/PrettyWriter;->buffer:[C

    move v6, v1

    move v7, v2

    move v8, v1

    sub-int/2addr v7, v8

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/CharArrayOutPort;
    return-object v0
.end method

.method public writeTo(IILgnu/lists/Consumer;)V
    .locals 8

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CharArrayOutPort;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    move-object v3, p3

    .local v3, "out":Lgnu/lists/Consumer;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v5, v5, Lgnu/text/PrettyWriter;->buffer:[C

    move v6, v1

    move v7, v2

    invoke-interface {v4, v5, v6, v7}, Lgnu/lists/Consumer;->write([CII)V

    .line 90
    return-void
.end method

.method public writeTo(Lgnu/lists/Consumer;)V
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CharArrayOutPort;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v3, v3, Lgnu/text/PrettyWriter;->buffer:[C

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget v5, v5, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    invoke-interface {v2, v3, v4, v5}, Lgnu/lists/Consumer;->write([CII)V

    .line 85
    return-void
.end method
