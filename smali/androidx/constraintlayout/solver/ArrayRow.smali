.class public Landroidx/constraintlayout/solver/ArrayRow;
.super Ljava/lang/Object;
.source "ArrayRow.java"

# interfaces
.implements Landroidx/constraintlayout/solver/LinearSystem$Row;


# static fields
.field private static final DEBUG:Z = false

.field private static final epsilon:F = 0.001f


# instance fields
.field constantValue:F

.field isSimpleDefinition:Z

.field used:Z

.field variable:Landroidx/constraintlayout/solver/SolverVariable;

.field public final variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/Cache;)V
    .locals 8

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "cache":Landroidx/constraintlayout/solver/Cache;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 25
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 26
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/ArrayRow;->used:Z

    .line 31
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 34
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;-><init>(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/Cache;)V

    iput-object v3, v2, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    .line 35
    return-void
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 7

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move v2, p2

    .local v2, "strength":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v4, v1

    move v5, v2

    const-string/jumbo v6, "ep"

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 325
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v4, v1

    move v5, v2

    const-string/jumbo v6, "em"

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 326
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v0
.end method

.method public addError(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 6

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "error":Landroidx/constraintlayout/solver/SolverVariable;
    const/high16 v3, 0x3f800000    # 1.0f

    move v2, v3

    .line 481
    .local v2, "weight":F
    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 482
    const/high16 v3, 0x3f800000    # 1.0f

    move v2, v3

    .line 492
    :cond_0
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 493
    return-void

    .line 483
    :cond_1
    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 484
    const/high16 v3, 0x447a0000    # 1000.0f

    move v2, v3

    goto :goto_0

    .line 485
    :cond_2
    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 486
    const v3, 0x49742400    # 1000000.0f

    move v2, v3

    goto :goto_0

    .line 487
    :cond_3
    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 488
    const v3, 0x4e6e6b28    # 1.0E9f

    move v2, v3

    goto :goto_0

    .line 489
    :cond_4
    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 490
    const v3, 0x5368d4a5    # 1.0E12f

    move v2, v3

    goto :goto_0
.end method

.method addSingleError(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 6

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "error":Landroidx/constraintlayout/solver/SolverVariable;
    move v2, p2

    .local v2, "sign":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v4, v1

    move v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 154
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v0
.end method

.method chooseSubject(Landroidx/constraintlayout/solver/LinearSystem;)Z
    .locals 6

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    const/4 v4, 0x0

    move v2, v4

    .line 408
    .local v2, "addedExtra":Z
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->chooseSubject(Landroidx/constraintlayout/solver/LinearSystem;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    move-object v3, v4

    .line 409
    .local v3, "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v4, v3

    if-nez v4, :cond_1

    .line 411
    const/4 v4, 0x1

    move v2, v4

    .line 415
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v4, :cond_0

    .line 416
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 418
    :cond_0
    move v4, v2

    move v0, v4

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return v0

    .line 413
    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_1
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->clear()V

    .line 456
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 457
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 458
    return-void
.end method

.method createRowCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 13

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "variableA":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, p2

    .local v2, "variableB":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v3, p3

    .local v3, "marginA":I
    move/from16 v4, p4

    .local v4, "bias":F
    move-object/from16 v5, p5

    .local v5, "variableC":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v6, p6

    .local v6, "variableD":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v7, p7

    .local v7, "marginB":I
    move-object v8, v2

    move-object v9, v5

    if-ne v8, v9, :cond_0

    .line 282
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 283
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v6

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 284
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v2

    const/high16 v10, -0x40000000    # -2.0f

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 285
    move-object v8, v0

    move-object v0, v8

    .line 320
    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    :goto_0
    return-object v0

    .line 287
    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_0
    move v8, v4

    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    .line 294
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 295
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v2

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 296
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v5

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 297
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v6

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 298
    move v8, v3

    if-gtz v8, :cond_1

    move v8, v7

    if-lez v8, :cond_2

    .line 299
    :cond_1
    move-object v8, v0

    move v9, v3

    neg-int v9, v9

    move v10, v7

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, v8, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 320
    :cond_2
    :goto_1
    move-object v8, v0

    move-object v0, v8

    goto :goto_0

    .line 301
    :cond_3
    move v8, v4

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_4

    .line 303
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v1

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 304
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 305
    move-object v8, v0

    move v9, v3

    int-to-float v9, v9

    iput v9, v8, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto :goto_1

    .line 306
    :cond_4
    move v8, v4

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_5

    .line 308
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v5

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 309
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v6

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 310
    move-object v8, v0

    move v9, v7

    int-to-float v9, v9

    iput v9, v8, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto :goto_1

    .line 312
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v4

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 313
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v2

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v4

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 314
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v5

    const/high16 v10, -0x40800000    # -1.0f

    move v11, v4

    mul-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 315
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v6

    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v4

    mul-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 316
    move v8, v3

    if-gtz v8, :cond_6

    move v8, v7

    if-lez v8, :cond_2

    .line 317
    :cond_6
    move-object v8, v0

    move v9, v3

    neg-int v9, v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v4

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    move v10, v7

    int-to-float v10, v10

    move v11, v4

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v8, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto/16 :goto_1
.end method

.method createRowDefinition(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move v2, p2

    .local v2, "value":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 115
    move-object v3, v1

    move v4, v2

    int-to-float v4, v4

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    .line 116
    move-object v3, v0

    move v4, v2

    int-to-float v4, v4

    iput v4, v3, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 117
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 118
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v0
.end method

.method createRowDimensionPercent(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 9

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "variableA":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, p2

    .local v2, "variableB":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v3, p3

    .local v3, "variableC":Landroidx/constraintlayout/solver/SolverVariable;
    move v4, p4

    .local v4, "percent":F
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v6, v1

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 332
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v6, v2

    const/high16 v7, 0x3f800000    # 1.0f

    move v8, v4

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 333
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 334
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v0
.end method

.method public createRowDimensionRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 9

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "variableA":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, p2

    .local v2, "variableB":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v3, p3

    .local v3, "variableC":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v4, p4

    .local v4, "variableD":Landroidx/constraintlayout/solver/SolverVariable;
    move v5, p5

    .local v5, "ratio":F
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v7, v1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 352
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 353
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v7, v3

    move v8, v5

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 354
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v7, v4

    move v8, v5

    neg-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 355
    move-object v6, v0

    move-object v0, v6

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v0
.end method

.method public createRowEqualDimension(FFFLandroidx/constraintlayout/solver/SolverVariable;ILandroidx/constraintlayout/solver/SolverVariable;ILandroidx/constraintlayout/solver/SolverVariable;ILandroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 21

    .prologue
    .line 251
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move/from16 v3, p1

    .local v3, "currentWeight":F
    move/from16 v4, p2

    .local v4, "totalWeights":F
    move/from16 v5, p3

    .local v5, "nextWeight":F
    move-object/from16 v6, p4

    .local v6, "variableStartA":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v7, p5

    .local v7, "marginStartA":I
    move-object/from16 v8, p6

    .local v8, "variableEndA":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v9, p7

    .local v9, "marginEndA":I
    move-object/from16 v10, p8

    .local v10, "variableStartB":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v11, p9

    .local v11, "marginStartB":I
    move-object/from16 v12, p10

    .local v12, "variableEndB":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v13, p11

    .local v13, "marginEndB":I
    move/from16 v17, v4

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_0

    move/from16 v17, v3

    move/from16 v18, v5

    cmpl-float v17, v17, v18

    if-nez v17, :cond_1

    .line 255
    :cond_0
    move-object/from16 v17, v2

    move/from16 v18, v7

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v19, v9

    sub-int v18, v18, v19

    move/from16 v19, v11

    add-int v18, v18, v19

    move/from16 v19, v13

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 256
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v19}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 257
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v8

    const/high16 v19, -0x40800000    # -1.0f

    invoke-virtual/range {v17 .. v19}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 258
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v19}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 259
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    const/high16 v19, -0x40800000    # -1.0f

    invoke-virtual/range {v17 .. v19}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 273
    :goto_0
    move-object/from16 v17, v2

    move-object/from16 v2, v17

    .end local v2    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v2

    .line 261
    .restart local v2    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_1
    move/from16 v17, v3

    move/from16 v18, v4

    div-float v17, v17, v18

    move/from16 v14, v17

    .line 262
    .local v14, "cw":F
    move/from16 v17, v5

    move/from16 v18, v4

    div-float v17, v17, v18

    move/from16 v15, v17

    .line 263
    .local v15, "nw":F
    move/from16 v17, v14

    move/from16 v18, v15

    div-float v17, v17, v18

    move/from16 v16, v17

    .line 267
    .local v16, "w":F
    move-object/from16 v17, v2

    move/from16 v18, v7

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v19, v9

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v16

    move/from16 v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v19, v16

    move/from16 v20, v13

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 268
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v19}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 269
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v8

    const/high16 v19, -0x40800000    # -1.0f

    invoke-virtual/range {v17 .. v19}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 270
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    move/from16 v19, v16

    invoke-virtual/range {v17 .. v19}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 271
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    move/from16 v19, v16

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto/16 :goto_0
.end method

.method public createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 14

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move v1, p1

    .local v1, "currentWeight":F
    move/from16 v2, p2

    .local v2, "totalWeights":F
    move/from16 v3, p3

    .local v3, "nextWeight":F
    move-object/from16 v4, p4

    .local v4, "variableStartA":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v5, p5

    .local v5, "variableEndA":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v6, p6

    .local v6, "variableStartB":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v7, p7

    .local v7, "variableEndB":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 216
    move v11, v2

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_0

    move v11, v1

    move v12, v3

    cmpl-float v11, v11, v12

    if-nez v11, :cond_1

    .line 219
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v12, v4

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 220
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v12, v5

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 221
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 222
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v12, v6

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 243
    :goto_0
    move-object v11, v0

    move-object v0, v11

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v0

    .line 224
    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_1
    move v11, v1

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_2

    .line 225
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v12, v4

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 226
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v12, v5

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0

    .line 227
    :cond_2
    move v11, v3

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_3

    .line 228
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v12, v6

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 229
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v12, v7

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0

    .line 231
    :cond_3
    move v11, v1

    move v12, v2

    div-float/2addr v11, v12

    move v8, v11

    .line 232
    .local v8, "cw":F
    move v11, v3

    move v12, v2

    div-float/2addr v11, v12

    move v9, v11

    .line 233
    .local v9, "nw":F
    move v11, v8

    move v12, v9

    div-float/2addr v11, v12

    move v10, v11

    .line 237
    .local v10, "w":F
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v12, v4

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 238
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v12, v5

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 239
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v12, v7

    move v13, v10

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 240
    move-object v11, v0

    iget-object v11, v11, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v12, v6

    move v13, v10

    neg-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 6

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move v2, p2

    .local v2, "value":I
    move v3, v2

    if-gez v3, :cond_0

    .line 123
    move-object v3, v0

    const/4 v4, -0x1

    move v5, v2

    mul-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 124
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 129
    :goto_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v0

    .line 126
    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_0
    move-object v3, v0

    move v4, v2

    int-to-float v4, v4

    iput v4, v3, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 127
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v4, v1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 9

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "variableA":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, p2

    .local v2, "variableB":Landroidx/constraintlayout/solver/SolverVariable;
    move v3, p3

    .local v3, "margin":I
    const/4 v6, 0x0

    move v4, v6

    .line 134
    .local v4, "inverse":Z
    move v6, v3

    if-eqz v6, :cond_1

    .line 135
    move v6, v3

    move v5, v6

    .line 136
    .local v5, "m":I
    move v6, v5

    if-gez v6, :cond_0

    .line 137
    const/4 v6, -0x1

    move v7, v5

    mul-int/2addr v6, v7

    move v5, v6

    .line 138
    const/4 v6, 0x1

    move v4, v6

    .line 140
    :cond_0
    move-object v6, v0

    move v7, v5

    int-to-float v7, v7

    iput v7, v6, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 142
    .end local v5    # "m":I
    :cond_1
    move v6, v4

    if-nez v6, :cond_2

    .line 143
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v7, v1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 144
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 149
    :goto_0
    move-object v6, v0

    move-object v0, v6

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v0

    .line 146
    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v7, v1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 147
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v7, v2

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;ILandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 7

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "a":Landroidx/constraintlayout/solver/SolverVariable;
    move v2, p2

    .local v2, "b":I
    move-object v3, p3

    .local v3, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v4, v0

    move v5, v2

    int-to-float v5, v5

    iput v5, v4, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 183
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v5, v1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 184
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v0
.end method

.method public createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 10

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "variableA":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, p2

    .local v2, "variableB":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v3, p3

    .local v3, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    move v4, p4

    .local v4, "margin":I
    const/4 v7, 0x0

    move v5, v7

    .line 161
    .local v5, "inverse":Z
    move v7, v4

    if-eqz v7, :cond_1

    .line 162
    move v7, v4

    move v6, v7

    .line 163
    .local v6, "m":I
    move v7, v6

    if-gez v7, :cond_0

    .line 164
    const/4 v7, -0x1

    move v8, v6

    mul-int/2addr v7, v8

    move v6, v7

    .line 165
    const/4 v7, 0x1

    move v5, v7

    .line 167
    :cond_0
    move-object v7, v0

    move v8, v6

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 169
    .end local v6    # "m":I
    :cond_1
    move v7, v5

    if-nez v7, :cond_2

    .line 170
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v8, v1

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 171
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v8, v2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 172
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v8, v3

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 178
    :goto_0
    move-object v7, v0

    move-object v0, v7

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v0

    .line 174
    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v8, v1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 175
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v8, v2

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 176
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v8, v3

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 10

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "variableA":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, p2

    .local v2, "variableB":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v3, p3

    .local v3, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    move v4, p4

    .local v4, "margin":I
    const/4 v7, 0x0

    move v5, v7

    .line 190
    .local v5, "inverse":Z
    move v7, v4

    if-eqz v7, :cond_1

    .line 191
    move v7, v4

    move v6, v7

    .line 192
    .local v6, "m":I
    move v7, v6

    if-gez v7, :cond_0

    .line 193
    const/4 v7, -0x1

    move v8, v6

    mul-int/2addr v7, v8

    move v6, v7

    .line 194
    const/4 v7, 0x1

    move v5, v7

    .line 196
    :cond_0
    move-object v7, v0

    move v8, v6

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 198
    .end local v6    # "m":I
    :cond_1
    move v7, v5

    if-nez v7, :cond_2

    .line 199
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v8, v1

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 200
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v8, v2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 201
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v8, v3

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 207
    :goto_0
    move-object v7, v0

    move-object v0, v7

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v0

    .line 203
    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v8, v1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 204
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v8, v2

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 205
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v8, v3

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowWithAngle(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 9

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "at":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, p2

    .local v2, "ab":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v3, p3

    .local v3, "bt":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v4, p4

    .local v4, "bb":Landroidx/constraintlayout/solver/SolverVariable;
    move v5, p5

    .local v5, "angleComponent":F
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v7, v3

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 370
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v7, v4

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 371
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v7, v1

    const/high16 v8, -0x41000000    # -0.5f

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 372
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v7, v2

    const/high16 v8, -0x41000000    # -0.5f

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 373
    move-object v6, v0

    move v7, v5

    neg-float v7, v7

    iput v7, v6, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 374
    move-object v6, v0

    move-object v0, v6

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v0
.end method

.method ensurePositiveConstant()V
    .locals 5

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 393
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    iput v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 394
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->invert()V

    .line 396
    :cond_0
    return-void
.end method

.method public getKey()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 2

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v0
.end method

.method public getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 6

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v2, p2

    .local v2, "avoid":[Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getPivotCandidate([ZLandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v0
.end method

.method hasKeyVariable()Z
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v2, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hasVariable(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "v":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->containsKey(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return v0
.end method

.method public initFromRow(Landroidx/constraintlayout/solver/LinearSystem$Row;)V
    .locals 10

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "row":Landroidx/constraintlayout/solver/LinearSystem$Row;
    move-object v6, v1

    instance-of v6, v6, Landroidx/constraintlayout/solver/ArrayRow;

    if-eqz v6, :cond_0

    .line 467
    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/solver/ArrayRow;

    move-object v2, v6

    .line 468
    .local v2, "copiedRow":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 469
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->clear()V

    .line 470
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move-object v7, v2

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v7, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v6, v7, :cond_0

    .line 471
    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    move-object v4, v6

    .line 472
    .local v4, "var":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v6

    move v5, v6

    .line 473
    .local v5, "val":F
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v7, v4

    move v8, v5

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    .line 470
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 476
    .end local v2    # "copiedRow":Landroidx/constraintlayout/solver/ArrayRow;
    .end local v3    # "i":I
    .end local v4    # "var":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v5    # "val":F
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v1, v1, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method pickPivot(Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 5

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "exclude":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getPivotCandidate([ZLandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v0
.end method

.method pivot(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 6

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    .local v1, "v":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v3, :cond_0

    .line 428
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 429
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 432
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    move v2, v3

    .line 433
    .local v2, "amount":F
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 434
    move v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 435
    .line 439
    :goto_0
    return-void

    .line 437
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    move v5, v2

    div-float/2addr v4, v5

    iput v4, v3, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 438
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->divideByAmount(F)V

    .line 439
    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 104
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->clear()V

    .line 105
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 106
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 107
    return-void
.end method

.method sizeInBytes()I
    .locals 4

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    const/4 v2, 0x0

    move v1, v2

    .line 379
    .local v1, "size":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v2, :cond_0

    .line 380
    add-int/lit8 v1, v1, 0x4

    .line 382
    :cond_0
    add-int/lit8 v1, v1, 0x4

    .line 383
    add-int/lit8 v1, v1, 0x4

    .line 385
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->sizeInBytes()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 386
    move v2, v1

    move v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return v0
.end method

.method toReadableString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    const-string/jumbo v8, ""

    move-object v1, v8

    .line 51
    .local v1, "s":Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v8, :cond_1

    .line 52
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 56
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 57
    const/4 v8, 0x0

    move v2, v8

    .line 58
    .local v2, "addedVariable":Z
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_0

    .line 59
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 60
    const/4 v8, 0x1

    move v2, v8

    .line 62
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v8, v8, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    move v3, v8

    .line 63
    .local v3, "count":I
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_1
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_8

    .line 64
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move v9, v4

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object v5, v8

    .line 65
    .local v5, "v":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v8, v5

    if-nez v8, :cond_2

    .line 66
    .line 63
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 54
    .end local v2    # "addedVariable":Z
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    goto :goto_0

    .line 68
    .restart local v2    # "addedVariable":Z
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move v9, v4

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v8

    move v6, v8

    .line 69
    .local v6, "amount":F
    move v8, v6

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    .line 70
    goto :goto_2

    .line 72
    :cond_3
    move-object v8, v5

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/SolverVariable;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 73
    .local v7, "name":Ljava/lang/String;
    move v8, v2

    if-nez v8, :cond_5

    .line 74
    move v8, v6

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 76
    move v8, v6

    const/high16 v9, -0x40800000    # -1.0f

    mul-float/2addr v8, v9

    move v6, v8

    .line 86
    :cond_4
    :goto_3
    move v8, v6

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_7

    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 91
    :goto_4
    const/4 v8, 0x1

    move v2, v8

    goto :goto_2

    .line 79
    :cond_5
    move v8, v6

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 80
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    goto :goto_3

    .line 82
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 83
    move v8, v6

    const/high16 v9, -0x40800000    # -1.0f

    mul-float/2addr v8, v9

    move v6, v8

    goto :goto_3

    .line 89
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    goto :goto_4

    .line 93
    .end local v5    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v6    # "amount":F
    .end local v7    # "name":Ljava/lang/String;
    :cond_8
    move v8, v2

    if-nez v8, :cond_9

    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "0.0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 99
    :cond_9
    move-object v8, v1

    move-object v0, v8

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/ArrayRow;
    return-object v0
.end method
