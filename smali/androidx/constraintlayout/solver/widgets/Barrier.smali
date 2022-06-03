.class public Landroidx/constraintlayout/solver/widgets/Barrier;
.super Landroidx/constraintlayout/solver/widgets/Helper;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final TOP:I = 0x2


# instance fields
.field private mAllowsGoneWidget:Z

.field private mBarrierType:I

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Barrier;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/Helper;-><init>()V

    .line 35
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    .line 36
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    .line 38
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 12

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Barrier;
    move-object v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    .line 210
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x2

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    .line 211
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    .line 212
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x3

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v9, v7, v8

    .line 213
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v8, v8

    if-ge v7, v8, :cond_0

    .line 214
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v8, v3

    aget-object v7, v7, v8

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v10, v3

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :cond_0
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-ltz v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v8, 0x4

    if-ge v7, v8, :cond_2

    .line 217
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v7, v7, v8

    move-object v2, v7

    .line 223
    .local v2, "position":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v7, 0x0

    move v3, v7

    .line 224
    .local v3, "hasMatchConstraintWidgets":Z
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_1
    move v7, v4

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v7, v8, :cond_5

    .line 225
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 226
    .local v5, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v7, :cond_3

    move-object v7, v5

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v7

    if-nez v7, :cond_3

    .line 227
    .line 224
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 219
    .line 283
    .end local v2    # "position":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "hasMatchConstraintWidgets":Z
    .end local v4    # "i":I
    .end local v5    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2
    :goto_2
    return-void

    .line 229
    .restart local v2    # "position":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v3    # "hasMatchConstraintWidgets":Z
    .restart local v4    # "i":I
    .restart local v5    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_3
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v7, :cond_4

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    :cond_4
    move-object v7, v5

    .line 230
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_8

    .line 231
    const/4 v7, 0x1

    move v3, v7

    .line 239
    .end local v5    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_5
    :goto_3
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v7, :cond_6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 240
    :cond_6
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/Barrier;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_7

    .line 241
    const/4 v7, 0x0

    move v3, v7

    .line 248
    :cond_7
    :goto_4
    const/4 v7, 0x0

    move v4, v7

    :goto_5
    move v7, v4

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v7, v8, :cond_e

    .line 249
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 250
    .restart local v5    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v7, :cond_b

    move-object v7, v5

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v7

    if-nez v7, :cond_b

    .line 251
    .line 248
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 233
    :cond_8
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_9

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    :cond_9
    move-object v7, v5

    .line 234
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_1

    .line 235
    const/4 v7, 0x1

    move v3, v7

    .line 236
    goto :goto_3

    .line 244
    .end local v5    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_a
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/Barrier;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_7

    .line 245
    const/4 v7, 0x0

    move v3, v7

    goto :goto_4

    .line 253
    .restart local v5    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_b
    move-object v7, v1

    move-object v8, v5

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    move-object v6, v7

    .line 254
    .local v6, "target":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v7, v7, v8

    move-object v8, v6

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 255
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v7, :cond_c

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    .line 256
    :cond_c
    move-object v7, v1

    move-object v8, v2

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v9, v6

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Z)V

    goto :goto_6

    .line 258
    :cond_d
    move-object v7, v1

    move-object v8, v2

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v9, v6

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Z)V

    goto :goto_6

    .line 262
    .end local v5    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v6    # "target":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_e
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-nez v7, :cond_10

    .line 263
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    .line 264
    move v7, v3

    if-nez v7, :cond_f

    .line 265
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    .line 283
    :cond_f
    :goto_7
    goto/16 :goto_2

    .line 267
    :cond_10
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_11

    .line 268
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    .line 269
    move v7, v3

    if-nez v7, :cond_f

    .line 270
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    goto :goto_7

    .line 272
    :cond_11
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_12

    .line 273
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    .line 274
    move v7, v3

    if-nez v7, :cond_f

    .line 275
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    goto :goto_7

    .line 277
    :cond_12
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_f

    .line 278
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    .line 279
    move v7, v3

    if-nez v7, :cond_f

    .line 280
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    goto/16 :goto_7
.end method

.method public allowedInBarrier()Z
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Barrier;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/Barrier;
    return v0
.end method

.method public allowsGoneWidget()Z
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Barrier;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/Barrier;
    return v0
.end method

.method public analyze(I)V
    .locals 9

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Barrier;
    move v1, p1

    .local v1, "optimizationLevel":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v6, :cond_0

    .line 66
    .line 125
    :goto_0
    return-void

    .line 68
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 69
    goto :goto_0

    .line 73
    :cond_1
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    packed-switch v6, :pswitch_data_0

    .line 87
    goto :goto_0

    .line 75
    :pswitch_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move-object v2, v6

    .line 89
    .local v2, "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :goto_1
    move-object v6, v2

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 91
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v6, :cond_2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 92
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 93
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 99
    :goto_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 100
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_3
    move v6, v3

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v6, v7, :cond_6

    .line 101
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 102
    .local v4, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v6, :cond_5

    move-object v6, v4

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v6

    if-nez v6, :cond_5

    .line 103
    .line 100
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 78
    .end local v2    # "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v3    # "i":I
    .end local v4    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :pswitch_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move-object v2, v6

    .line 79
    .restart local v2    # "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    goto :goto_1

    .line 81
    .end local v2    # "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :pswitch_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move-object v2, v6

    .line 82
    .restart local v2    # "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    goto :goto_1

    .line 84
    .end local v2    # "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :pswitch_3
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move-object v2, v6

    .line 85
    .restart local v2    # "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    goto :goto_1

    .line 95
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 96
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto :goto_2

    .line 105
    .restart local v3    # "i":I
    .restart local v4    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_5
    const/4 v6, 0x0

    move-object v5, v6

    .line 106
    .local v5, "depends":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    packed-switch v6, :pswitch_data_1

    .line 120
    :goto_5
    move-object v6, v5

    if-eqz v6, :cond_3

    .line 121
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 122
    move-object v6, v5

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    goto :goto_4

    .line 108
    :pswitch_4
    move-object v6, v4

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move-object v5, v6

    .line 109
    goto :goto_5

    .line 111
    :pswitch_5
    move-object v6, v4

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move-object v5, v6

    .line 112
    goto :goto_5

    .line 114
    :pswitch_6
    move-object v6, v4

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move-object v5, v6

    .line 115
    goto :goto_5

    .line 117
    :pswitch_7
    move-object v6, v4

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move-object v5, v6

    goto :goto_5

    .line 125
    .end local v4    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v5    # "depends":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_6
    goto/16 :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 106
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public resetResolutionNodes()V
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Barrier;
    move-object v1, v0

    invoke-super {v1}, Landroidx/constraintlayout/solver/widgets/Helper;->resetResolutionNodes()V

    .line 56
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 57
    return-void
.end method

.method public resolve()V
    .locals 13

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Barrier;
    const/4 v7, 0x0

    move-object v1, v7

    .line 133
    .local v1, "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    const/4 v7, 0x0

    move v2, v7

    .line 134
    .local v2, "value":F
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    packed-switch v7, :pswitch_data_0

    .line 150
    .line 199
    :goto_0
    return-void

    .line 136
    :pswitch_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    move-object v1, v7

    .line 137
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    move v2, v7

    .line 153
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v7

    .line 154
    .local v3, "count":I
    const/4 v7, 0x0

    move-object v4, v7

    .line 155
    .local v4, "resolvedTarget":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_2
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_4

    .line 156
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mNodes:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object v6, v7

    .line 157
    .local v6, "n":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v7, v6

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 158
    goto :goto_0

    .line 140
    .end local v3    # "count":I
    .end local v4    # "resolvedTarget":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v5    # "i":I
    .end local v6    # "n":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :pswitch_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    move-object v1, v7

    .line 141
    goto :goto_1

    .line 143
    :pswitch_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    move-object v1, v7

    .line 144
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    move v2, v7

    .line 145
    goto :goto_1

    .line 147
    :pswitch_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    move-object v1, v7

    .line 148
    goto :goto_1

    .line 160
    .restart local v3    # "count":I
    .restart local v4    # "resolvedTarget":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .restart local v5    # "i":I
    .restart local v6    # "n":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_0
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v7, :cond_1

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 161
    :cond_1
    move-object v7, v6

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move v8, v2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 162
    move-object v7, v6

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move v2, v7

    .line 163
    move-object v7, v6

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object v4, v7

    .line 155
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 166
    :cond_3
    move-object v7, v6

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move v8, v2

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 167
    move-object v7, v6

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move v2, v7

    .line 168
    move-object v7, v6

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object v4, v7

    goto :goto_3

    .line 173
    .end local v6    # "n":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_4
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 174
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v7

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Landroidx/constraintlayout/solver/Metrics;->barrierConnectionResolved:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroidx/constraintlayout/solver/Metrics;->barrierConnectionResolved:J

    .line 180
    :cond_5
    move-object v7, v1

    move-object v8, v4

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 181
    move-object v7, v1

    move v8, v2

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 182
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 183
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    packed-switch v7, :pswitch_data_1

    .line 197
    goto/16 :goto_0

    .line 185
    :pswitch_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    move-object v8, v4

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 186
    .line 199
    :goto_4
    goto/16 :goto_0

    .line 188
    :pswitch_5
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    move-object v8, v4

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 189
    goto :goto_4

    .line 191
    :pswitch_6
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    move-object v8, v4

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 192
    goto :goto_4

    .line 194
    :pswitch_7
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    move-object v8, v4

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 195
    goto :goto_4

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 183
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Barrier;
    move v1, p1

    .local v1, "allowsGoneWidget":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return-void
.end method

.method public setBarrierType(I)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Barrier;
    move v1, p1

    .local v1, "barrierType":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    .line 47
    return-void
.end method
