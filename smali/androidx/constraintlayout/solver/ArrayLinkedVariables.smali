.class public Landroidx/constraintlayout/solver/ArrayLinkedVariables;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FULL_NEW_CHECK:Z = false

.field private static final NONE:I = -0x1


# instance fields
.field private ROW_SIZE:I

.field private candidate:Landroidx/constraintlayout/solver/SolverVariable;

.field currentSize:I

.field private mArrayIndices:[I

.field private mArrayNextIndices:[I

.field private mArrayValues:[F

.field private final mCache:Landroidx/constraintlayout/solver/Cache;

.field private mDidFillOnce:Z

.field private mHead:I

.field private mLast:I

.field private final mRow:Landroidx/constraintlayout/solver/ArrayRow;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/Cache;)V
    .locals 5

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object v1, p1

    .local v1, "arrayRow":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v2, p2

    .local v2, "cache":Landroidx/constraintlayout/solver/Cache;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 48
    move-object v3, v0

    const/16 v4, 0x8

    iput v4, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 50
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    .line 53
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 56
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 59
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v4, v4, [F

    iput-object v4, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 62
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 78
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 81
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 101
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    .line 102
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 108
    return-void
.end method

.method private isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z
    .locals 5

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object v1, p1

    .local v1, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, p2

    .local v2, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method final add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V
    .locals 15

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object/from16 v1, p1

    .local v1, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v2, p2

    .local v2, "value":F
    move/from16 v3, p3

    .local v3, "removeFromDefinition":Z
    move v9, v2

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_0

    .line 226
    .line 335
    :goto_0
    return-void

    .line 229
    :cond_0
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 230
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 231
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v11, v2

    aput v11, v9, v10

    .line 232
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move-object v11, v1

    iget v11, v11, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v11, v9, v10

    .line 233
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v11, -0x1

    aput v11, v9, v10

    .line 234
    move-object v9, v1

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 235
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 236
    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 237
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v9, :cond_1

    .line 239
    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 240
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v10, v10

    if-lt v9, v10, :cond_1

    .line 241
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 242
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 245
    :cond_1
    goto :goto_0

    .line 247
    :cond_2
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v4, v9

    .line 248
    .local v4, "current":I
    const/4 v9, -0x1

    move v5, v9

    .line 249
    .local v5, "previous":I
    const/4 v9, 0x0

    move v6, v9

    .line 250
    .local v6, "counter":I
    :goto_1
    move v9, v4

    const/4 v10, -0x1

    if-eq v9, v10, :cond_9

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v9, v10, :cond_9

    .line 251
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v10, v4

    aget v9, v9, v10

    move v7, v9

    .line 252
    .local v7, "idx":I
    move v9, v7

    move-object v10, v1

    iget v10, v10, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v9, v10, :cond_7

    .line 253
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v10, v4

    move-object v13, v9

    move v14, v10

    move-object v9, v13

    move v10, v14

    move-object v11, v13

    move v12, v14

    aget v11, v11, v12

    move v12, v2

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 255
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v10, v4

    aget v9, v9, v10

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_5

    .line 256
    move v9, v4

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    if-ne v9, v10, :cond_6

    .line 257
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v11, v4

    aget v10, v10, v11

    iput v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 261
    :goto_2
    move v9, v3

    if-eqz v9, :cond_3

    .line 262
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 264
    :cond_3
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v9, :cond_4

    .line 266
    move-object v9, v0

    move v10, v4

    iput v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 268
    :cond_4
    move-object v9, v1

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 269
    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 271
    :cond_5
    goto/16 :goto_0

    .line 259
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v10, v5

    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v12, v4

    aget v11, v11, v12

    aput v11, v9, v10

    goto :goto_2

    .line 273
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v10, v4

    aget v9, v9, v10

    move-object v10, v1

    iget v10, v10, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ge v9, v10, :cond_8

    .line 274
    move v9, v4

    move v5, v9

    .line 276
    :cond_8
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v10, v4

    aget v9, v9, v10

    move v4, v9

    add-int/lit8 v6, v6, 0x1

    .line 277
    goto/16 :goto_1

    .line 282
    .end local v7    # "idx":I
    :cond_9
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v9

    .line 283
    .local v7, "availableIndice":I
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v9, :cond_a

    .line 286
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    aget v9, v9, v10

    const/4 v10, -0x1

    if-ne v9, v10, :cond_f

    .line 287
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    move v7, v9

    .line 292
    :cond_a
    :goto_3
    move v9, v7

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v10, v10

    if-lt v9, v10, :cond_b

    .line 293
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v10, v10

    if-ge v9, v10, :cond_b

    .line 295
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_4
    move v9, v8

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v10, v10

    if-ge v9, v10, :cond_b

    .line 296
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v10, v8

    aget v9, v9, v10

    const/4 v10, -0x1

    if-ne v9, v10, :cond_10

    .line 297
    move v9, v8

    move v7, v9

    .line 304
    .end local v8    # "i":I
    :cond_b
    move v9, v7

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v10, v10

    if-lt v9, v10, :cond_c

    .line 305
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    move v7, v9

    .line 306
    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 307
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 308
    move-object v9, v0

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 309
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move-object v11, v0

    iget v11, v11, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v10

    iput-object v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 310
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v11, v0

    iget v11, v11, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    iput-object v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 311
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move-object v11, v0

    iget v11, v11, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    iput-object v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 315
    :cond_c
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v10, v7

    move-object v11, v1

    iget v11, v11, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v11, v9, v10

    .line 316
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v10, v7

    move v11, v2

    aput v11, v9, v10

    .line 317
    move v9, v5

    const/4 v10, -0x1

    if-eq v9, v10, :cond_11

    .line 318
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v10, v7

    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v12, v5

    aget v11, v11, v12

    aput v11, v9, v10

    .line 319
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v10, v5

    move v11, v7

    aput v11, v9, v10

    .line 324
    :goto_5
    move-object v9, v1

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 325
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 326
    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 327
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v9, :cond_d

    .line 329
    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 331
    :cond_d
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v10, v10

    if-lt v9, v10, :cond_e

    .line 332
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 333
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 335
    :cond_e
    goto/16 :goto_0

    .line 289
    :cond_f
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    move v7, v9

    goto/16 :goto_3

    .line 295
    .restart local v8    # "i":I
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 321
    .end local v8    # "i":I
    :cond_11
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v10, v7

    move-object v11, v0

    iget v11, v11, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v11, v9, v10

    .line 322
    move-object v9, v0

    move v10, v7

    iput v10, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_5
.end method

.method chooseSubject(Landroidx/constraintlayout/solver/LinearSystem;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 17

    .prologue
    .line 506
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object/from16 v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    const/4 v14, 0x0

    move-object v2, v14

    .line 507
    .local v2, "restrictedCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v14, 0x0

    move-object v3, v14

    .line 508
    .local v3, "unrestrictedCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v14, 0x0

    move v4, v14

    .line 509
    .local v4, "unrestrictedCandidateAmount":F
    const/4 v14, 0x0

    move v5, v14

    .line 510
    .local v5, "restrictedCandidateAmount":F
    const/4 v14, 0x0

    move v6, v14

    .line 511
    .local v6, "unrestrictedCandidateIsNew":Z
    const/4 v14, 0x0

    move v7, v14

    .line 512
    .local v7, "restrictedCandidateIsNew":Z
    move-object v14, v0

    iget v14, v14, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v8, v14

    .line 513
    .local v8, "current":I
    const/4 v14, 0x0

    move v9, v14

    .line 514
    .local v9, "counter":I
    const/4 v14, 0x0

    move v10, v14

    .line 515
    .local v10, "candidateAmount":F
    :goto_0
    move v14, v8

    const/4 v15, -0x1

    if-eq v14, v15, :cond_8

    move v14, v9

    move-object v15, v0

    iget v15, v15, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v14, v15, :cond_8

    .line 516
    move-object v14, v0

    iget-object v14, v14, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v15, v8

    aget v14, v14, v15

    move v11, v14

    .line 517
    .local v11, "amount":F
    const v14, 0x3a83126f    # 0.001f

    move v12, v14

    .line 518
    .local v12, "epsilon":F
    move-object v14, v0

    iget-object v14, v14, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v14, v14, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v15, v0

    iget-object v15, v15, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move/from16 v16, v8

    aget v15, v15, v16

    aget-object v14, v14, v15

    move-object v13, v14

    .line 519
    .local v13, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move v14, v11

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_2

    .line 520
    move v14, v11

    move v15, v12

    neg-float v15, v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_0

    .line 521
    move-object v14, v0

    iget-object v14, v14, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v15, v8

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 522
    const/4 v14, 0x0

    move v11, v14

    .line 523
    move-object v14, v13

    move-object v15, v0

    iget-object v15, v15, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 532
    :cond_0
    :goto_1
    move v14, v11

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_1

    .line 533
    move-object v14, v13

    iget-object v14, v14, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v15, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v14, v15, :cond_5

    .line 534
    move-object v14, v3

    if-nez v14, :cond_3

    .line 535
    move-object v14, v13

    move-object v3, v14

    .line 536
    move v14, v11

    move v4, v14

    .line 537
    move-object v14, v0

    move-object v15, v13

    move-object/from16 v16, v1

    invoke-direct/range {v14 .. v16}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v14

    move v6, v14

    .line 565
    :cond_1
    :goto_2
    move-object v14, v0

    iget-object v14, v14, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v15, v8

    aget v14, v14, v15

    move v8, v14

    add-int/lit8 v9, v9, 0x1

    .line 566
    goto :goto_0

    .line 526
    :cond_2
    move v14, v11

    move v15, v12

    cmpg-float v14, v14, v15

    if-gez v14, :cond_0

    .line 527
    move-object v14, v0

    iget-object v14, v14, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v15, v8

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 528
    const/4 v14, 0x0

    move v11, v14

    .line 529
    move-object v14, v13

    move-object v15, v0

    iget-object v15, v15, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_1

    .line 538
    :cond_3
    move v14, v4

    move v15, v11

    cmpl-float v14, v14, v15

    if-lez v14, :cond_4

    .line 539
    move-object v14, v13

    move-object v3, v14

    .line 540
    move v14, v11

    move v4, v14

    .line 541
    move-object v14, v0

    move-object v15, v13

    move-object/from16 v16, v1

    invoke-direct/range {v14 .. v16}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v14

    move v6, v14

    goto :goto_2

    .line 542
    :cond_4
    move v14, v6

    if-nez v14, :cond_1

    move-object v14, v0

    move-object v15, v13

    move-object/from16 v16, v1

    invoke-direct/range {v14 .. v16}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 543
    move-object v14, v13

    move-object v3, v14

    .line 544
    move v14, v11

    move v4, v14

    .line 545
    const/4 v14, 0x1

    move v6, v14

    goto :goto_2

    .line 547
    :cond_5
    move-object v14, v3

    if-nez v14, :cond_1

    .line 548
    move v14, v11

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1

    .line 549
    move-object v14, v2

    if-nez v14, :cond_6

    .line 550
    move-object v14, v13

    move-object v2, v14

    .line 551
    move v14, v11

    move v5, v14

    .line 552
    move-object v14, v0

    move-object v15, v13

    move-object/from16 v16, v1

    invoke-direct/range {v14 .. v16}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v14

    move v7, v14

    goto :goto_2

    .line 553
    :cond_6
    move v14, v5

    move v15, v11

    cmpl-float v14, v14, v15

    if-lez v14, :cond_7

    .line 554
    move-object v14, v13

    move-object v2, v14

    .line 555
    move v14, v11

    move v5, v14

    .line 556
    move-object v14, v0

    move-object v15, v13

    move-object/from16 v16, v1

    invoke-direct/range {v14 .. v16}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v14

    move v7, v14

    goto :goto_2

    .line 557
    :cond_7
    move v14, v7

    if-nez v14, :cond_1

    move-object v14, v0

    move-object v15, v13

    move-object/from16 v16, v1

    invoke-direct/range {v14 .. v16}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 558
    move-object v14, v13

    move-object v2, v14

    .line 559
    move v14, v11

    move v5, v14

    .line 560
    const/4 v14, 0x1

    move v7, v14

    goto/16 :goto_2

    .line 567
    .end local v11    # "amount":F
    .end local v12    # "epsilon":F
    .end local v13    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_8
    move-object v14, v3

    if-eqz v14, :cond_9

    .line 568
    move-object v14, v3

    move-object v0, v14

    .line 570
    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    :goto_3
    return-object v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    :cond_9
    move-object v14, v2

    move-object v0, v14

    goto :goto_3
.end method

.method public final clear()V
    .locals 7

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v1, v4

    .line 386
    .local v1, "current":I
    const/4 v4, 0x0

    move v2, v4

    .line 387
    .local v2, "counter":I
    :goto_0
    move v4, v1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_1

    .line 388
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v6, v1

    aget v5, v5, v6

    aget-object v4, v4, v5

    move-object v3, v4

    .line 389
    .local v3, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 390
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 392
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v1

    aget v4, v4, v5

    move v1, v4

    add-int/lit8 v2, v2, 0x1

    .line 393
    goto :goto_0

    .line 395
    .end local v3    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 396
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 397
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 398
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 399
    return-void
.end method

.method final containsKey(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .locals 6

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object v1, p1

    .local v1, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 409
    const/4 v4, 0x0

    move v0, v4

    .line 419
    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    :goto_0
    return v0

    .line 411
    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    :cond_0
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 412
    .local v2, "current":I
    const/4 v4, 0x0

    move v3, v4

    .line 413
    .local v3, "counter":I
    :goto_1
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_2

    .line 414
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v5, v2

    aget v4, v4, v5

    move-object v5, v1

    iget v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v4, v5, :cond_1

    .line 415
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 417
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 419
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public display()V
    .locals 9

    .prologue
    .line 779
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    move v1, v4

    .line 780
    .local v1, "count":I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "{ "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 781
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 782
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    move-object v3, v4

    .line 783
    .local v3, "v":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 784
    .line 781
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 786
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 788
    .end local v3    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, " }"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 789
    return-void
.end method

.method divideByAmount(F)V
    .locals 10

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move v1, p1

    .local v1, "amount":F
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 459
    .local v2, "current":I
    const/4 v4, 0x0

    move v3, v4

    .line 460
    .local v3, "counter":I
    :goto_0
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_0

    .line 461
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v5, v2

    move-object v8, v4

    move v9, v5

    move-object v4, v8

    move v5, v9

    move-object v6, v8

    move v7, v9

    aget v6, v6, v7

    move v7, v1

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 462
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 464
    :cond_0
    return-void
.end method

.method public final get(Landroidx/constraintlayout/solver/SolverVariable;)F
    .locals 6

    .prologue
    .line 759
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object v1, p1

    .local v1, "v":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 760
    .local v2, "current":I
    const/4 v4, 0x0

    move v3, v4

    .line 761
    .local v3, "counter":I
    :goto_0
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_1

    .line 762
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v5, v2

    aget v4, v4, v5

    move-object v5, v1

    iget v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v4, v5, :cond_0

    .line 763
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v5, v2

    aget v4, v4, v5

    move v0, v4

    .line 767
    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    :goto_1
    return v0

    .line 765
    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 767
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method getPivotCandidate()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 8

    .prologue
    .line 668
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v5, :cond_3

    .line 670
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v1, v5

    .line 671
    .local v1, "current":I
    const/4 v5, 0x0

    move v2, v5

    .line 672
    .local v2, "counter":I
    const/4 v5, 0x0

    move-object v3, v5

    .line 673
    .local v3, "pivot":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_0
    move v5, v1

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v5, v6, :cond_2

    .line 674
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v6, v1

    aget v5, v5, v6

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 678
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v5, v5, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v7, v1

    aget v6, v6, v7

    aget-object v5, v5, v6

    move-object v4, v5

    .line 679
    .local v4, "v":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    move-object v6, v4

    iget v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    if-ge v5, v6, :cond_1

    .line 680
    :cond_0
    move-object v5, v4

    move-object v3, v5

    .line 683
    .end local v4    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v6, v1

    aget v5, v5, v6

    move v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 685
    :cond_2
    move-object v5, v3

    move-object v0, v5

    .line 687
    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    .end local v1    # "current":I
    .end local v2    # "counter":I
    .end local v3    # "pivot":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_1
    return-object v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v0, v5

    goto :goto_1
.end method

.method getPivotCandidate([ZLandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 12

    .prologue
    .line 691
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object v1, p1

    .local v1, "avoid":[Z
    move-object v2, p2

    .local v2, "exclude":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v3, v9

    .line 692
    .local v3, "current":I
    const/4 v9, 0x0

    move v4, v9

    .line 693
    .local v4, "counter":I
    const/4 v9, 0x0

    move-object v5, v9

    .line 694
    .local v5, "pivot":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v9, 0x0

    move v6, v9

    .line 695
    .local v6, "value":F
    :goto_0
    move v9, v3

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    move v9, v4

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v9, v10, :cond_3

    .line 696
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v10, v3

    aget v9, v9, v10

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 700
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v9, v9, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v11, v3

    aget v10, v10, v11

    aget-object v9, v9, v10

    move-object v7, v9

    .line 701
    .local v7, "v":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v9, v1

    if-eqz v9, :cond_0

    move-object v9, v1

    move-object v10, v7

    iget v10, v10, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v9, v9, v10

    if-nez v9, :cond_2

    :cond_0
    move-object v9, v7

    move-object v10, v2

    if-eq v9, v10, :cond_2

    .line 702
    move-object v9, v7

    iget-object v9, v9, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v10, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-eq v9, v10, :cond_1

    move-object v9, v7

    iget-object v9, v9, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v10, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v9, v10, :cond_2

    .line 704
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v10, v3

    aget v9, v9, v10

    move v8, v9

    .line 705
    .local v8, "currentValue":F
    move v9, v8

    move v10, v6

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 706
    move v9, v8

    move v6, v9

    .line 707
    move-object v9, v7

    move-object v5, v9

    .line 712
    .end local v7    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v8    # "currentValue":F
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v10, v3

    aget v9, v9, v10

    move v3, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 714
    :cond_3
    move-object v9, v5

    move-object v0, v9

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    return-object v0
.end method

.method final getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 7

    .prologue
    .line 724
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move v1, p1

    .local v1, "index":I
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 725
    .local v2, "current":I
    const/4 v4, 0x0

    move v3, v4

    .line 726
    .local v3, "counter":I
    :goto_0
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_1

    .line 727
    move v4, v3

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 728
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v6, v2

    aget v5, v5, v6

    aget-object v4, v4, v5

    move-object v0, v4

    .line 732
    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    :goto_1
    return-object v0

    .line 730
    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 732
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method final getVariableValue(I)F
    .locals 6

    .prologue
    .line 742
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move v1, p1

    .local v1, "index":I
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 743
    .local v2, "current":I
    const/4 v4, 0x0

    move v3, v4

    .line 744
    .local v3, "counter":I
    :goto_0
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_1

    .line 745
    move v4, v3

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 746
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v5, v2

    aget v4, v4, v5

    move v0, v4

    .line 750
    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    :goto_1
    return v0

    .line 748
    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 750
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method hasAtLeastOnePositiveVariable()Z
    .locals 5

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v1, v3

    .line 429
    .local v1, "current":I
    const/4 v3, 0x0

    move v2, v3

    .line 430
    .local v2, "counter":I
    :goto_0
    move v3, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v4, :cond_1

    .line 431
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v4, v1

    aget v3, v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 432
    const/4 v3, 0x1

    move v0, v3

    .line 436
    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    :goto_1
    return v0

    .line 434
    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v4, v1

    aget v3, v3, v4

    move v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method invert()V
    .locals 9

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v1, v3

    .line 444
    .local v1, "current":I
    const/4 v3, 0x0

    move v2, v3

    .line 445
    .local v2, "counter":I
    :goto_0
    move v3, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v4, :cond_0

    .line 446
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v4, v1

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget v5, v5, v6

    const/high16 v6, -0x40800000    # -1.0f

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 447
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v4, v1

    aget v3, v3, v4

    move v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 449
    :cond_0
    return-void
.end method

.method public final put(Landroidx/constraintlayout/solver/SolverVariable;F)V
    .locals 13

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object v1, p1

    .local v1, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move v2, p2

    .local v2, "value":F
    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    .line 118
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    move-result v8

    .line 119
    .line 213
    :goto_0
    return-void

    .line 122
    :cond_0
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 123
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 124
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v10, v2

    aput v10, v8, v9

    .line 125
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move-object v10, v1

    iget v10, v10, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v10, v8, v9

    .line 126
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v10, -0x1

    aput v10, v8, v9

    .line 127
    move-object v8, v1

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 128
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 129
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 130
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v8, :cond_1

    .line 132
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 133
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-lt v8, v9, :cond_1

    .line 134
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 135
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 138
    :cond_1
    goto :goto_0

    .line 140
    :cond_2
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v3, v8

    .line 141
    .local v3, "current":I
    const/4 v8, -0x1

    move v4, v8

    .line 142
    .local v4, "previous":I
    const/4 v8, 0x0

    move v5, v8

    .line 143
    .local v5, "counter":I
    :goto_1
    move v8, v3

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v8, v9, :cond_5

    .line 144
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v9, v3

    aget v8, v8, v9

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v8, v9, :cond_3

    .line 145
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v9, v3

    move v10, v2

    aput v10, v8, v9

    .line 146
    goto/16 :goto_0

    .line 148
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v9, v3

    aget v8, v8, v9

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ge v8, v9, :cond_4

    .line 149
    move v8, v3

    move v4, v8

    .line 151
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v3

    aget v8, v8, v9

    move v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 157
    :cond_5
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v6, v8

    .line 158
    .local v6, "availableIndice":I
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v8, :cond_6

    .line 161
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    aget v8, v8, v9

    const/4 v9, -0x1

    if-ne v8, v9, :cond_c

    .line 162
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    move v6, v8

    .line 167
    :cond_6
    :goto_2
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-lt v8, v9, :cond_7

    .line 168
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-ge v8, v9, :cond_7

    .line 170
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_3
    move v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-ge v8, v9, :cond_7

    .line 171
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v9, v7

    aget v8, v8, v9

    const/4 v9, -0x1

    if-ne v8, v9, :cond_d

    .line 172
    move v8, v7

    move v6, v8

    .line 179
    .end local v7    # "i":I
    :cond_7
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-lt v8, v9, :cond_8

    .line 180
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v8

    move v6, v8

    .line 181
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    const/4 v10, 0x2

    mul-int/lit8 v9, v9, 0x2

    iput v9, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 182
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 183
    move-object v8, v0

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 184
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v9

    iput-object v9, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 185
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    iput-object v9, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 186
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    iput-object v9, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 190
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v9, v6

    move-object v10, v1

    iget v10, v10, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v10, v8, v9

    .line 191
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v9, v6

    move v10, v2

    aput v10, v8, v9

    .line 192
    move v8, v4

    const/4 v9, -0x1

    if-eq v8, v9, :cond_e

    .line 193
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v11, v4

    aget v10, v10, v11

    aput v10, v8, v9

    .line 194
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v4

    move v10, v6

    aput v10, v8, v9

    .line 199
    :goto_4
    move-object v8, v1

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 200
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 201
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 202
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v8, :cond_9

    .line 204
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 206
    :cond_9
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-lt v8, v9, :cond_a

    .line 207
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 209
    :cond_a
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-lt v8, v9, :cond_b

    .line 210
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 211
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 213
    :cond_b
    goto/16 :goto_0

    .line 164
    :cond_c
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v8

    move v6, v8

    goto/16 :goto_2

    .line 170
    .restart local v7    # "i":I
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 196
    .end local v7    # "i":I
    :cond_e
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v10, v8, v9

    .line 197
    move-object v8, v0

    move v9, v6

    iput v9, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_4
.end method

.method public final remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F
    .locals 12

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object v1, p1

    .local v1, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move v2, p2

    .local v2, "removeFromDefinition":Z
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v8, v1

    if-ne v7, v8, :cond_0

    .line 346
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    .line 348
    :cond_0
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 349
    const/4 v7, 0x0

    move v0, v7

    .line 378
    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    :goto_0
    return v0

    .line 351
    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v3, v7

    .line 352
    .local v3, "current":I
    const/4 v7, -0x1

    move v4, v7

    .line 353
    .local v4, "previous":I
    const/4 v7, 0x0

    move v5, v7

    .line 354
    .local v5, "counter":I
    :goto_1
    move v7, v3

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v7, v8, :cond_6

    .line 355
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v8, v3

    aget v7, v7, v8

    move v6, v7

    .line 356
    .local v6, "idx":I
    move v7, v6

    move-object v8, v1

    iget v8, v8, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v7, v8, :cond_5

    .line 357
    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    if-ne v7, v8, :cond_4

    .line 358
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v3

    aget v8, v8, v9

    iput v8, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 363
    :goto_2
    move v7, v2

    if-eqz v7, :cond_2

    .line 364
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 366
    :cond_2
    move-object v7, v1

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 367
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 368
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v8, v3

    const/4 v9, -0x1

    aput v9, v7, v8

    .line 369
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v7, :cond_3

    .line 371
    move-object v7, v0

    move v8, v3

    iput v8, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 373
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v8, v3

    aget v7, v7, v8

    move v0, v7

    goto :goto_0

    .line 360
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v10, v3

    aget v9, v9, v10

    aput v9, v7, v8

    goto :goto_2

    .line 375
    :cond_5
    move v7, v3

    move v4, v7

    .line 376
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v8, v3

    aget v7, v7, v8

    move v3, v7

    add-int/lit8 v5, v5, 0x1

    .line 377
    goto :goto_1

    .line 378
    .end local v6    # "idx":I
    :cond_6
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0
.end method

.method sizeInBytes()I
    .locals 6

    .prologue
    .line 772
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    const/4 v2, 0x0

    move v1, v2

    .line 773
    .local v1, "size":I
    move v2, v1

    const/4 v3, 0x3

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v4, v4

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    move v1, v2

    .line 774
    add-int/lit8 v1, v1, 0x24

    .line 775
    move v2, v1

    move v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 798
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    const-string/jumbo v4, ""

    move-object v1, v4

    .line 799
    .local v1, "result":Ljava/lang/String;
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 800
    .local v2, "current":I
    const/4 v4, 0x0

    move v3, v4

    .line 801
    .local v3, "counter":I
    :goto_0
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_0

    .line 802
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 803
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v6, v2

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 804
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v5, v5, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v7, v2

    aget v6, v6, v7

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 805
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 807
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    return-object v0
.end method

.method final updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/ArrayRow;Z)V
    .locals 17

    .prologue
    .line 583
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object/from16 v1, p1

    .local v1, "self":Landroidx/constraintlayout/solver/ArrayRow;
    move-object/from16 v2, p2

    .local v2, "definition":Landroidx/constraintlayout/solver/ArrayRow;
    move/from16 v3, p3

    .local v3, "removeFromDefinition":Z
    move-object v12, v0

    iget v12, v12, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v4, v12

    .line 584
    .local v4, "current":I
    const/4 v12, 0x0

    move v5, v12

    .line 585
    .local v5, "counter":I
    :goto_0
    move v12, v4

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    move v12, v5

    move-object v13, v0

    iget v13, v13, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v12, v13, :cond_3

    .line 586
    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v13, v4

    aget v12, v12, v13

    move-object v13, v2

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v13, v13, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v12, v13, :cond_2

    .line 587
    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v13, v4

    aget v12, v12, v13

    move v6, v12

    .line 588
    .local v6, "value":F
    move-object v12, v0

    move-object v13, v2

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move v14, v3

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    move-result v12

    .line 590
    move-object v12, v2

    iget-object v12, v12, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    check-cast v12, Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v7, v12

    .line 591
    .local v7, "definitionVariables":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object v12, v7

    iget v12, v12, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v8, v12

    .line 592
    .local v8, "definitionCurrent":I
    const/4 v12, 0x0

    move v9, v12

    .line 593
    .local v9, "definitionCounter":I
    :goto_1
    move v12, v8

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    move v12, v9

    move-object v13, v7

    iget v13, v13, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v12, v13, :cond_0

    .line 594
    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v12, v12, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v13, v7

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v14, v8

    aget v13, v13, v14

    aget-object v12, v12, v13

    move-object v10, v12

    .line 596
    .local v10, "definitionVariable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v12, v7

    iget-object v12, v12, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v13, v8

    aget v12, v12, v13

    move v11, v12

    .line 597
    .local v11, "definitionValue":F
    move-object v12, v0

    move-object v13, v10

    move v14, v11

    move v15, v6

    mul-float/2addr v14, v15

    move v15, v3

    invoke-virtual {v12, v13, v14, v15}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    .line 598
    move-object v12, v7

    iget-object v12, v12, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v13, v8

    aget v12, v12, v13

    move v8, v12

    add-int/lit8 v9, v9, 0x1

    .line 599
    goto :goto_1

    .line 600
    .end local v10    # "definitionVariable":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v11    # "definitionValue":F
    :cond_0
    move-object v12, v1

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    iget v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    move-object v14, v2

    iget v14, v14, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    move v15, v6

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v12, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 601
    move v12, v3

    if-eqz v12, :cond_1

    .line 602
    move-object v12, v2

    iget-object v12, v12, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 608
    :cond_1
    move-object v12, v0

    iget v12, v12, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v4, v12

    .line 609
    const/4 v12, 0x0

    move v5, v12

    .line 610
    goto/16 :goto_0

    .line 612
    .end local v6    # "value":F
    .end local v7    # "definitionVariables":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    .end local v8    # "definitionCurrent":I
    .end local v9    # "definitionCounter":I
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v13, v4

    aget v12, v12, v13

    move v4, v12

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 614
    :cond_3
    return-void
.end method

.method updateFromSystem(Landroidx/constraintlayout/solver/ArrayRow;[Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 18

    .prologue
    .line 626
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object/from16 v1, p1

    .local v1, "self":Landroidx/constraintlayout/solver/ArrayRow;
    move-object/from16 v2, p2

    .local v2, "rows":[Landroidx/constraintlayout/solver/ArrayRow;
    move-object v13, v0

    iget v13, v13, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v3, v13

    .line 627
    .local v3, "current":I
    const/4 v13, 0x0

    move v4, v13

    .line 628
    .local v4, "counter":I
    :goto_0
    move v13, v3

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    move v13, v4

    move-object v14, v0

    iget v14, v14, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v13, v14, :cond_2

    .line 629
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v13, v13, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v14, v0

    iget-object v14, v14, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v15, v3

    aget v14, v14, v15

    aget-object v13, v13, v14

    move-object v5, v13

    .line 630
    .local v5, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v13, v5

    iget v13, v13, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1

    .line 631
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v14, v3

    aget v13, v13, v14

    move v6, v13

    .line 632
    .local v6, "value":F
    move-object v13, v0

    move-object v14, v5

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    move-result v13

    .line 634
    move-object v13, v2

    move-object v14, v5

    iget v14, v14, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    aget-object v13, v13, v14

    move-object v7, v13

    .line 635
    .local v7, "definition":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v13, v7

    iget-boolean v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v13, :cond_0

    .line 636
    move-object v13, v7

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    check-cast v13, Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v8, v13

    .line 637
    .local v8, "definitionVariables":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    move-object v13, v8

    iget v13, v13, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v9, v13

    .line 638
    .local v9, "definitionCurrent":I
    const/4 v13, 0x0

    move v10, v13

    .line 639
    .local v10, "definitionCounter":I
    :goto_1
    move v13, v9

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    move v13, v10

    move-object v14, v8

    iget v14, v14, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v13, v14, :cond_0

    .line 640
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v13, v13, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v14, v8

    iget-object v14, v14, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v15, v9

    aget v14, v14, v15

    aget-object v13, v13, v14

    move-object v11, v13

    .line 642
    .local v11, "definitionVariable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v14, v9

    aget v13, v13, v14

    move v12, v13

    .line 643
    .local v12, "definitionValue":F
    move-object v13, v0

    move-object v14, v11

    move v15, v12

    move/from16 v16, v6

    mul-float v15, v15, v16

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    .line 644
    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v14, v9

    aget v13, v13, v14

    move v9, v13

    .line 645
    add-int/lit8 v10, v10, 0x1

    .line 646
    goto :goto_1

    .line 648
    .end local v8    # "definitionVariables":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    .end local v9    # "definitionCurrent":I
    .end local v10    # "definitionCounter":I
    .end local v11    # "definitionVariable":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v12    # "definitionValue":F
    :cond_0
    move-object v13, v1

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    iget v14, v14, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    move-object v15, v7

    iget v15, v15, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    move/from16 v16, v6

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    iput v14, v13, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 649
    move-object v13, v7

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v14, v1

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 654
    move-object v13, v0

    iget v13, v13, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v3, v13

    .line 655
    const/4 v13, 0x0

    move v4, v13

    .line 656
    goto/16 :goto_0

    .line 658
    .end local v6    # "value":F
    .end local v7    # "definition":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_1
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v14, v3

    aget v13, v13, v14

    move v3, v13

    add-int/lit8 v4, v4, 0x1

    .line 659
    goto/16 :goto_0

    .line 660
    .end local v5    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_2
    return-void
.end method
