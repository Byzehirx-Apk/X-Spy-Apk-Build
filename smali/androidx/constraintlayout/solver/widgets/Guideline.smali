.class public Landroidx/constraintlayout/solver/widgets/Guideline;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.source "Guideline.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final RELATIVE_BEGIN:I = 0x1

.field public static final RELATIVE_END:I = 0x2

.field public static final RELATIVE_PERCENT:I = 0x0

.field public static final RELATIVE_UNKNWON:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mHead:Landroidx/constraintlayout/solver/widgets/Rectangle;

.field private mHeadSize:I

.field private mIsPositionRelaxed:Z

.field private mMinimumPosition:I

.field private mOrientation:I

.field protected mRelativeBegin:I

.field protected mRelativeEnd:I

.field protected mRelativePercent:F


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v3, v0

    invoke-direct {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    .line 38
    move-object v3, v0

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    .line 39
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    .line 40
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    .line 42
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 43
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    .line 44
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    .line 45
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mMinimumPosition:I

    .line 47
    move-object v3, v0

    new-instance v4, Landroidx/constraintlayout/solver/widgets/Rectangle;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroidx/constraintlayout/solver/widgets/Rectangle;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mHead:Landroidx/constraintlayout/solver/widgets/Rectangle;

    .line 48
    move-object v3, v0

    const/16 v4, 0x8

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mHeadSize:I

    .line 51
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 52
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 53
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v3, v3

    move v1, v3

    .line 54
    .local v1, "count":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 55
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v3, v4

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 16

    .prologue
    .line 250
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object/from16 v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v2, v9

    .line 251
    .local v2, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v9, v2

    if-nez v9, :cond_0

    .line 252
    .line 285
    :goto_0
    return-void

    .line 254
    :cond_0
    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v3, v9

    .line 255
    .local v3, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v4, v9

    .line 256
    .local v4, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v9, :cond_4

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_1
    move v5, v9

    .line 257
    .local v5, "parentWrapContent":Z
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-nez v9, :cond_1

    .line 258
    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v3, v9

    .line 259
    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v4, v9

    .line 260
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v9, :cond_6

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_5

    const/4 v9, 0x1

    :goto_2
    move v5, v9

    .line 262
    :cond_1
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    .line 263
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    move-object v6, v9

    .line 264
    .local v6, "guide":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v9, v1

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    move-object v7, v9

    .line 265
    .local v7, "parentLeft":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v9, v1

    move-object v10, v6

    move-object v11, v7

    move-object v12, v0

    iget v12, v12, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v13, 0x6

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v9

    .line 266
    move v9, v5

    if-eqz v9, :cond_2

    .line 267
    move-object v9, v1

    move-object v10, v1

    move-object v11, v4

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v10

    move-object v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 269
    .line 285
    .end local v6    # "guide":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v7    # "parentLeft":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_2
    :goto_3
    goto :goto_0

    .line 256
    .end local v5    # "parentWrapContent":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 260
    .restart local v5    # "parentWrapContent":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 269
    :cond_7
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_9

    .line 270
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    move-object v6, v9

    .line 271
    .restart local v6    # "guide":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v9, v1

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    move-object v7, v9

    .line 272
    .local v7, "parentRight":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v9, v1

    move-object v10, v6

    move-object v11, v7

    move-object v12, v0

    iget v12, v12, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v12, v12

    const/4 v13, 0x6

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v9

    .line 273
    move v9, v5

    if-eqz v9, :cond_8

    .line 274
    move-object v9, v1

    move-object v10, v6

    move-object v11, v1

    move-object v12, v3

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 275
    move-object v9, v1

    move-object v10, v7

    move-object v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 277
    :cond_8
    goto :goto_3

    .end local v6    # "guide":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v7    # "parentRight":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_9
    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_2

    .line 278
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    move-object v6, v9

    .line 279
    .restart local v6    # "guide":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v9, v1

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    move-object v7, v9

    .line 280
    .local v7, "parentLeft":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v9, v1

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    move-object v8, v9

    .line 281
    .local v8, "parentRight":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v9, v1

    move-object v10, v1

    move-object v11, v6

    move-object v12, v7

    move-object v13, v8

    move-object v14, v0

    iget v14, v14, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    move-object v15, v0

    iget-boolean v15, v15, Landroidx/constraintlayout/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    .line 282
    invoke-static/range {v10 .. v15}, Landroidx/constraintlayout/solver/LinearSystem;->createRowDimensionPercent(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FZ)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v10

    .line 281
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_3
.end method

.method public allowedInBarrier()Z
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    return v0
.end method

.method public analyze(I)V
    .locals 8

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move v1, p1

    .local v1, "optimizationLevel":I
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    move-object v2, v4

    .line 214
    .local v2, "constraintWidgetContainer":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 215
    .line 246
    :goto_0
    return-void

    .line 217
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 218
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 219
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 220
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 221
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 222
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 246
    :cond_1
    :goto_1
    goto :goto_0

    .line 223
    :cond_2
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 224
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 225
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto :goto_1

    .line 226
    :cond_3
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_1

    .line 227
    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move v3, v4

    .line 228
    .local v3, "position":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 229
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 230
    goto :goto_1

    .line 232
    .end local v3    # "position":I
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 233
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 234
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 235
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 236
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1

    .line 237
    :cond_5
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 238
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 239
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1

    .line 240
    :cond_6
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_1

    .line 241
    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move v3, v4

    .line 242
    .restart local v3    # "position":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 243
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/4 v5, 0x1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1
.end method

.method public cyclePosition()V
    .locals 3

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 358
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Guideline;->inferRelativePercentPosition()V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 361
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Guideline;->inferRelativeEndPosition()V

    goto :goto_0

    .line 362
    :cond_2
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 364
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Guideline;->inferRelativeBeginPosition()V

    goto :goto_0
.end method

.method public getAnchor()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    return-object v0
.end method

.method public getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 6

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v1, p1

    .local v1, "anchorType":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    sget-object v2, Landroidx/constraintlayout/solver/widgets/Guideline$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 159
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 140
    :pswitch_0
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 141
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    .line 157
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    :goto_0
    return-object v0

    .line 147
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    :pswitch_1
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-nez v2, :cond_0

    .line 148
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 157
    :pswitch_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    return-object v0
.end method

.method public getHead()Landroidx/constraintlayout/solver/widgets/Rectangle;
    .locals 7

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mHead:Landroidx/constraintlayout/solver/widgets/Rectangle;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->getDrawX()I

    move-result v2

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mHeadSize:I

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->getDrawY()I

    move-result v3

    const/4 v4, 0x2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v4, v5

    const/4 v5, 0x2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 80
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v1

    if-nez v1, :cond_0

    .line 81
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mHead:Landroidx/constraintlayout/solver/widgets/Rectangle;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->getDrawX()I

    move-result v2

    const/4 v3, 0x2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    move-object v3, v0

    .line 82
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->getDrawY()I

    move-result v3

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mHeadSize:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v4, v5

    const/4 v5, 0x2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v5, v6

    .line 81
    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 85
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mHead:Landroidx/constraintlayout/solver/widgets/Rectangle;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    return-object v0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    return v0
.end method

.method public getRelativeBegin()I
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    return v0
.end method

.method public getRelativeBehaviour()I
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x0

    move v0, v1

    .line 74
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    :goto_0
    return v0

    .line 68
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 69
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 71
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 72
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 74
    :cond_2
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public getRelativeEnd()I
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    return v0
.end method

.method public getRelativePercent()F
    .locals 2

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    const-string/jumbo v1, "Guideline"

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    return-object v0
.end method

.method inferRelativeBeginPosition()V
    .locals 4

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->getX()I

    move-result v2

    move v1, v2

    .line 341
    .local v1, "position":I
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-nez v2, :cond_0

    .line 342
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->getY()I

    move-result v2

    move v1, v2

    .line 344
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideBegin(I)V

    .line 345
    return-void
.end method

.method inferRelativeEndPosition()V
    .locals 4

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->getX()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    .line 349
    .local v1, "position":I
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-nez v2, :cond_0

    .line 350
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->getY()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    .line 352
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideEnd(I)V

    .line 353
    return-void
.end method

.method inferRelativePercentPosition()V
    .locals 4

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->getX()I

    move-result v2

    int-to-float v2, v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move v1, v2

    .line 333
    .local v1, "percent":F
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    if-nez v2, :cond_0

    .line 334
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/Guideline;->getY()I

    move-result v2

    int-to-float v2, v2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move v1, v2

    .line 336
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 337
    return-void
.end method

.method public setDrawOrigin(II)V
    .locals 8

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 309
    move v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Guideline;->mOffsetX:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 310
    .local v3, "position":I
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 311
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideBegin(I)V

    .line 318
    .line 329
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 313
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    move v7, v3

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_0

    .line 314
    :cond_2
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 315
    move v5, v3

    int-to-float v5, v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v4, v5

    .line 316
    .local v4, "percent":F
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(F)V

    goto :goto_0

    .line 319
    .end local v3    # "position":I
    .end local v4    # "percent":F
    :cond_3
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/Guideline;->mOffsetY:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 320
    .restart local v3    # "position":I
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 321
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_0

    .line 322
    :cond_4
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 323
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    move v7, v3

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_0

    .line 324
    :cond_5
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 325
    move v5, v3

    int-to-float v5, v5

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v4, v5

    .line 326
    .restart local v4    # "percent":F
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(F)V

    goto :goto_0
.end method

.method public setGuideBegin(I)V
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move v1, p1

    .local v1, "value":I
    move v2, v1

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 181
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    .line 182
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    .line 183
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    .line 185
    :cond_0
    return-void
.end method

.method public setGuideEnd(I)V
    .locals 4

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move v1, p1

    .local v1, "value":I
    move v2, v1

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 189
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    .line 190
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    .line 191
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    .line 193
    :cond_0
    return-void
.end method

.method public setGuidePercent(F)V
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move v1, p1

    .local v1, "value":F
    move v2, v1

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 173
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativePercent:F

    .line 174
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeBegin:I

    .line 175
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mRelativeEnd:I

    .line 177
    :cond_0
    return-void
.end method

.method public setGuidePercent(I)V
    .locals 5

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    move v3, v1

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 169
    return-void
.end method

.method public setMinimumPosition(I)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move v1, p1

    .local v1, "minimum":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mMinimumPosition:I

    .line 126
    return-void
.end method

.method public setOrientation(I)V
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move v1, p1

    .local v1, "orientation":I
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 90
    .line 104
    :goto_0
    return-void

    .line 92
    :cond_0
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    .line 93
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 94
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 95
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 99
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 100
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v4, v4

    move v2, v4

    .line 101
    .local v2, "count":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_2
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_2

    .line 102
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v6, v4, v5

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 97
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    goto :goto_1

    .line 104
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    :cond_2
    goto :goto_0
.end method

.method public setPositionRelaxed(Z)V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 130
    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    .line 133
    goto :goto_0
.end method

.method public updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 5

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    if-nez v3, :cond_0

    .line 290
    .line 304
    :goto_0
    return-void

    .line 292
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 293
    .local v2, "value":I
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/Guideline;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 294
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setX(I)V

    .line 295
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setY(I)V

    .line 296
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setHeight(I)V

    .line 297
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setWidth(I)V

    .line 304
    :goto_1
    goto :goto_0

    .line 299
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setX(I)V

    .line 300
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setY(I)V

    .line 301
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setWidth(I)V

    .line 302
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setHeight(I)V

    goto :goto_1
.end method
