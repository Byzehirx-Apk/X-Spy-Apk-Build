.class public Lgnu/lists/FString;
.super Lgnu/lists/SimpleVector;
.source "FString.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Appendable;
.implements Lgnu/lists/CharSeq;
.implements Ljava/io/Externalizable;
.implements Lgnu/lists/Consumable;


# static fields
.field protected static empty:[C


# instance fields
.field public data:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lgnu/lists/FString;->empty:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/SimpleVector;-><init>()V

    .line 27
    move-object v1, v0

    sget-object v2, Lgnu/lists/FString;->empty:[C

    iput-object v2, v1, Lgnu/lists/FString;->data:[C

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "num":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 32
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/lists/FString;->size:I

    .line 33
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [C

    iput-object v3, v2, Lgnu/lists/FString;->data:[C

    .line 34
    return-void
.end method

.method public constructor <init>(IC)V
    .locals 7

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "num":I
    move v2, p2

    .local v2, "value":C
    move-object v4, v0

    invoke-direct {v4}, Lgnu/lists/SimpleVector;-><init>()V

    .line 38
    move v4, v1

    new-array v4, v4, [C

    move-object v3, v4

    .line 39
    .local v3, "array":[C
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/lists/FString;->data:[C

    .line 40
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lgnu/lists/FString;->size:I

    .line 41
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v4, v1

    if-ltz v4, :cond_0

    .line 42
    move-object v4, v3

    move v5, v1

    move v6, v2

    aput-char v6, v4, v5

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public constructor <init>(Lgnu/lists/CharSeq;)V
    .locals 6

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/CharSeq;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Lgnu/lists/CharSeq;->size()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lgnu/lists/FString;-><init>(Lgnu/lists/CharSeq;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lgnu/lists/CharSeq;II)V
    .locals 10

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/CharSeq;
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v5, v0

    invoke-direct {v5}, Lgnu/lists/SimpleVector;-><init>()V

    .line 92
    move v5, v3

    new-array v5, v5, [C

    move-object v4, v5

    .line 93
    .local v4, "data":[C
    move-object v5, v1

    move v6, v2

    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    move-object v8, v4

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Lgnu/lists/CharSeq;->getChars(II[CI)V

    .line 94
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/lists/FString;->data:[C

    .line 95
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lgnu/lists/FString;->size:I

    .line 96
    return-void
.end method

.method public constructor <init>(Lgnu/lists/Sequence;)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/Sequence;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 81
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lgnu/lists/Sequence;->size()I

    move-result v3

    new-array v3, v3, [C

    iput-object v3, v2, Lgnu/lists/FString;->data:[C

    .line 82
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/FString;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "seq":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;II)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 11

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "seq":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v6, v0

    invoke-direct {v6}, Lgnu/lists/SimpleVector;-><init>()V

    .line 106
    move v6, v3

    new-array v6, v6, [C

    move-object v4, v6

    .line 107
    .local v4, "data":[C
    move v6, v3

    move v5, v6

    .local v5, "i":I
    :goto_0
    add-int/lit8 v5, v5, -0x1

    move v6, v5

    if-ltz v6, :cond_0

    .line 108
    move-object v6, v4

    move v7, v5

    move-object v8, v1

    move v9, v2

    move v10, v5

    add-int/2addr v9, v10

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    aput-char v8, v6, v7

    goto :goto_0

    .line 109
    :cond_0
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lgnu/lists/FString;->data:[C

    .line 110
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lgnu/lists/FString;->size:I

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 55
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iput-object v3, v2, Lgnu/lists/FString;->data:[C

    .line 56
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/FString;->data:[C

    array-length v3, v3

    iput v3, v2, Lgnu/lists/FString;->size:I

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "buffer":Ljava/lang/StringBuffer;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lgnu/lists/FString;-><init>(Ljava/lang/StringBuffer;II)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;II)V
    .locals 9

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "buffer":Ljava/lang/StringBuffer;
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    invoke-direct {v4}, Lgnu/lists/SimpleVector;-><init>()V

    .line 66
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/lists/FString;->size:I

    .line 67
    move-object v4, v0

    move v5, v3

    new-array v5, v5, [C

    iput-object v5, v4, Lgnu/lists/FString;->data:[C

    .line 68
    move v4, v3

    if-lez v4, :cond_0

    .line 69
    move-object v4, v1

    move v5, v2

    move v6, v2

    move v7, v3

    add-int/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/FString;->data:[C

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 70
    :cond_0
    return-void
.end method

.method public constructor <init>([C)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "values":[C
    move-object v2, v0

    invoke-direct {v2}, Lgnu/lists/SimpleVector;-><init>()V

    .line 49
    move-object v2, v0

    move-object v3, v1

    array-length v3, v3

    iput v3, v2, Lgnu/lists/FString;->size:I

    .line 50
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/lists/FString;->data:[C

    .line 51
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 9

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "buffer":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    invoke-direct {v4}, Lgnu/lists/SimpleVector;-><init>()V

    .line 74
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/lists/FString;->size:I

    .line 75
    move-object v4, v0

    move v5, v3

    new-array v5, v5, [C

    iput-object v5, v4, Lgnu/lists/FString;->data:[C

    .line 76
    move-object v4, v1

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/FString;->data:[C

    const/4 v7, 0x0

    move v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    return-void
.end method


# virtual methods
.method public addAll(Lgnu/lists/FString;)Z
    .locals 8

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "s":Lgnu/lists/FString;
    move-object v3, v0

    iget v3, v3, Lgnu/lists/FString;->size:I

    move-object v4, v1

    iget v4, v4, Lgnu/lists/FString;->size:I

    add-int/2addr v3, v4

    move v2, v3

    .line 239
    .local v2, "newSize":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/FString;->data:[C

    array-length v3, v3

    move v4, v2

    if-ge v3, v4, :cond_0

    .line 240
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lgnu/lists/FString;->setBufferLength(I)V

    .line 241
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lgnu/lists/FString;->data:[C

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/FString;->data:[C

    move-object v6, v0

    iget v6, v6, Lgnu/lists/FString;->size:I

    move-object v7, v1

    iget v7, v7, Lgnu/lists/FString;->size:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/lists/FString;->size:I

    .line 243
    move-object v3, v1

    iget v3, v3, Lgnu/lists/FString;->size:I

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/lists/FString;
    return v0

    .restart local v0    # "this":Lgnu/lists/FString;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public addAll(Ljava/lang/CharSequence;)Z
    .locals 10

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "s":Ljava/lang/CharSequence;
    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v2, v5

    .line 250
    .local v2, "ssize":I
    move-object v5, v0

    iget v5, v5, Lgnu/lists/FString;->size:I

    move v6, v2

    add-int/2addr v5, v6

    move v3, v5

    .line 251
    .local v3, "newSize":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/FString;->data:[C

    array-length v5, v5

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 252
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lgnu/lists/FString;->setBufferLength(I)V

    .line 253
    :cond_0
    move-object v5, v1

    instance-of v5, v5, Lgnu/lists/FString;

    if-eqz v5, :cond_2

    .line 254
    move-object v5, v1

    check-cast v5, Lgnu/lists/FString;

    iget-object v5, v5, Lgnu/lists/FString;->data:[C

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/FString;->data:[C

    move-object v8, v0

    iget v8, v8, Lgnu/lists/FString;->size:I

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    :cond_1
    :goto_0
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lgnu/lists/FString;->size:I

    .line 263
    move v5, v2

    if-lez v5, :cond_5

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    .end local v0    # "this":Lgnu/lists/FString;
    return v0

    .line 255
    .restart local v0    # "this":Lgnu/lists/FString;
    :cond_2
    move-object v5, v1

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 256
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/FString;->data:[C

    move-object v9, v0

    iget v9, v9, Lgnu/lists/FString;->size:I

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    .line 257
    :cond_3
    move-object v5, v1

    instance-of v5, v5, Lgnu/lists/CharSeq;

    if-eqz v5, :cond_4

    .line 258
    move-object v5, v1

    check-cast v5, Lgnu/lists/CharSeq;

    const/4 v6, 0x0

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lgnu/lists/FString;->data:[C

    move-object v9, v0

    iget v9, v9, Lgnu/lists/FString;->size:I

    invoke-interface {v5, v6, v7, v8, v9}, Lgnu/lists/CharSeq;->getChars(II[CI)V

    goto :goto_0

    .line 260
    :cond_4
    move v5, v2

    move v4, v5

    .local v4, "i":I
    :goto_2
    add-int/lit8 v4, v4, -0x1

    move v5, v4

    if-ltz v5, :cond_1

    .line 261
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/FString;->data:[C

    move-object v6, v0

    iget v6, v6, Lgnu/lists/FString;->size:I

    move v7, v4

    add-int/2addr v6, v7

    move-object v7, v1

    move v8, v4

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    aput-char v7, v5, v6

    goto :goto_2

    .line 263
    .end local v4    # "i":I
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public addAllStrings([Ljava/lang/Object;I)V
    .locals 8

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "startIndex":I
    move-object v6, v0

    iget v6, v6, Lgnu/lists/FString;->size:I

    move v3, v6

    .line 297
    .local v3, "total":I
    move v6, v2

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 299
    move-object v6, v1

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 301
    .local v5, "arg":Ljava/lang/Object;
    move v6, v3

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/2addr v6, v7

    move v3, v6

    .line 297
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 309
    .end local v5    # "arg":Ljava/lang/Object;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/FString;->data:[C

    array-length v6, v6

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 310
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lgnu/lists/FString;->setBufferLength(I)V

    .line 312
    :cond_1
    move v6, v2

    move v4, v6

    :goto_1
    move v6, v4

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 314
    move-object v6, v1

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 316
    .restart local v5    # "arg":Ljava/lang/Object;
    move-object v6, v0

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lgnu/lists/FString;->addAll(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 312
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 324
    .end local v5    # "arg":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public append(C)Lgnu/lists/FString;
    .locals 7

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "c":C
    move-object v4, v0

    iget v4, v4, Lgnu/lists/FString;->size:I

    move v2, v4

    .line 471
    .local v2, "sz":I
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/FString;->data:[C

    array-length v5, v5

    if-lt v4, v5, :cond_0

    .line 472
    move-object v4, v0

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/lists/FString;->ensureBufferLength(I)V

    .line 473
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FString;->data:[C

    move-object v3, v4

    .line 474
    .local v3, "d":[C
    move-object v4, v3

    move v5, v2

    move v6, v1

    aput-char v6, v4, v5

    .line 475
    move-object v4, v0

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/lists/FString;->size:I

    .line 476
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/FString;
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/FString;
    .locals 6

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 483
    const-string/jumbo v2, "null"

    move-object v1, v2

    .line 484
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/lists/FString;->append(Ljava/lang/CharSequence;II)Lgnu/lists/FString;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/FString;
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/FString;
    .locals 14

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move/from16 v2, p2

    .local v2, "start":I
    move/from16 v3, p3

    .local v3, "end":I
    move-object v9, v1

    if-nez v9, :cond_0

    .line 490
    const-string/jumbo v9, "null"

    move-object v1, v9

    .line 491
    :cond_0
    move v9, v3

    move v10, v2

    sub-int/2addr v9, v10

    move v4, v9

    .line 492
    .local v4, "len":I
    move-object v9, v0

    iget v9, v9, Lgnu/lists/FString;->size:I

    move v5, v9

    .line 493
    .local v5, "sz":I
    move v9, v5

    move v10, v4

    add-int/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Lgnu/lists/FString;->data:[C

    array-length v10, v10

    if-le v9, v10, :cond_1

    .line 494
    move-object v9, v0

    move v10, v5

    move v11, v4

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lgnu/lists/FString;->ensureBufferLength(I)V

    .line 495
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lgnu/lists/FString;->data:[C

    move-object v6, v9

    .line 496
    .local v6, "d":[C
    move-object v9, v1

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 497
    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    move v10, v2

    move v11, v3

    move-object v12, v6

    move v13, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Ljava/lang/String;->getChars(II[CI)V

    .line 506
    :cond_2
    :goto_0
    move-object v9, v0

    move v10, v5

    iput v10, v9, Lgnu/lists/FString;->size:I

    .line 507
    move-object v9, v0

    move-object v0, v9

    .end local v0    # "this":Lgnu/lists/FString;
    return-object v0

    .line 498
    .restart local v0    # "this":Lgnu/lists/FString;
    :cond_3
    move-object v9, v1

    instance-of v9, v9, Lgnu/lists/CharSeq;

    if-eqz v9, :cond_4

    .line 499
    move-object v9, v1

    check-cast v9, Lgnu/lists/CharSeq;

    move v10, v2

    move v11, v3

    move-object v12, v6

    move v13, v5

    invoke-interface {v9, v10, v11, v12, v13}, Lgnu/lists/CharSeq;->getChars(II[CI)V

    goto :goto_0

    .line 502
    :cond_4
    move v9, v5

    move v7, v9

    .line 503
    .local v7, "j":I
    move v9, v2

    move v8, v9

    .local v8, "i":I
    :goto_1
    move v9, v8

    move v10, v3

    if-ge v9, v10, :cond_2

    .line 504
    move-object v9, v6

    move v10, v7

    add-int/lit8 v7, v7, 0x1

    move-object v11, v1

    move v12, v8

    invoke-interface {v11, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    aput-char v11, v9, v10

    .line 503
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "x0":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/FString;->append(C)Lgnu/lists/FString;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/FString;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/FString;->append(Ljava/lang/CharSequence;)Lgnu/lists/FString;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/FString;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/lists/FString;->append(Ljava/lang/CharSequence;II)Lgnu/lists/FString;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/FString;
    return-object v0
.end method

.method public final charAt(I)C
    .locals 6

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/FString;->size:I

    if-lt v2, v3, :cond_0

    .line 168
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v1

    invoke-direct {v3, v4}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 169
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/FString;->data:[C

    move v3, v1

    aget-char v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/lists/FString;
    return v0
.end method

.method public final charAtBuffer(I)C
    .locals 4

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/FString;->data:[C

    move v3, v1

    aget-char v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lgnu/lists/FString;
    return v0
.end method

.method protected clearBuffer(II)V
    .locals 7

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FString;->data:[C

    move-object v3, v4

    .line 375
    .local v3, "d":[C
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    if-ltz v4, :cond_0

    .line 376
    move-object v4, v3

    move v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x0

    aput-char v6, v4, v5

    goto :goto_0

    .line 377
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 14

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v12, v1

    check-cast v12, Lgnu/lists/FString;

    move-object v2, v12

    .line 421
    .local v2, "str2":Lgnu/lists/FString;
    move-object v12, v0

    iget-object v12, v12, Lgnu/lists/FString;->data:[C

    move-object v3, v12

    .line 422
    .local v3, "cs1":[C
    move-object v12, v2

    iget-object v12, v12, Lgnu/lists/FString;->data:[C

    move-object v4, v12

    .line 423
    .local v4, "cs2":[C
    move-object v12, v0

    iget v12, v12, Lgnu/lists/FString;->size:I

    move v5, v12

    .line 424
    .local v5, "n1":I
    move-object v12, v2

    iget v12, v12, Lgnu/lists/FString;->size:I

    move v6, v12

    .line 425
    .local v6, "n2":I
    move v12, v5

    move v13, v6

    if-le v12, v13, :cond_0

    move v12, v6

    :goto_0
    move v7, v12

    .line 426
    .local v7, "n":I
    const/4 v12, 0x0

    move v8, v12

    .local v8, "i":I
    :goto_1
    move v12, v8

    move v13, v7

    if-ge v12, v13, :cond_2

    .line 428
    move-object v12, v3

    move v13, v8

    aget-char v12, v12, v13

    move v9, v12

    .line 429
    .local v9, "c1":C
    move-object v12, v4

    move v13, v8

    aget-char v12, v12, v13

    move v10, v12

    .line 430
    .local v10, "c2":C
    move v12, v9

    move v13, v10

    sub-int/2addr v12, v13

    move v11, v12

    .line 431
    .local v11, "d":I
    move v12, v11

    if-eqz v12, :cond_1

    .line 432
    move v12, v11

    move v0, v12

    .line 434
    .end local v0    # "this":Lgnu/lists/FString;
    .end local v9    # "c1":C
    .end local v10    # "c2":C
    .end local v11    # "d":I
    :goto_2
    return v0

    .line 425
    .end local v7    # "n":I
    .end local v8    # "i":I
    .restart local v0    # "this":Lgnu/lists/FString;
    :cond_0
    move v12, v5

    goto :goto_0

    .line 426
    .restart local v7    # "n":I
    .restart local v8    # "i":I
    .restart local v9    # "c1":C
    .restart local v10    # "c2":C
    .restart local v11    # "d":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 434
    .end local v9    # "c1":C
    .end local v10    # "c2":C
    .end local v11    # "d":I
    :cond_2
    move v12, v5

    move v13, v6

    sub-int/2addr v12, v13

    move v0, v12

    goto :goto_2
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .locals 6

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/FString;->data:[C

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/FString;->data:[C

    array-length v5, v5

    invoke-interface {v2, v3, v4, v5}, Lgnu/lists/Consumer;->write([CII)V

    .line 445
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 7

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "ipos":I
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move v4, v1

    const/4 v5, 0x1

    ushr-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 450
    .local v3, "index":I
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/lists/FString;->size:I

    if-lt v4, v5, :cond_0

    .line 451
    const/4 v4, 0x0

    move v0, v4

    .line 453
    .end local v0    # "this":Lgnu/lists/FString;
    :goto_0
    return v0

    .line 452
    .restart local v0    # "this":Lgnu/lists/FString;
    :cond_0
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/FString;->data:[C

    move v6, v3

    aget-char v5, v5, v6

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->write(I)V

    .line 453
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 11

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "iposStart":I
    move v2, p2

    .local v2, "iposEnd":I
    move-object v3, p3

    .local v3, "out":Lgnu/lists/Consumer;
    move-object v6, v3

    invoke-interface {v6}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 459
    .line 466
    :goto_0
    return-void

    .line 460
    :cond_0
    move v6, v1

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 461
    .local v4, "i":I
    move v6, v2

    const/4 v7, 0x1

    ushr-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 462
    .local v5, "end":I
    move v6, v5

    move-object v7, v0

    iget v7, v7, Lgnu/lists/FString;->size:I

    if-le v6, v7, :cond_1

    .line 463
    move-object v6, v0

    iget v6, v6, Lgnu/lists/FString;->size:I

    move v5, v6

    .line 464
    :cond_1
    move v6, v5

    move v7, v4

    if-le v6, v7, :cond_2

    .line 465
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/FString;->data:[C

    move v8, v4

    move v9, v5

    move v10, v4

    sub-int/2addr v9, v10

    invoke-interface {v6, v7, v8, v9}, Lgnu/lists/Consumer;->write([CII)V

    .line 466
    :cond_2
    goto :goto_0
.end method

.method public copy(II)Lgnu/lists/FString;
    .locals 11

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move v6, v2

    move v7, v1

    sub-int/2addr v6, v7

    new-array v6, v6, [C

    move-object v3, v6

    .line 229
    .local v3, "copy":[C
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/FString;->data:[C

    move-object v4, v6

    .line 230
    .local v4, "src":[C
    move v6, v1

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v2

    if-ge v6, v7, :cond_0

    .line 231
    move-object v6, v3

    move v7, v5

    move v8, v1

    sub-int/2addr v7, v8

    move-object v8, v4

    move v9, v5

    aget-char v8, v8, v9

    aput-char v8, v6, v7

    .line 230
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 232
    :cond_0
    new-instance v6, Lgnu/lists/FString;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-direct {v7, v8}, Lgnu/lists/FString;-><init>([C)V

    move-object v0, v6

    .end local v0    # "this":Lgnu/lists/FString;
    return-object v0
.end method

.method public ensureBufferLength(I)V
    .locals 8

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "sz":I
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FString;->data:[C

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 138
    move v3, v1

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_1

    const/16 v3, 0x78

    :goto_0
    new-array v3, v3, [C

    move-object v2, v3

    .line 139
    .local v2, "d":[C
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/FString;->data:[C

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/lists/FString;->data:[C

    .line 142
    .end local v2    # "d":[C
    :cond_0
    return-void

    .line 138
    :cond_1
    const/4 v3, 0x2

    move v4, v1

    mul-int/2addr v3, v4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    instance-of v6, v6, Lgnu/lists/FString;

    if-nez v6, :cond_1

    .line 404
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    .line 415
    .end local v0    # "this":Lgnu/lists/FString;
    :goto_0
    return v0

    .line 405
    .restart local v0    # "this":Lgnu/lists/FString;
    :cond_1
    move-object v6, v1

    check-cast v6, Lgnu/lists/FString;

    iget-object v6, v6, Lgnu/lists/FString;->data:[C

    move-object v2, v6

    .line 406
    .local v2, "str":[C
    move-object v6, v0

    iget v6, v6, Lgnu/lists/FString;->size:I

    move v3, v6

    .line 407
    .local v3, "n":I
    move-object v6, v2

    if-eqz v6, :cond_2

    move-object v6, v2

    array-length v6, v6

    move v7, v3

    if-eq v6, v7, :cond_3

    .line 408
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 409
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/FString;->data:[C

    move-object v4, v6

    .line 410
    .local v4, "d":[C
    move v6, v3

    move v5, v6

    .local v5, "i":I
    :cond_4
    add-int/lit8 v5, v5, -0x1

    move v6, v5

    if-ltz v6, :cond_5

    .line 412
    move-object v6, v4

    move v7, v5

    aget-char v6, v6, v7

    move-object v7, v2

    move v8, v5

    aget-char v7, v7, v8

    if-eq v6, v7, :cond_4

    .line 413
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 415
    :cond_5
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0
.end method

.method public final fill(C)V
    .locals 7

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "ch":C
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FString;->data:[C

    move-object v2, v4

    .line 359
    .local v2, "d":[C
    move-object v4, v0

    iget v4, v4, Lgnu/lists/FString;->size:I

    move v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    if-ltz v4, :cond_0

    .line 360
    move-object v4, v2

    move v5, v3

    move v6, v1

    aput-char v6, v4, v5

    goto :goto_0

    .line 361
    :cond_0
    return-void
.end method

.method public fill(IIC)V
    .locals 10

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move v3, p3

    .local v3, "value":C
    move v6, v1

    if-ltz v6, :cond_0

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lgnu/lists/FString;->size:I

    if-le v6, v7, :cond_1

    .line 366
    :cond_0
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    .line 367
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/FString;->data:[C

    move-object v4, v6

    .line 368
    .local v4, "d":[C
    move v6, v1

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 369
    move-object v6, v4

    move v7, v5

    move v8, v3

    aput-char v8, v6, v7

    .line 368
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 370
    :cond_2
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/lists/FString;->size:I

    if-lt v2, v3, :cond_0

    .line 161
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 162
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/FString;->data:[C

    move v3, v1

    aget-char v2, v2, v3

    invoke-static {v2}, Lgnu/lists/Convert;->toObject(C)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/FString;
    return-object v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/FString;->data:[C

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/FString;
    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/lists/FString;->data:[C

    move v3, v1

    aget-char v2, v2, v3

    invoke-static {v2}, Lgnu/lists/Convert;->toObject(C)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/FString;
    return-object v0
.end method

.method public getBufferLength()I
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, v0

    iget-object v1, v1, Lgnu/lists/FString;->data:[C

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/FString;
    return v0
.end method

.method public getChars(IILjava/lang/StringBuffer;)V
    .locals 10

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "srcBegin":I
    move v2, p2

    .local v2, "srcEnd":I
    move-object v3, p3

    .local v3, "dst":Ljava/lang/StringBuffer;
    move v4, v1

    if-ltz v4, :cond_0

    move v4, v1

    move v5, v2

    if-le v4, v5, :cond_1

    .line 192
    :cond_0
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v1

    invoke-direct {v5, v6}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    .line 193
    :cond_1
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/lists/FString;->size:I

    if-le v4, v5, :cond_2

    .line 194
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v2

    invoke-direct {v5, v6}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    .line 195
    :cond_2
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_3

    .line 196
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/FString;->data:[C

    move v6, v1

    move v7, v2

    move v8, v1

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 197
    :cond_3
    return-void
.end method

.method public getChars(II[CI)V
    .locals 12

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "srcBegin":I
    move v2, p2

    .local v2, "srcEnd":I
    move-object v3, p3

    .local v3, "dst":[C
    move/from16 v4, p4

    .local v4, "dstBegin":I
    move v5, v1

    if-ltz v5, :cond_0

    move v5, v1

    move v6, v2

    if-le v5, v6, :cond_1

    .line 180
    :cond_0
    new-instance v5, Ljava/lang/StringIndexOutOfBoundsException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move v7, v1

    invoke-direct {v6, v7}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v5

    .line 181
    :cond_1
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lgnu/lists/FString;->size:I

    if-le v5, v6, :cond_2

    .line 182
    new-instance v5, Ljava/lang/StringIndexOutOfBoundsException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move v7, v2

    invoke-direct {v6, v7}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v5

    .line 183
    :cond_2
    move v5, v4

    move v6, v2

    add-int/2addr v5, v6

    move v6, v1

    sub-int/2addr v5, v6

    move-object v6, v3

    array-length v6, v6

    if-le v5, v6, :cond_3

    .line 184
    new-instance v5, Ljava/lang/StringIndexOutOfBoundsException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move v7, v4

    invoke-direct {v6, v7}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v5

    .line 185
    :cond_3
    move v5, v1

    move v6, v2

    if-ge v5, v6, :cond_4

    .line 186
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/FString;->data:[C

    move v6, v1

    move-object v7, v3

    move v8, v4

    move v9, v2

    move v10, v1

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    :cond_4
    return-void
.end method

.method public getChars(Ljava/lang/StringBuffer;)V
    .locals 6

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "dst":Ljava/lang/StringBuffer;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/FString;->data:[C

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lgnu/lists/FString;->size:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 202
    return-void
.end method

.method public getElementKind()I
    .locals 2

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    const/16 v1, 0x1d

    move v0, v1

    .end local v0    # "this":Lgnu/lists/FString;
    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/FString;->data:[C

    move-object v1, v5

    .line 394
    .local v1, "val":[C
    move-object v5, v0

    iget v5, v5, Lgnu/lists/FString;->size:I

    move v2, v5

    .line 395
    .local v2, "len":I
    const/4 v5, 0x0

    move v3, v5

    .line 396
    .local v3, "hash":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 397
    const/16 v5, 0x1f

    move v6, v3

    mul-int/2addr v5, v6

    move-object v6, v1

    move v7, v4

    aget-char v6, v6, v7

    add-int/2addr v5, v6

    move v3, v5

    .line 396
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 398
    :cond_0
    move v5, v3

    move v0, v5

    .end local v0    # "this":Lgnu/lists/FString;
    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, v0

    iget v1, v1, Lgnu/lists/FString;->size:I

    move v0, v1

    .end local v0    # "this":Lgnu/lists/FString;
    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v5, v1

    invoke-interface {v5}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    move v2, v5

    .line 575
    .local v2, "size":I
    move v5, v2

    new-array v5, v5, [C

    move-object v3, v5

    .line 576
    .local v3, "data":[C
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 577
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    invoke-interface {v7}, Ljava/io/ObjectInput;->readChar()C

    move-result v7

    aput-char v7, v5, v6

    .line 576
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 578
    :cond_0
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/lists/FString;->data:[C

    .line 579
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lgnu/lists/FString;->size:I

    .line 580
    return-void
.end method

.method public replace(ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "where":I
    move-object v2, p2

    .local v2, "string":Ljava/lang/String;
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/FString;->data:[C

    move v7, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 387
    return-void
.end method

.method public replace(I[CII)V
    .locals 10

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "where":I
    move-object v2, p2

    .local v2, "chars":[C
    move v3, p3

    .local v3, "start":I
    move v4, p4

    .local v4, "count":I
    move-object v5, v2

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lgnu/lists/FString;->data:[C

    move v8, v1

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    return-void
.end method

.method public final setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FString;->data:[C

    move v5, v1

    aget-char v4, v4, v5

    invoke-static {v4}, Lgnu/lists/Convert;->toObject(C)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 154
    .local v3, "old":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FString;->data:[C

    move v5, v1

    move-object v6, v2

    invoke-static {v6}, Lgnu/lists/Convert;->toChar(Ljava/lang/Object;)C

    move-result v6

    aput-char v6, v4, v5

    .line 155
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/lists/FString;
    return-object v0
.end method

.method public setBufferLength(I)V
    .locals 10

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "length":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FString;->data:[C

    array-length v4, v4

    move v2, v4

    .line 125
    .local v2, "oldLength":I
    move v4, v2

    move v5, v1

    if-eq v4, v5, :cond_0

    .line 127
    move v4, v1

    new-array v4, v4, [C

    move-object v3, v4

    .line 128
    .local v3, "tmp":[C
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FString;->data:[C

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v2

    move v9, v1

    if-ge v8, v9, :cond_1

    move v8, v2

    :goto_0
    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/lists/FString;->data:[C

    .line 132
    .end local v3    # "tmp":[C
    :cond_0
    return-void

    .line 128
    .restart local v3    # "tmp":[C
    :cond_1
    move v8, v1

    goto :goto_0
.end method

.method public setCharAt(IC)V
    .locals 7

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "ch":C
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/lists/FString;->size:I

    if-lt v3, v4, :cond_1

    .line 346
    :cond_0
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3

    .line 347
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/FString;->data:[C

    move v4, v1

    move v5, v2

    aput-char v5, v3, v4

    .line 348
    return-void
.end method

.method public setCharAtBuffer(IC)V
    .locals 6

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "ch":C
    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/FString;->data:[C

    move v4, v1

    move v5, v2

    aput-char v5, v3, v4

    .line 353
    return-void
.end method

.method public shift(III)V
    .locals 9

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "srcStart":I
    move v2, p2

    .local v2, "dstStart":I
    move v3, p3

    .local v3, "count":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FString;->data:[C

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/FString;->data:[C

    move v7, v2

    move v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 10

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    new-instance v3, Lgnu/lists/FString;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/FString;->data:[C

    move v6, v1

    move v7, v2

    move v8, v1

    sub-int/2addr v7, v8

    invoke-direct {v4, v5, v6, v7}, Lgnu/lists/FString;-><init>([CII)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/FString;
    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 10

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    new-instance v3, Ljava/lang/String;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/FString;->data:[C

    move v6, v1

    move v7, v2

    move v8, v1

    sub-int/2addr v7, v8

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/lists/FString;
    return-object v0
.end method

.method public toCharArray()[C
    .locals 9

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FString;->data:[C

    array-length v4, v4

    move v1, v4

    .line 210
    .local v1, "val_length":I
    move-object v4, v0

    iget v4, v4, Lgnu/lists/FString;->size:I

    move v2, v4

    .line 211
    .local v2, "seq_length":I
    move v4, v2

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 212
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FString;->data:[C

    move-object v0, v4

    .line 217
    .end local v0    # "this":Lgnu/lists/FString;
    :goto_0
    return-object v0

    .line 215
    .restart local v0    # "this":Lgnu/lists/FString;
    :cond_0
    move v4, v2

    new-array v4, v4, [C

    move-object v3, v4

    .line 216
    .local v3, "tmp":[C
    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/FString;->data:[C

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    new-instance v1, Ljava/lang/String;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-object v3, v3, Lgnu/lists/FString;->data:[C

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lgnu/lists/FString;->size:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/FString;
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v5, v0

    iget v5, v5, Lgnu/lists/FString;->size:I

    move v2, v5

    .line 565
    .local v2, "size":I
    move-object v5, v1

    move v6, v2

    invoke-interface {v5, v6}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 566
    move-object v5, v0

    iget-object v5, v5, Lgnu/lists/FString;->data:[C

    move-object v3, v5

    .line 567
    .local v3, "d":[C
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 568
    move-object v5, v1

    move-object v6, v3

    move v7, v4

    aget-char v6, v6, v7

    invoke-interface {v5, v6}, Ljava/io/ObjectOutput;->writeChar(I)V

    .line 567
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 569
    :cond_0
    return-void
.end method

.method public writeTo(IILjava/lang/Appendable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    move-object v3, p3

    .local v3, "dest":Ljava/lang/Appendable;
    move-object v5, v3

    instance-of v5, v5, Ljava/io/Writer;

    if-eqz v5, :cond_0

    .line 528
    move-object v5, v3

    :try_start_0
    check-cast v5, Ljava/io/Writer;

    move-object v6, v0

    iget-object v6, v6, Lgnu/lists/FString;->data:[C

    move v7, v1

    move v8, v2

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .line 539
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 532
    .local v4, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 537
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_0
    move-object v5, v3

    move-object v6, v0

    move v7, v1

    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    invoke-interface {v5, v6, v7, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object v5

    goto :goto_0
.end method

.method public writeTo(Ljava/lang/Appendable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "this":Lgnu/lists/FString;
    move-object v1, p1

    .local v1, "dest":Ljava/lang/Appendable;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Lgnu/lists/FString;->size:I

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lgnu/lists/FString;->writeTo(IILjava/lang/Appendable;)V

    .line 544
    return-void
.end method
