.class public Landroidx/core/graphics/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/PathParser$PathDataNode;,
        Landroidx/core/graphics/PathParser$ExtractFloatResult;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PathParser"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 762
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/PathParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 763
    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/graphics/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/graphics/PathParser$PathDataNode;>;"
    move v1, p1

    .local v1, "cmd":C
    move-object v2, p2

    .local v2, "val":[F
    move-object v3, v0

    new-instance v4, Landroidx/core/graphics/PathParser$PathDataNode;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(C[F)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 190
    return-void
.end method

.method public static canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z
    .locals 6

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "nodesFrom":[Landroidx/core/graphics/PathParser$PathDataNode;
    move-object v1, p1

    .local v1, "nodesTo":[Landroidx/core/graphics/PathParser$PathDataNode;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 138
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 151
    .end local v0    # "nodesFrom":[Landroidx/core/graphics/PathParser$PathDataNode;
    :goto_0
    return v0

    .line 141
    .restart local v0    # "nodesFrom":[Landroidx/core/graphics/PathParser$PathDataNode;
    :cond_1
    move-object v3, v0

    array-length v3, v3

    move-object v4, v1

    array-length v4, v4

    if-eq v3, v4, :cond_2

    .line 142
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 145
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 146
    move-object v3, v0

    move v4, v2

    aget-object v3, v3, v4

    iget-char v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    move-object v4, v1

    move v5, v2

    aget-object v4, v4, v5

    iget-char v4, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    if-ne v3, v4, :cond_3

    move-object v3, v0

    move v4, v2

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v3, v3

    move-object v4, v1

    move v5, v2

    aget-object v4, v4, v5

    iget-object v4, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v4, v4

    if-eq v3, v4, :cond_4

    .line 148
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 145
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 151
    :cond_5
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method static copyOfRange([FII)[F
    .locals 13

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "original":[F
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move v7, v1

    move v8, v2

    if-le v7, v8, :cond_0

    .line 56
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 58
    :cond_0
    move-object v7, v0

    array-length v7, v7

    move v3, v7

    .line 59
    .local v3, "originalLength":I
    move v7, v1

    if-ltz v7, :cond_1

    move v7, v1

    move v8, v3

    if-le v7, v8, :cond_2

    .line 60
    :cond_1
    new-instance v7, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v7

    .line 62
    :cond_2
    move v7, v2

    move v8, v1

    sub-int/2addr v7, v8

    move v4, v7

    .line 63
    .local v4, "resultLength":I
    move v7, v4

    move v8, v3

    move v9, v1

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v5, v7

    .line 64
    .local v5, "copyLength":I
    move v7, v4

    new-array v7, v7, [F

    move-object v6, v7

    .line 65
    .local v6, "result":[F
    move-object v7, v0

    move v8, v1

    move-object v9, v6

    const/4 v10, 0x0

    move v11, v5

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "original":[F
    return-object v0
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .locals 10

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "pathData":Ljava/lang/String;
    move-object v6, v0

    if-nez v6, :cond_0

    .line 93
    const/4 v6, 0x0

    move-object v0, v6

    .line 113
    .end local v0    # "pathData":Ljava/lang/String;
    .local v1, "start":I
    .local v2, "end":I
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/graphics/PathParser$PathDataNode;>;"
    :goto_0
    return-object v0

    .line 95
    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/graphics/PathParser$PathDataNode;>;"
    .restart local v0    # "pathData":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    move v1, v6

    .line 96
    .restart local v1    # "start":I
    const/4 v6, 0x1

    move v2, v6

    .line 98
    .restart local v2    # "end":I
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 99
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/graphics/PathParser$PathDataNode;>;"
    :goto_1
    move v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 100
    move-object v6, v0

    move v7, v2

    invoke-static {v6, v7}, Landroidx/core/graphics/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v6

    move v2, v6

    .line 101
    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 102
    .local v4, "s":Ljava/lang/String;
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 103
    move-object v6, v4

    invoke-static {v6}, Landroidx/core/graphics/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v6

    move-object v5, v6

    .line 104
    .local v5, "val":[F
    move-object v6, v3

    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroidx/core/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 107
    .end local v5    # "val":[F
    :cond_1
    move v6, v2

    move v1, v6

    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 109
    goto :goto_1

    .line 110
    .end local v4    # "s":Ljava/lang/String;
    :cond_2
    move v6, v2

    move v7, v1

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    move v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 111
    move-object v6, v3

    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x0

    new-array v8, v8, [F

    invoke-static {v6, v7, v8}, Landroidx/core/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 113
    :cond_3
    move-object v6, v3

    move-object v7, v3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroidx/core/graphics/PathParser$PathDataNode;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/core/graphics/PathParser$PathDataNode;

    move-object v0, v6

    goto :goto_0
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 9

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "pathData":Ljava/lang/String;
    new-instance v4, Landroid/graphics/Path;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move-object v1, v4

    .line 75
    .local v1, "path":Landroid/graphics/Path;
    move-object v4, v0

    invoke-static {v4}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v4

    move-object v2, v4

    .line 76
    .local v2, "nodes":[Landroidx/core/graphics/PathParser$PathDataNode;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 78
    move-object v4, v2

    move-object v5, v1

    :try_start_0
    invoke-static {v4, v5}, Landroidx/core/graphics/PathParser$PathDataNode;->nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    move-object v4, v1

    move-object v0, v4

    .line 84
    .end local v0    # "pathData":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 79
    .restart local v0    # "pathData":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 80
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error in parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 84
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public static deepCopyNodes([Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .locals 10

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "source":[Landroidx/core/graphics/PathParser$PathDataNode;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 122
    const/4 v3, 0x0

    move-object v0, v3

    .line 128
    .end local v0    # "source":[Landroidx/core/graphics/PathParser$PathDataNode;
    .local v1, "copy":[Landroidx/core/graphics/PathParser$PathDataNode;
    .local v2, "i":I
    :goto_0
    return-object v0

    .line 124
    .end local v1    # "copy":[Landroidx/core/graphics/PathParser$PathDataNode;
    .end local v2    # "i":I
    .restart local v0    # "source":[Landroidx/core/graphics/PathParser$PathDataNode;
    :cond_0
    move-object v3, v0

    array-length v3, v3

    new-array v3, v3, [Landroidx/core/graphics/PathParser$PathDataNode;

    move-object v1, v3

    .line 125
    .restart local v1    # "copy":[Landroidx/core/graphics/PathParser$PathDataNode;
    const/4 v3, 0x0

    move v2, v3

    .restart local v2    # "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 126
    move-object v3, v1

    move v4, v2

    new-instance v5, Landroidx/core/graphics/PathParser$PathDataNode;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move v8, v2

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(Landroidx/core/graphics/PathParser$PathDataNode;)V

    aput-object v5, v3, v4

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 128
    :cond_1
    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method

.method private static extract(Ljava/lang/String;ILandroidx/core/graphics/PathParser$ExtractFloatResult;)V
    .locals 11

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "s":Ljava/lang/String;
    move v1, p1

    .local v1, "start":I
    move-object v2, p2

    .local v2, "result":Landroidx/core/graphics/PathParser$ExtractFloatResult;
    move v9, v1

    move v3, v9

    .line 258
    .local v3, "currentIndex":I
    const/4 v9, 0x0

    move v4, v9

    .line 259
    .local v4, "foundSeparator":Z
    move-object v9, v2

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    .line 260
    const/4 v9, 0x0

    move v5, v9

    .line 261
    .local v5, "secondDot":Z
    const/4 v9, 0x0

    move v6, v9

    .line 262
    .local v6, "isExponential":Z
    :goto_0
    move v9, v3

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 263
    move v9, v6

    move v7, v9

    .line 264
    .local v7, "isPrevExponential":Z
    const/4 v9, 0x0

    move v6, v9

    .line 265
    move-object v9, v0

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v8, v9

    .line 266
    .local v8, "currentChar":C
    move v9, v8

    sparse-switch v9, :sswitch_data_0

    .line 292
    :cond_0
    :goto_1
    move v9, v4

    if-eqz v9, :cond_3

    .line 293
    .line 298
    .end local v7    # "isPrevExponential":Z
    .end local v8    # "currentChar":C
    :cond_1
    move-object v9, v2

    move v10, v3

    iput v10, v9, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 299
    return-void

    .line 269
    .restart local v7    # "isPrevExponential":Z
    .restart local v8    # "currentChar":C
    :sswitch_0
    const/4 v9, 0x1

    move v4, v9

    .line 270
    goto :goto_1

    .line 273
    :sswitch_1
    move v9, v3

    move v10, v1

    if-eq v9, v10, :cond_0

    move v9, v7

    if-nez v9, :cond_0

    .line 274
    const/4 v9, 0x1

    move v4, v9

    .line 275
    move-object v9, v2

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_1

    .line 279
    :sswitch_2
    move v9, v5

    if-nez v9, :cond_2

    .line 280
    const/4 v9, 0x1

    move v5, v9

    goto :goto_1

    .line 283
    :cond_2
    const/4 v9, 0x1

    move v4, v9

    .line 284
    move-object v9, v2

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    .line 286
    goto :goto_1

    .line 289
    :sswitch_3
    const/4 v9, 0x1

    move v6, v9

    goto :goto_1

    .line 262
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 266
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x45 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .locals 13

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "s":Ljava/lang/String;
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7a

    if-eq v7, v8, :cond_0

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5a

    if-ne v7, v8, :cond_1

    .line 211
    :cond_0
    const/4 v7, 0x0

    new-array v7, v7, [F

    move-object v0, v7

    .line 241
    .end local v0    # "s":Ljava/lang/String;
    .local v1, "results":[F
    .local v2, "count":I
    .local v3, "startPosition":I
    .local v4, "endPosition":I
    .local v5, "result":Landroidx/core/graphics/PathParser$ExtractFloatResult;
    .local v6, "totalLength":I
    :goto_0
    return-object v0

    .line 214
    .end local v1    # "results":[F
    .end local v2    # "count":I
    .end local v3    # "startPosition":I
    .end local v4    # "endPosition":I
    .end local v5    # "result":Landroidx/core/graphics/PathParser$ExtractFloatResult;
    .end local v6    # "totalLength":I
    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    move-object v7, v0

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-array v7, v7, [F

    move-object v1, v7

    .line 215
    .restart local v1    # "results":[F
    const/4 v7, 0x0

    move v2, v7

    .line 216
    .restart local v2    # "count":I
    const/4 v7, 0x1

    move v3, v7

    .line 217
    .restart local v3    # "startPosition":I
    const/4 v7, 0x0

    move v4, v7

    .line 219
    .restart local v4    # "endPosition":I
    new-instance v7, Landroidx/core/graphics/PathParser$ExtractFloatResult;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroidx/core/graphics/PathParser$ExtractFloatResult;-><init>()V

    move-object v5, v7

    .line 220
    .restart local v5    # "result":Landroidx/core/graphics/PathParser$ExtractFloatResult;
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v6, v7

    .line 225
    .restart local v6    # "totalLength":I
    :goto_1
    move v7, v3

    move v8, v6

    if-ge v7, v8, :cond_4

    .line 226
    move-object v7, v0

    move v8, v3

    move-object v9, v5

    invoke-static {v7, v8, v9}, Landroidx/core/graphics/PathParser;->extract(Ljava/lang/String;ILandroidx/core/graphics/PathParser$ExtractFloatResult;)V

    .line 227
    move-object v7, v5

    iget v7, v7, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    move v4, v7

    .line 229
    move v7, v3

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 230
    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    move-object v9, v0

    move v10, v3

    move v11, v4

    .line 231
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 230
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v7, v8

    .line 234
    :cond_2
    move-object v7, v5

    iget-boolean v7, v7, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    if-eqz v7, :cond_3

    .line 236
    move v7, v4

    move v3, v7

    goto :goto_1

    .line 238
    :cond_3
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v3, v7

    goto :goto_1

    .line 241
    :cond_4
    move-object v7, v1

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v7, v8, v9}, Landroidx/core/graphics/PathParser;->copyOfRange([FII)[F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 242
    .end local v1    # "results":[F
    .end local v2    # "count":I
    .end local v3    # "startPosition":I
    .end local v4    # "endPosition":I
    .end local v5    # "result":Landroidx/core/graphics/PathParser$ExtractFloatResult;
    .end local v6    # "totalLength":I
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 243
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "error in parsing \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .locals 6

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "s":Ljava/lang/String;
    move v1, p1

    .local v1, "end":I
    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 174
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    .line 179
    .local v2, "c":C
    move v3, v2

    const/16 v4, 0x41

    add-int/lit8 v3, v3, -0x41

    move v4, v2

    const/16 v5, 0x5a

    add-int/lit8 v4, v4, -0x5a

    mul-int/2addr v3, v4

    if-lez v3, :cond_0

    move v3, v2

    const/16 v4, 0x61

    add-int/lit8 v3, v3, -0x61

    move v4, v2

    const/16 v5, 0x7a

    add-int/lit8 v4, v4, -0x7a

    mul-int/2addr v3, v4

    if-gtz v3, :cond_1

    :cond_0
    move v3, v2

    const/16 v4, 0x65

    if-eq v3, v4, :cond_1

    move v3, v2

    const/16 v4, 0x45

    if-eq v3, v4, :cond_1

    .line 181
    move v3, v1

    move v0, v3

    .line 185
    .end local v0    # "s":Ljava/lang/String;
    .end local v2    # "c":C
    :goto_1
    return v0

    .line 183
    .restart local v0    # "s":Ljava/lang/String;
    .restart local v2    # "c":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v2    # "c":C
    :cond_2
    move v3, v1

    move v0, v3

    goto :goto_1
.end method

.method public static updateNodes([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)V
    .locals 8

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "target":[Landroidx/core/graphics/PathParser$PathDataNode;
    move-object v1, p1

    .local v1, "source":[Landroidx/core/graphics/PathParser$PathDataNode;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 163
    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    iget-char v5, v5, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v5, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 164
    const/4 v4, 0x0

    move v3, v4

    .local v3, "j":I
    :goto_1
    move v4, v3

    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    iget-object v5, v5, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 165
    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    iget-object v4, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    move v5, v3

    move-object v6, v1

    move v7, v2

    aget-object v6, v6, v7

    iget-object v6, v6, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    move v7, v3

    aget v6, v6, v7

    aput v6, v4, v5

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 162
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v3    # "j":I
    :cond_1
    return-void
.end method
