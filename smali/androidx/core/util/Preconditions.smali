.class public Landroidx/core/util/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/Preconditions;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 467
    return-void
.end method

.method public static checkArgument(Z)V
    .locals 4

    .prologue
    .line 37
    move v0, p0

    .local v0, "expression":Z
    move v1, v0

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 40
    :cond_0
    return-void
.end method

.method public static checkArgument(ZLjava/lang/Object;)V
    .locals 6

    .prologue
    .line 51
    move v0, p0

    .local v0, "expression":Z
    move-object v1, p1

    .local v1, "errorMessage":Ljava/lang/Object;
    move v2, v0

    if-nez v2, :cond_0

    .line 52
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    return-void
.end method

.method public static checkArgumentFinite(FLjava/lang/String;)F
    .locals 7

    .prologue
    .line 256
    move v0, p0

    .local v0, "value":F
    move-object v1, p1

    .local v1, "valueName":Ljava/lang/String;
    move v2, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " must not be NaN"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    :cond_0
    move v2, v0

    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " must not be infinite"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    :cond_1
    move v2, v0

    move v0, v2

    .end local v0    # "value":F
    return v0
.end method

.method public static checkArgumentInRange(FFFLjava/lang/String;)F
    .locals 13

    .prologue
    .line 282
    move v0, p0

    .local v0, "value":F
    move v1, p1

    .local v1, "lower":F
    move v2, p2

    .local v2, "upper":F
    move-object/from16 v3, p3

    .local v3, "valueName":Ljava/lang/String;
    move v4, v0

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 283
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " must not be NaN"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_0
    move v4, v0

    move v5, v1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 285
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "%s is out of range of [%f, %f] (too low)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move v11, v1

    .line 287
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    move v11, v2

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    .line 286
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 288
    :cond_1
    move v4, v0

    move v5, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 289
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "%s is out of range of [%f, %f] (too high)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move v11, v1

    .line 291
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    move v11, v2

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    .line 290
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 294
    :cond_2
    move v4, v0

    move v0, v4

    .end local v0    # "value":F
    return v0
.end method

.method public static checkArgumentInRange(IIILjava/lang/String;)I
    .locals 13

    .prologue
    .line 311
    move v0, p0

    .local v0, "value":I
    move v1, p1

    .local v1, "lower":I
    move v2, p2

    .local v2, "upper":I
    move-object/from16 v3, p3

    .local v3, "valueName":Ljava/lang/String;
    move v4, v0

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 312
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "%s is out of range of [%d, %d] (too low)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move v11, v1

    .line 314
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    move v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 313
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 315
    :cond_0
    move v4, v0

    move v5, v2

    if-le v4, v5, :cond_1

    .line 316
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "%s is out of range of [%d, %d] (too high)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move v11, v1

    .line 318
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    move v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 317
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 321
    :cond_1
    move v4, v0

    move v0, v4

    .end local v0    # "value":I
    return v0
.end method

.method public static checkArgumentInRange(JJJLjava/lang/String;)J
    .locals 18

    .prologue
    .line 338
    move-wide/from16 v0, p0

    .local v0, "value":J
    move-wide/from16 v2, p2

    .local v2, "lower":J
    move-wide/from16 v4, p4

    .local v4, "upper":J
    move-object/from16 v6, p6

    .local v6, "valueName":Ljava/lang/String;
    move-wide v7, v0

    move-wide v9, v2

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 339
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v10, "%s is out of range of [%d, %d] (too low)"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v6

    aput-object v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x1

    move-wide v14, v2

    .line 341
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x2

    move-wide v14, v4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    .line 340
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 342
    :cond_0
    move-wide v7, v0

    move-wide v9, v4

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 343
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v10, "%s is out of range of [%d, %d] (too high)"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v6

    aput-object v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x1

    move-wide v14, v2

    .line 345
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x2

    move-wide v14, v4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    .line 344
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 348
    :cond_1
    move-wide v7, v0

    move-wide v0, v7

    .end local v0    # "value":J
    return-wide v0
.end method

.method public static checkArgumentNonnegative(I)I
    .locals 4
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .prologue
    .line 188
    move v0, p0

    .local v0, "value":I
    move v1, v0

    if-gez v1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 192
    :cond_0
    move v1, v0

    move v0, v1

    .end local v0    # "value":I
    return v0
.end method

.method public static checkArgumentNonnegative(ILjava/lang/String;)I
    .locals 6
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .prologue
    .line 172
    move v0, p0

    .local v0, "value":I
    move-object v1, p1

    .local v1, "errorMessage":Ljava/lang/String;
    move v2, v0

    if-gez v2, :cond_0

    .line 173
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_0
    move v2, v0

    move v0, v2

    .end local v0    # "value":I
    return v0
.end method

.method public static checkArgumentNonnegative(J)J
    .locals 8

    .prologue
    .line 203
    move-wide v0, p0

    .local v0, "value":J
    move-wide v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 204
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 207
    :cond_0
    move-wide v2, v0

    move-wide v0, v2

    .end local v0    # "value":J
    return-wide v0
.end method

.method public static checkArgumentNonnegative(JLjava/lang/String;)J
    .locals 10

    .prologue
    .line 219
    move-wide v1, p0

    .local v1, "value":J
    move-object v3, p2

    .local v3, "errorMessage":Ljava/lang/String;
    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 220
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 223
    :cond_0
    move-wide v4, v1

    move-wide v1, v4

    .end local v1    # "value":J
    return-wide v1
.end method

.method public static checkArgumentPositive(ILjava/lang/String;)I
    .locals 6

    .prologue
    .line 235
    move v0, p0

    .local v0, "value":I
    move-object v1, p1

    .local v1, "errorMessage":Ljava/lang/String;
    move v2, v0

    if-gtz v2, :cond_0

    .line 236
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :cond_0
    move v2, v0

    move v0, v2

    .end local v0    # "value":I
    return v0
.end method

.method public static checkArrayElementsInRange([FFFLjava/lang/String;)[F
    .locals 15

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "value":[F
    move/from16 v1, p1

    .local v1, "lower":F
    move/from16 v2, p2

    .local v2, "upper":F
    move-object/from16 v3, p3

    .local v3, "valueName":Ljava/lang/String;
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " must not be null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 447
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v0

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 448
    move-object v6, v0

    move v7, v4

    aget v6, v6, v7

    move v5, v6

    .line 450
    .local v5, "v":F
    move v6, v5

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 451
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] must not be NaN"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 452
    :cond_0
    move v6, v5

    move v7, v1

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 453
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "%s[%d] is out of range of [%f, %f] (too low)"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v3

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move v13, v4

    .line 455
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move v13, v1

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    move v13, v2

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    .line 454
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 456
    :cond_1
    move v6, v5

    move v7, v2

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 457
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "%s[%d] is out of range of [%f, %f] (too high)"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v3

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move v13, v4

    .line 459
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move v13, v1

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    move v13, v2

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    .line 458
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 447
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 463
    .end local v5    # "v":F
    :cond_3
    move-object v6, v0

    move-object v0, v6

    .end local v0    # "value":[F
    return-object v0
.end method

.method public static checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "value":[Ljava/lang/Object;, "[TT;"
    move-object v1, p1

    .local v1, "valueName":Ljava/lang/String;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 363
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " must not be null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 366
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 367
    move-object v3, v0

    move v4, v2

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    .line 368
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%s[%d] must not be null"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move v10, v2

    .line 369
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 366
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    :cond_2
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "value":[Ljava/lang/Object;, "[TT;"
    return-object v0
.end method

.method public static checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    .locals 16
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection",
            "<TT;>;T:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .prologue
    .line 389
    move-object/from16 v0, p0

    .local v0, "value":Ljava/util/Collection;, "TC;"
    move-object/from16 v1, p1

    .local v1, "valueName":Ljava/lang/String;
    move-object v6, v0

    if-nez v6, :cond_0

    .line 390
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " must not be null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 393
    :cond_0
    const-wide/16 v6, 0x0

    move-wide v2, v6

    .line 394
    .local v2, "ctr":J
    move-object v6, v0

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 395
    .local v5, "elem":Ljava/lang/Object;, "TT;"
    move-object v6, v5

    if-nez v6, :cond_1

    .line 396
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "%s[%d] must not be null"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x1

    move-wide v13, v2

    .line 397
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 399
    :cond_1
    move-wide v6, v2

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 400
    goto :goto_0

    .line 402
    .end local v5    # "elem":Ljava/lang/Object;, "TT;"
    :cond_2
    move-object v6, v0

    move-object v0, v6

    .end local v0    # "value":Ljava/util/Collection;, "TC;"
    return-object v0
.end method

.method public static checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "value":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    move-object v1, p1

    .local v1, "valueName":Ljava/lang/String;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 419
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " must not be null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 421
    :cond_0
    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 424
    :cond_1
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "value":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    return-object v0
.end method

.method public static checkFlagsArgument(II)I
    .locals 7

    .prologue
    .line 153
    move v0, p0

    .local v0, "requestedFlags":I
    move v1, p1

    .local v1, "allowedFlags":I
    move v2, v0

    move v3, v1

    and-int/2addr v2, v3

    move v3, v0

    if-eq v2, v3, :cond_0

    .line 154
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Requested flags 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v0

    .line 155
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", but only 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    .line 156
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " are allowed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_0
    move v2, v0

    move v0, v2

    .end local v0    # "requestedFlags":I
    return v0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "reference":Ljava/lang/Object;, "TT;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 101
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "reference":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "reference":Ljava/lang/Object;, "TT;"
    move-object v1, p1

    .local v1, "errorMessage":Ljava/lang/Object;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 116
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "reference":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public static checkState(Z)V
    .locals 3

    .prologue
    .line 143
    move v0, p0

    .local v0, "expression":Z
    move v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 144
    return-void
.end method

.method public static checkState(ZLjava/lang/String;)V
    .locals 6

    .prologue
    .line 130
    move v0, p0

    .local v0, "expression":Z
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move v2, v0

    if-nez v2, :cond_0

    .line 131
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_0
    return-void
.end method

.method public static checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "string":Ljava/lang/CharSequence;, "TT;"
    move-object v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 68
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "string":Ljava/lang/CharSequence;, "TT;"
    return-object v0
.end method

.method public static checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "string":Ljava/lang/CharSequence;, "TT;"
    move-object v1, p1

    .local v1, "errorMessage":Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "string":Ljava/lang/CharSequence;, "TT;"
    return-object v0
.end method
