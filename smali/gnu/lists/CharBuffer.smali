.class public Lgnu/lists/CharBuffer;
.super Lgnu/lists/StableVector;
.source "CharBuffer.java"

# interfaces
.implements Lgnu/lists/CharSeq;
.implements Ljava/io/Serializable;


# instance fields
.field private string:Lgnu/lists/FString;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/StableVector;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move v1, p1

    .local v1, "initialSize":I
    move-object v2, v0

    new-instance v3, Lgnu/lists/FString;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Lgnu/lists/FString;-><init>(I)V

    invoke-direct {v2, v3}, Lgnu/lists/CharBuffer;-><init>(Lgnu/lists/FString;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lgnu/lists/FString;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move-object v1, p1

    .local v1, "str":Lgnu/lists/FString;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/lists/StableVector;-><init>(Lgnu/lists/SimpleVector;)V

    .line 21
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    .line 22
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/CharBuffer;->gapStart:I

    if-lt v2, v3, :cond_0

    .line 39
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/CharBuffer;->gapEnd:I

    move-object v4, v0

    iget v4, v4, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    move v1, v2

    .line 40
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/FString;->charAt(I)C

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/CharBuffer;
    return v0
.end method

.method public consume(IILgnu/lists/Consumer;)V
    .locals 10

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    move-object v3, p3

    .local v3, "dest":Lgnu/lists/Consumer;
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v6, v6, Lgnu/lists/FString;->data:[C

    move-object v4, v6

    .line 208
    .local v4, "array":[C
    move v6, v1

    move-object v7, v0

    iget v7, v7, Lgnu/lists/CharBuffer;->gapStart:I

    if-ge v6, v7, :cond_1

    .line 210
    move-object v6, v0

    iget v6, v6, Lgnu/lists/CharBuffer;->gapStart:I

    move v7, v1

    sub-int/2addr v6, v7

    move v5, v6

    .line 211
    .local v5, "count0":I
    move v6, v5

    move v7, v2

    if-le v6, v7, :cond_0

    .line 212
    move v6, v2

    move v5, v6

    .line 213
    :cond_0
    move-object v6, v3

    move-object v7, v4

    move v8, v1

    move v9, v5

    invoke-interface {v6, v7, v8, v9}, Lgnu/lists/Consumer;->write([CII)V

    .line 214
    move v6, v2

    move v7, v5

    sub-int/2addr v6, v7

    move v2, v6

    .line 215
    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    move v1, v6

    .line 217
    .end local v5    # "count0":I
    :cond_1
    move v6, v2

    if-lez v6, :cond_2

    .line 219
    move v6, v1

    move-object v7, v0

    iget v7, v7, Lgnu/lists/CharBuffer;->gapEnd:I

    move-object v8, v0

    iget v8, v8, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    move v1, v6

    .line 220
    move-object v6, v3

    move-object v7, v4

    move v8, v1

    move v9, v2

    invoke-interface {v6, v7, v8, v9}, Lgnu/lists/Consumer;->write([CII)V

    .line 222
    :cond_2
    return-void
.end method

.method public delete(II)V
    .locals 7

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move v1, p1

    .local v1, "where":I
    move v2, p2

    .local v2, "count":I
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lgnu/lists/CharBuffer;->createPos(IZ)I

    move-result v4

    move v3, v4

    .line 193
    .local v3, "ipos":I
    move-object v4, v0

    move v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/lists/CharBuffer;->removePos(II)V

    .line 194
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lgnu/lists/CharBuffer;->releasePos(I)V

    .line 195
    return-void
.end method

.method public dump()V
    .locals 13

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Buffer Content dump.  size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/lists/CharBuffer;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  buffer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 278
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v6, "before gap: \""

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 279
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v8

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Lgnu/lists/CharBuffer;->gapStart:I

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 280
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\" (gapStart:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lgnu/lists/CharBuffer;->gapStart:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " gapEnd:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lgnu/lists/CharBuffer;->gapEnd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v6, "after gap: \""

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 282
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Lgnu/lists/CharBuffer;->gapEnd:I

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v10

    array-length v10, v10

    move-object v11, v0

    iget v11, v11, Lgnu/lists/CharBuffer;->gapEnd:I

    sub-int/2addr v10, v11

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 283
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/CharBuffer;->positions:[I

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    move v1, v5

    .line 285
    .local v1, "poslen":I
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Positions (size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " free:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lgnu/lists/CharBuffer;->free:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    const/4 v5, 0x0

    move-object v2, v5

    .line 287
    .local v2, "isFree":[Z
    move-object v5, v0

    iget v5, v5, Lgnu/lists/CharBuffer;->free:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_1

    .line 289
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/CharBuffer;->positions:[I

    array-length v5, v5

    new-array v5, v5, [Z

    move-object v2, v5

    .line 290
    move-object v5, v0

    iget v5, v5, Lgnu/lists/CharBuffer;->free:I

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    if-ltz v5, :cond_1

    .line 291
    move-object v5, v2

    move v6, v3

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 290
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/CharBuffer;->positions:[I

    move v6, v3

    aget v5, v5, v6

    move v3, v5

    goto :goto_1

    .line 284
    .end local v1    # "poslen":I
    .end local v2    # "isFree":[Z
    .end local v3    # "i":I
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/CharBuffer;->positions:[I

    array-length v5, v5

    goto :goto_0

    .line 293
    .restart local v1    # "poslen":I
    .restart local v2    # "isFree":[Z
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    .restart local v3    # "i":I
    :goto_2
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_4

    .line 295
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/CharBuffer;->positions:[I

    move v6, v3

    aget v5, v5, v6

    move v4, v5

    .line 296
    .local v4, "pos":I
    move-object v5, v0

    iget v5, v5, Lgnu/lists/CharBuffer;->free:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    move v5, v4

    const/4 v6, -0x2

    if-eq v5, v6, :cond_2

    .line 297
    :goto_3
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "position#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v4

    const/4 v8, 0x1

    shr-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isAfter:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v4

    const/4 v8, 0x1

    and-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 293
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 296
    :cond_3
    move-object v5, v2

    move v6, v3

    aget-boolean v5, v5, v6

    if-nez v5, :cond_2

    goto :goto_3

    .line 299
    .end local v4    # "pos":I
    :cond_4
    return-void
.end method

.method public final fill(C)V
    .locals 7

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move v1, p1

    .local v1, "value":C
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v4, v4, Lgnu/lists/FString;->data:[C

    move-object v2, v4

    .line 182
    .local v2, "array":[C
    move-object v4, v2

    array-length v4, v4

    move v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/lists/CharBuffer;->gapEnd:I

    if-lt v4, v5, :cond_0

    .line 183
    move-object v4, v2

    move v5, v3

    move v6, v1

    aput-char v6, v4, v5

    goto :goto_0

    .line 184
    :cond_0
    move-object v4, v0

    iget v4, v4, Lgnu/lists/CharBuffer;->gapStart:I

    move v3, v4

    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    if-ltz v4, :cond_1

    .line 185
    move-object v4, v2

    move v5, v3

    move v6, v1

    aput-char v6, v4, v5

    goto :goto_1

    .line 186
    :cond_1
    return-void
.end method

.method public fill(IIC)V
    .locals 11

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move v3, p3

    .local v3, "value":C
    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v8, v8, Lgnu/lists/FString;->data:[C

    move-object v4, v8

    .line 167
    .local v4, "array":[C
    move v8, v1

    move v5, v8

    .line 168
    .local v5, "i":I
    move-object v8, v0

    iget v8, v8, Lgnu/lists/CharBuffer;->gapStart:I

    move v9, v2

    if-ge v8, v9, :cond_0

    move-object v8, v0

    iget v8, v8, Lgnu/lists/CharBuffer;->gapStart:I

    :goto_0
    move v6, v8

    .line 169
    .local v6, "limit":I
    :goto_1
    move v8, v5

    move v9, v6

    if-ge v8, v9, :cond_1

    .line 170
    move-object v8, v4

    move v9, v5

    move v10, v3

    aput-char v10, v8, v9

    .line 169
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 168
    .end local v6    # "limit":I
    :cond_0
    move v8, v2

    goto :goto_0

    .line 171
    .restart local v6    # "limit":I
    :cond_1
    move-object v8, v0

    iget v8, v8, Lgnu/lists/CharBuffer;->gapEnd:I

    move-object v9, v0

    iget v9, v9, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v8, v9

    move v7, v8

    .line 172
    .local v7, "gapSize":I
    move v8, v6

    move v9, v7

    add-int/2addr v8, v9

    move v5, v8

    .line 173
    move v8, v6

    move v9, v2

    add-int/2addr v8, v9

    move v6, v8

    .line 174
    :goto_2
    move v8, v5

    move v9, v6

    if-ge v8, v9, :cond_2

    .line 175
    move-object v8, v4

    move v9, v5

    move v10, v3

    aput-char v10, v8, v9

    .line 174
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 176
    :cond_2
    return-void
.end method

.method public getArray()[C
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/CharBuffer;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v1}, Lgnu/lists/SimpleVector;->getBuffer()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    check-cast v1, [C

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/CharBuffer;
    return-object v0
.end method

.method public getChars(II[CI)V
    .locals 13

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move v1, p1

    .local v1, "srcBegin":I
    move v2, p2

    .local v2, "srcEnd":I
    move-object/from16 v3, p3

    .local v3, "dst":[C
    move/from16 v4, p4

    .local v4, "dstBegin":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v8, v8, Lgnu/lists/FString;->data:[C

    move-object v5, v8

    .line 115
    .local v5, "array":[C
    move v8, v1

    move-object v9, v0

    iget v9, v9, Lgnu/lists/CharBuffer;->gapStart:I

    if-ge v8, v9, :cond_0

    .line 117
    move v8, v2

    move-object v9, v0

    iget v9, v9, Lgnu/lists/CharBuffer;->gapStart:I

    if-ge v8, v9, :cond_2

    move v8, v2

    :goto_0
    move v9, v1

    sub-int/2addr v8, v9

    move v6, v8

    .line 118
    .local v6, "count":I
    move v8, v6

    if-lez v8, :cond_0

    .line 120
    move-object v8, v5

    move v9, v1

    move-object v10, v3

    move v11, v4

    move v12, v6

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    move v8, v1

    move v9, v6

    add-int/2addr v8, v9

    move v1, v8

    .line 122
    move v8, v4

    move v9, v6

    add-int/2addr v8, v9

    move v4, v8

    .line 125
    .end local v6    # "count":I
    :cond_0
    move-object v8, v0

    iget v8, v8, Lgnu/lists/CharBuffer;->gapEnd:I

    move-object v9, v0

    iget v9, v9, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v8, v9

    move v7, v8

    .line 126
    .local v7, "gapSize":I
    move v8, v1

    move v9, v7

    add-int/2addr v8, v9

    move v1, v8

    .line 127
    move v8, v2

    move v9, v7

    add-int/2addr v8, v9

    move v2, v8

    .line 128
    move v8, v2

    move v9, v1

    sub-int/2addr v8, v9

    move v6, v8

    .line 129
    .restart local v6    # "count":I
    move v8, v6

    if-lez v8, :cond_1

    .line 130
    move-object v8, v5

    move v9, v1

    move-object v10, v3

    move v11, v4

    move v12, v6

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    :cond_1
    return-void

    .line 117
    .end local v6    # "count":I
    .end local v7    # "gapSize":I
    :cond_2
    move-object v8, v0

    iget v8, v8, Lgnu/lists/CharBuffer;->gapStart:I

    goto :goto_0
.end method

.method public indexOf(II)I
    .locals 11

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move v1, p1

    .local v1, "ch":I
    move v2, p2

    .local v2, "fromChar":I
    move v8, v1

    const/high16 v9, 0x10000

    if-lt v8, v9, :cond_3

    .line 48
    move v8, v1

    const/high16 v9, 0x10000

    sub-int/2addr v8, v9

    const/16 v9, 0xa

    shr-int/lit8 v8, v8, 0xa

    const v9, 0xd800

    add-int/2addr v8, v9

    int-to-char v8, v8

    move v3, v8

    .line 49
    .local v3, "c1":C
    move v8, v1

    const/16 v9, 0x3ff

    and-int/lit16 v8, v8, 0x3ff

    const v9, 0xdc00

    add-int/2addr v8, v9

    int-to-char v8, v8

    move v4, v8

    .line 56
    .local v4, "c2":C
    :goto_0
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v8

    move-object v5, v8

    .line 57
    .local v5, "arr":[C
    move v8, v2

    move v6, v8

    .line 58
    .local v6, "i":I
    move-object v8, v0

    iget v8, v8, Lgnu/lists/CharBuffer;->gapStart:I

    move v7, v8

    .line 59
    .local v7, "limit":I
    move v8, v6

    move v9, v7

    if-lt v8, v9, :cond_0

    .line 61
    move v8, v6

    move-object v9, v0

    iget v9, v9, Lgnu/lists/CharBuffer;->gapEnd:I

    move-object v10, v0

    iget v10, v10, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    move v6, v8

    .line 62
    move-object v8, v5

    array-length v8, v8

    move v7, v8

    .line 66
    :cond_0
    :goto_1
    move v8, v6

    move v9, v7

    if-ne v8, v9, :cond_1

    .line 68
    move-object v8, v5

    array-length v8, v8

    move v7, v8

    .line 69
    move v8, v6

    move v9, v7

    if-ge v8, v9, :cond_7

    .line 70
    move-object v8, v0

    iget v8, v8, Lgnu/lists/CharBuffer;->gapEnd:I

    move v6, v8

    .line 74
    :cond_1
    move-object v8, v5

    move v9, v6

    aget-char v8, v8, v9

    move v9, v3

    if-ne v8, v9, :cond_5

    move v8, v4

    if-eqz v8, :cond_2

    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v7

    if-ge v8, v9, :cond_4

    move-object v8, v5

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-char v8, v8, v9

    move v9, v4

    if-ne v8, v9, :cond_5

    .line 78
    :cond_2
    move v8, v6

    move-object v9, v0

    iget v9, v9, Lgnu/lists/CharBuffer;->gapStart:I

    if-le v8, v9, :cond_6

    move v8, v6

    move-object v9, v0

    iget v9, v9, Lgnu/lists/CharBuffer;->gapEnd:I

    move-object v10, v0

    iget v10, v10, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    :goto_2
    move v0, v8

    .line 80
    .end local v0    # "this":Lgnu/lists/CharBuffer;
    :goto_3
    return v0

    .line 53
    .end local v3    # "c1":C
    .end local v4    # "c2":C
    .end local v5    # "arr":[C
    .end local v6    # "i":I
    .end local v7    # "limit":I
    .restart local v0    # "this":Lgnu/lists/CharBuffer;
    :cond_3
    move v8, v1

    int-to-char v8, v8

    move v3, v8

    .line 54
    .restart local v3    # "c1":C
    const/4 v8, 0x0

    move v4, v8

    .restart local v4    # "c2":C
    goto :goto_0

    .line 74
    .restart local v5    # "arr":[C
    .restart local v6    # "i":I
    .restart local v7    # "limit":I
    :cond_4
    move-object v8, v0

    iget v8, v8, Lgnu/lists/CharBuffer;->gapEnd:I

    move-object v9, v5

    array-length v9, v9

    if-ge v8, v9, :cond_5

    move-object v8, v5

    move-object v9, v0

    iget v9, v9, Lgnu/lists/CharBuffer;->gapEnd:I

    aget-char v8, v8, v9

    move v9, v4

    if-eq v8, v9, :cond_2

    .line 64
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 78
    :cond_6
    move v8, v6

    goto :goto_2

    .line 80
    :cond_7
    const/4 v8, -0x1

    move v0, v8

    goto :goto_3
.end method

.method public insert(ILjava/lang/String;Z)V
    .locals 11

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move v1, p1

    .local v1, "where":I
    move-object v2, p2

    .local v2, "str":Ljava/lang/String;
    move v3, p3

    .local v3, "beforeMarkers":Z
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v5

    .line 200
    .local v4, "len":I
    move-object v5, v0

    move v6, v1

    move v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/lists/CharBuffer;->gapReserve(II)V

    .line 201
    move-object v5, v2

    const/4 v6, 0x0

    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v8, v8, Lgnu/lists/FString;->data:[C

    move v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 202
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lgnu/lists/CharBuffer;->gapStart:I

    move v7, v4

    add-int/2addr v6, v7

    iput v6, v5, Lgnu/lists/CharBuffer;->gapStart:I

    .line 203
    return-void
.end method

.method public lastIndexOf(II)I
    .locals 9

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move v1, p1

    .local v1, "ch":I
    move v2, p2

    .local v2, "fromChar":I
    move v6, v1

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_1

    .line 88
    move v6, v1

    const/high16 v7, 0x10000

    sub-int/2addr v6, v7

    const/16 v7, 0xa

    shr-int/lit8 v6, v6, 0xa

    const v7, 0xd800

    add-int/2addr v6, v7

    int-to-char v6, v6

    move v3, v6

    .line 89
    .local v3, "c1":C
    move v6, v1

    const/16 v7, 0x3ff

    and-int/lit16 v6, v6, 0x3ff

    const v7, 0xdc00

    add-int/2addr v6, v7

    int-to-char v6, v6

    move v4, v6

    .line 96
    .local v4, "c2":C
    :goto_0
    move v6, v2

    move v5, v6

    .local v5, "i":I
    :cond_0
    add-int/lit8 v5, v5, -0x1

    move v6, v5

    if-ltz v6, :cond_3

    .line 98
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Lgnu/lists/CharBuffer;->charAt(I)C

    move-result v6

    move v7, v4

    if-ne v6, v7, :cond_0

    .line 100
    move v6, v3

    if-nez v6, :cond_2

    .line 101
    move v6, v5

    move v0, v6

    .line 106
    .end local v0    # "this":Lgnu/lists/CharBuffer;
    :goto_1
    return v0

    .line 93
    .end local v3    # "c1":C
    .end local v4    # "c2":C
    .end local v5    # "i":I
    .restart local v0    # "this":Lgnu/lists/CharBuffer;
    :cond_1
    const/4 v6, 0x0

    move v3, v6

    .line 94
    .restart local v3    # "c1":C
    move v6, v1

    int-to-char v6, v6

    move v4, v6

    .restart local v4    # "c2":C
    goto :goto_0

    .line 102
    .restart local v5    # "i":I
    :cond_2
    move v6, v5

    if-lez v6, :cond_0

    move-object v6, v0

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lgnu/lists/CharBuffer;->charAt(I)C

    move-result v6

    move v7, v3

    if-ne v6, v7, :cond_0

    .line 103
    move v6, v5

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v0, v6

    goto :goto_1

    .line 106
    :cond_3
    const/4 v6, -0x1

    move v0, v6

    goto :goto_1
.end method

.method public length()I
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/lists/CharBuffer;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/CharBuffer;
    return v0
.end method

.method public setCharAt(IC)V
    .locals 6

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "value":C
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/CharBuffer;->gapStart:I

    if-lt v3, v4, :cond_0

    .line 137
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/CharBuffer;->gapEnd:I

    move-object v5, v0

    iget v5, v5, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    move v1, v3

    .line 138
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/FString;->setCharAt(IC)V

    .line 139
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 12

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/CharBuffer;->size()I

    move-result v4

    move v3, v4

    .line 156
    .local v3, "sz":I
    move v4, v1

    if-ltz v4, :cond_0

    move v4, v2

    move v5, v1

    if-lt v4, v5, :cond_0

    move v4, v2

    move v5, v3

    if-le v4, v5, :cond_1

    .line 157
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 158
    :cond_1
    new-instance v4, Lgnu/lists/SubCharSeq;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/CharBuffer;->base:Lgnu/lists/SimpleVector;

    move v8, v1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lgnu/lists/SimpleVector;->createPos(IZ)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/CharBuffer;->base:Lgnu/lists/SimpleVector;

    move v9, v2

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lgnu/lists/SimpleVector;->createPos(IZ)I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lgnu/lists/SubCharSeq;-><init>(Lgnu/lists/AbstractSequence;II)V

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/CharBuffer;
    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 11

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/CharBuffer;->size()I

    move-result v5

    move v3, v5

    .line 144
    .local v3, "sz":I
    move v5, v1

    if-ltz v5, :cond_0

    move v5, v2

    move v6, v1

    if-lt v5, v6, :cond_0

    move v5, v2

    move v6, v3

    if-le v5, v6, :cond_1

    .line 145
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 146
    :cond_1
    move v5, v2

    move v6, v1

    sub-int/2addr v5, v6

    move v4, v5

    .line 147
    .local v4, "len":I
    move-object v5, v0

    move v6, v1

    move v7, v4

    invoke-virtual {v5, v6, v7}, Lgnu/lists/CharBuffer;->getSegment(II)I

    move-result v5

    move v1, v5

    .line 148
    new-instance v5, Ljava/lang/String;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v7

    move v8, v1

    move v9, v4

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v5

    .end local v0    # "this":Lgnu/lists/CharBuffer;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/CharBuffer;->size()I

    move-result v3

    move v1, v3

    .line 227
    .local v1, "len":I
    move-object v3, v0

    const/4 v4, 0x0

    move v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/lists/CharBuffer;->getSegment(II)I

    move-result v3

    move v2, v3

    .line 228
    .local v2, "start":I
    new-instance v3, Ljava/lang/String;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v5

    move v6, v2

    move v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/CharBuffer;
    return-object v0
.end method

.method public writeTo(IILjava/io/Writer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    move-object v3, p3

    .local v3, "dest":Ljava/io/Writer;
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v6, v6, Lgnu/lists/FString;->data:[C

    move-object v4, v6

    .line 252
    .local v4, "array":[C
    move v6, v1

    move-object v7, v0

    iget v7, v7, Lgnu/lists/CharBuffer;->gapStart:I

    if-ge v6, v7, :cond_1

    .line 254
    move-object v6, v0

    iget v6, v6, Lgnu/lists/CharBuffer;->gapStart:I

    move v7, v1

    sub-int/2addr v6, v7

    move v5, v6

    .line 255
    .local v5, "count0":I
    move v6, v5

    move v7, v2

    if-le v6, v7, :cond_0

    .line 256
    move v6, v2

    move v5, v6

    .line 257
    :cond_0
    move-object v6, v3

    move-object v7, v4

    move v8, v1

    move v9, v5

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/Writer;->write([CII)V

    .line 258
    move v6, v2

    move v7, v5

    sub-int/2addr v6, v7

    move v2, v6

    .line 259
    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    move v1, v6

    .line 261
    .end local v5    # "count0":I
    :cond_1
    move v6, v2

    if-lez v6, :cond_2

    .line 263
    move v6, v1

    move-object v7, v0

    iget v7, v7, Lgnu/lists/CharBuffer;->gapEnd:I

    move-object v8, v0

    iget v8, v8, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    move v1, v6

    .line 264
    move-object v6, v3

    move-object v7, v4

    move v8, v1

    move v9, v2

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/Writer;->write([CII)V

    .line 266
    :cond_2
    return-void
.end method

.method public writeTo(IILjava/lang/Appendable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    move-object v3, p3

    .local v3, "dest":Ljava/lang/Appendable;
    move-object v4, v3

    instance-of v4, v4, Ljava/io/Writer;

    if-eqz v4, :cond_0

    .line 236
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    check-cast v7, Ljava/io/Writer;

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/CharBuffer;->writeTo(IILjava/io/Writer;)V

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    move-object v4, v3

    move-object v5, v0

    move v6, v1

    move v7, v1

    move v8, v2

    add-int/2addr v7, v8

    invoke-interface {v4, v5, v6, v7}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object v4

    goto :goto_0
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move-object v1, p1

    .local v1, "dest":Ljava/io/Writer;
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v3, v3, Lgnu/lists/FString;->data:[C

    move-object v2, v3

    .line 271
    .local v2, "array":[C
    move-object v3, v1

    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lgnu/lists/CharBuffer;->gapStart:I

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/Writer;->write([CII)V

    .line 272
    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/lists/CharBuffer;->gapEnd:I

    move-object v6, v2

    array-length v6, v6

    move-object v7, v0

    iget v7, v7, Lgnu/lists/CharBuffer;->gapEnd:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/Writer;->write([CII)V

    .line 273
    return-void
.end method

.method public writeTo(Ljava/lang/Appendable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lgnu/lists/CharBuffer;
    move-object v1, p1

    .local v1, "dest":Ljava/lang/Appendable;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/lists/CharBuffer;->size()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lgnu/lists/CharBuffer;->writeTo(IILjava/lang/Appendable;)V

    .line 245
    return-void
.end method
