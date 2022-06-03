.class Landroidx/constraintlayout/solver/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Chain;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;I)V
    .locals 13

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "constraintWidgetContainer":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move v2, p2

    .local v2, "orientation":I
    const/4 v8, 0x0

    move v3, v8

    .line 47
    .local v3, "offset":I
    const/4 v8, 0x0

    move v4, v8

    .line 48
    .local v4, "chainsSize":I
    const/4 v8, 0x0

    move-object v5, v8

    .line 49
    .local v5, "chainsArray":[Landroidx/constraintlayout/solver/widgets/ChainHead;
    move v8, v2

    if-nez v8, :cond_1

    .line 50
    const/4 v8, 0x0

    move v3, v8

    .line 51
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    move v4, v8

    .line 52
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    move-object v5, v8

    .line 59
    :goto_0
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    move v9, v4

    if-ge v8, v9, :cond_3

    .line 60
    move-object v8, v5

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 63
    .local v7, "first":Landroidx/constraintlayout/solver/widgets/ChainHead;
    move-object v8, v7

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ChainHead;->define()V

    .line 64
    move-object v8, v0

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 65
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v3

    move-object v12, v7

    invoke-static {v8, v9, v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/Optimizer;->applyChainOptimized(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 66
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v3

    move-object v12, v7

    invoke-static {v8, v9, v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)V

    .line 59
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 54
    .end local v6    # "i":I
    .end local v7    # "first":Landroidx/constraintlayout/solver/widgets/ChainHead;
    :cond_1
    const/4 v8, 0x2

    move v3, v8

    .line 55
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    move v4, v8

    .line 56
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    move-object v5, v8

    goto :goto_0

    .line 69
    .restart local v6    # "i":I
    .restart local v7    # "first":Landroidx/constraintlayout/solver/widgets/ChainHead;
    :cond_2
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v3

    move-object v12, v7

    invoke-static {v8, v9, v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)V

    goto :goto_2

    .line 72
    .end local v7    # "first":Landroidx/constraintlayout/solver/widgets/ChainHead;
    :cond_3
    return-void
.end method

.method static applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)V
    .locals 45

    .prologue
    .line 86
    move-object/from16 v2, p0

    .local v2, "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object/from16 v3, p1

    .local v3, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move/from16 v4, p2

    .local v4, "orientation":I
    move/from16 v5, p3

    .local v5, "offset":I
    move-object/from16 v6, p4

    .local v6, "chainHead":Landroidx/constraintlayout/solver/widgets/ChainHead;
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v7, v36

    .line 87
    .local v7, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v8, v36

    .line 88
    .local v8, "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v9, v36

    .line 89
    .local v9, "firstVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v10, v36

    .line 90
    .local v10, "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v11, v36

    .line 92
    .local v11, "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v36, v7

    move-object/from16 v12, v36

    .line 93
    .local v12, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/16 v36, 0x0

    move-object/from16 v13, v36

    .line 94
    .local v13, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/16 v36, 0x0

    move/from16 v14, v36

    .line 96
    .local v14, "done":Z
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    move/from16 v36, v0

    move/from16 v15, v36

    .line 97
    .local v15, "totalWeights":F
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v16, v36

    .line 98
    .local v16, "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v17, v36

    .line 100
    .local v17, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget-object v36, v36, v37

    sget-object v37, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_9

    const/16 v36, 0x1

    :goto_0
    move/from16 v18, v36

    .line 101
    .local v18, "isWrapContent":Z
    const/16 v36, 0x0

    move/from16 v19, v36

    .line 102
    .local v19, "isChainSpread":Z
    const/16 v36, 0x0

    move/from16 v20, v36

    .line 103
    .local v20, "isChainSpreadInside":Z
    const/16 v36, 0x0

    move/from16 v21, v36

    .line 105
    .local v21, "isChainPacked":Z
    move/from16 v36, v4

    if-nez v36, :cond_d

    .line 106
    move-object/from16 v36, v11

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v36, v0

    if-nez v36, :cond_a

    const/16 v36, 0x1

    :goto_1
    move/from16 v19, v36

    .line 107
    move-object/from16 v36, v11

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_b

    const/16 v36, 0x1

    :goto_2
    move/from16 v20, v36

    .line 108
    move-object/from16 v36, v11

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_c

    const/16 v36, 0x1

    :goto_3
    move/from16 v21, v36

    .line 119
    :goto_4
    move/from16 v36, v14

    if-nez v36, :cond_15

    .line 120
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v22, v36

    .line 121
    .local v22, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/16 v36, 0x4

    move/from16 v23, v36

    .line 122
    .local v23, "strength":I
    move/from16 v36, v18

    if-nez v36, :cond_0

    move/from16 v36, v21

    if-eqz v36, :cond_1

    .line 123
    :cond_0
    const/16 v36, 0x1

    move/from16 v23, v36

    .line 125
    :cond_1
    move-object/from16 v36, v22

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v24, v36

    .line 127
    .local v24, "margin":I
    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_2

    move-object/from16 v36, v12

    move-object/from16 v37, v7

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_2

    .line 128
    move/from16 v36, v24

    move-object/from16 v37, v22

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v37

    add-int v36, v36, v37

    move/from16 v24, v36

    .line 131
    :cond_2
    move/from16 v36, v21

    if-eqz v36, :cond_11

    move-object/from16 v36, v12

    move-object/from16 v37, v7

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_11

    move-object/from16 v36, v12

    move-object/from16 v37, v9

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_11

    .line 132
    const/16 v36, 0x6

    move/from16 v23, v36

    .line 139
    :cond_3
    :goto_5
    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_4

    .line 140
    move-object/from16 v36, v12

    move-object/from16 v37, v9

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_12

    .line 141
    move-object/from16 v36, v3

    move-object/from16 v37, v22

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v22

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v38, v0

    move/from16 v39, v24

    const/16 v40, 0x5

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 147
    :goto_6
    move-object/from16 v36, v3

    move-object/from16 v37, v22

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v22

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v38, v0

    move/from16 v39, v24

    move/from16 v40, v23

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v36

    .line 151
    :cond_4
    move/from16 v36, v18

    if-eqz v36, :cond_6

    .line 152
    move-object/from16 v36, v12

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_5

    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget-object v36, v36, v37

    sget-object v37, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_5

    .line 154
    move-object/from16 v36, v3

    move-object/from16 v37, v12

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    move/from16 v38, v5

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v12

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move/from16 v39, v5

    aget-object v38, v38, v39

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x5

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 158
    :cond_5
    move-object/from16 v36, v3

    move-object/from16 v37, v12

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    move/from16 v38, v5

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move/from16 v39, v5

    aget-object v38, v38, v39

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x6

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 164
    :cond_6
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v25, v36

    .line 165
    .local v25, "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v36, v25

    if-eqz v36, :cond_13

    .line 166
    move-object/from16 v36, v25

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v13, v36

    .line 167
    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_7

    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move-object/from16 v37, v12

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_8

    .line 168
    :cond_7
    const/16 v36, 0x0

    move-object/from16 v13, v36

    .line 173
    :cond_8
    :goto_7
    move-object/from16 v36, v13

    if-eqz v36, :cond_14

    .line 174
    move-object/from16 v36, v13

    move-object/from16 v12, v36

    .line 178
    :goto_8
    goto/16 :goto_4

    .line 100
    .end local v18    # "isWrapContent":Z
    .end local v19    # "isChainSpread":Z
    .end local v20    # "isChainSpreadInside":Z
    .end local v21    # "isChainPacked":Z
    .end local v22    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v23    # "strength":I
    .end local v24    # "margin":I
    .end local v25    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_9
    const/16 v36, 0x0

    goto/16 :goto_0

    .line 106
    .restart local v18    # "isWrapContent":Z
    .restart local v19    # "isChainSpread":Z
    .restart local v20    # "isChainSpreadInside":Z
    .restart local v21    # "isChainPacked":Z
    :cond_a
    const/16 v36, 0x0

    goto/16 :goto_1

    .line 107
    :cond_b
    const/16 v36, 0x0

    goto/16 :goto_2

    .line 108
    :cond_c
    const/16 v36, 0x0

    goto/16 :goto_3

    .line 110
    :cond_d
    move-object/from16 v36, v11

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v36, v0

    if-nez v36, :cond_e

    const/16 v36, 0x1

    :goto_9
    move/from16 v19, v36

    .line 111
    move-object/from16 v36, v11

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_f

    const/16 v36, 0x1

    :goto_a
    move/from16 v20, v36

    .line 112
    move-object/from16 v36, v11

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_10

    const/16 v36, 0x1

    :goto_b
    move/from16 v21, v36

    goto/16 :goto_4

    .line 110
    :cond_e
    const/16 v36, 0x0

    goto :goto_9

    .line 111
    :cond_f
    const/16 v36, 0x0

    goto :goto_a

    .line 112
    :cond_10
    const/16 v36, 0x0

    goto :goto_b

    .line 133
    .restart local v22    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v23    # "strength":I
    .restart local v24    # "margin":I
    :cond_11
    move/from16 v36, v19

    if-eqz v36, :cond_3

    move/from16 v36, v18

    if-eqz v36, :cond_3

    .line 136
    const/16 v36, 0x4

    move/from16 v23, v36

    goto/16 :goto_5

    .line 144
    :cond_12
    move-object/from16 v36, v3

    move-object/from16 v37, v22

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v22

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v38, v0

    move/from16 v39, v24

    const/16 v40, 0x6

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_6

    .line 171
    .restart local v25    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_13
    const/16 v36, 0x0

    move-object/from16 v13, v36

    goto/16 :goto_7

    .line 176
    :cond_14
    const/16 v36, 0x1

    move/from16 v14, v36

    goto/16 :goto_8

    .line 181
    .end local v22    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v23    # "strength":I
    .end local v24    # "margin":I
    .end local v25    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_15
    move-object/from16 v36, v10

    if-eqz v36, :cond_16

    move-object/from16 v36, v8

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_16

    .line 182
    move-object/from16 v36, v10

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v22, v36

    .line 183
    .local v22, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v36, v3

    move-object/from16 v37, v22

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v8

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move/from16 v39, v5

    const/16 v40, 0x1

    add-int/lit8 v39, v39, 0x1

    aget-object v38, v38, v39

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v38, v0

    move-object/from16 v39, v22

    .line 184
    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v39

    move/from16 v0, v39

    neg-int v0, v0

    move/from16 v39, v0

    const/16 v40, 0x5

    .line 183
    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 189
    .end local v22    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_16
    move/from16 v36, v18

    if-eqz v36, :cond_17

    .line 190
    move-object/from16 v36, v3

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    move/from16 v38, v5

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v8

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move/from16 v39, v5

    const/16 v40, 0x1

    add-int/lit8 v39, v39, 0x1

    aget-object v38, v38, v39

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v38, v0

    move-object/from16 v39, v8

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v39, v0

    move/from16 v40, v5

    const/16 v41, 0x1

    add-int/lit8 v40, v40, 0x1

    aget-object v39, v39, v40

    .line 192
    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v39

    const/16 v40, 0x6

    .line 190
    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 196
    :cond_17
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    move-object/from16 v22, v36

    .line 197
    .local v22, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    move-object/from16 v36, v22

    if-eqz v36, :cond_1d

    .line 198
    move-object/from16 v36, v22

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v23, v36

    .line 199
    .local v23, "count":I
    move/from16 v36, v23

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_1d

    .line 200
    const/16 v36, 0x0

    move-object/from16 v24, v36

    .line 201
    .local v24, "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/16 v36, 0x0

    move/from16 v25, v36

    .line 203
    .local v25, "lastWeight":F
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    move/from16 v36, v0

    if-eqz v36, :cond_18

    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    move/from16 v36, v0

    if-nez v36, :cond_18

    .line 204
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v15, v36

    .line 207
    :cond_18
    const/16 v36, 0x0

    move/from16 v26, v36

    .local v26, "i":I
    :goto_c
    move/from16 v36, v26

    move/from16 v37, v23

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_1d

    .line 208
    move-object/from16 v36, v22

    move/from16 v37, v26

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v27, v36

    .line 209
    .local v27, "match":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget v36, v36, v37

    move/from16 v28, v36

    .line 211
    .local v28, "currentWeight":F
    move/from16 v36, v28

    const/16 v37, 0x0

    cmpg-float v36, v36, v37

    if-gez v36, :cond_1a

    .line 212
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    move/from16 v36, v0

    if-eqz v36, :cond_19

    .line 213
    move-object/from16 v36, v3

    move-object/from16 v37, v27

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    move/from16 v38, v5

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v27

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move/from16 v39, v5

    aget-object v38, v38, v39

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x4

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v36

    .line 215
    .line 207
    :goto_d
    add-int/lit8 v26, v26, 0x1

    goto :goto_c

    .line 217
    :cond_19
    const/high16 v36, 0x3f800000    # 1.0f

    move/from16 v28, v36

    .line 219
    :cond_1a
    move/from16 v36, v28

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-nez v36, :cond_1b

    .line 220
    move-object/from16 v36, v3

    move-object/from16 v37, v27

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    move/from16 v38, v5

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    aget-object v37, v37, v38

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v27

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v38, v0

    move/from16 v39, v5

    aget-object v38, v38, v39

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x6

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v36

    .line 222
    goto :goto_d

    .line 225
    :cond_1b
    move-object/from16 v36, v24

    if-eqz v36, :cond_1c

    .line 226
    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v29, v36

    .line 227
    .local v29, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v30, v36

    .line 228
    .local v30, "end":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v31, v36

    .line 229
    .local v31, "nextBegin":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v32, v36

    .line 230
    .local v32, "nextEnd":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v36

    move-object/from16 v33, v36

    .line 231
    .local v33, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object/from16 v36, v33

    move/from16 v37, v25

    move/from16 v38, v15

    move/from16 v39, v28

    move-object/from16 v40, v29

    move-object/from16 v41, v30

    move-object/from16 v42, v31

    move-object/from16 v43, v32

    invoke-virtual/range {v36 .. v43}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v36

    .line 233
    move-object/from16 v36, v3

    move-object/from16 v37, v33

    invoke-virtual/range {v36 .. v37}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 236
    .end local v29    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v30    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v31    # "nextBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v32    # "nextEnd":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v33    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_1c
    move-object/from16 v36, v27

    move-object/from16 v24, v36

    .line 237
    move/from16 v36, v28

    move/from16 v25, v36

    goto/16 :goto_d

    .line 254
    .end local v23    # "count":I
    .end local v24    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v25    # "lastWeight":F
    .end local v26    # "i":I
    .end local v27    # "match":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v28    # "currentWeight":F
    :cond_1d
    move-object/from16 v36, v9

    if-eqz v36, :cond_29

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_1e

    move/from16 v36, v21

    if-eqz v36, :cond_29

    .line 255
    :cond_1e
    move-object/from16 v36, v7

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v23, v36

    .line 256
    .local v23, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v36, v8

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v24, v36

    .line 257
    .local v24, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v36, v7

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_26

    move-object/from16 v36, v7

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    :goto_e
    move-object/from16 v25, v36

    .line 258
    .local v25, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v36, v8

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_27

    move-object/from16 v36, v8

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    :goto_f
    move-object/from16 v26, v36

    .line 259
    .local v26, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_1f

    .line 260
    move-object/from16 v36, v9

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v23, v36

    .line 261
    move-object/from16 v36, v9

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v24, v36

    .line 263
    :cond_1f
    move-object/from16 v36, v25

    if-eqz v36, :cond_20

    move-object/from16 v36, v26

    if-eqz v36, :cond_20

    .line 264
    const/high16 v36, 0x3f000000    # 0.5f

    move/from16 v27, v36

    .line 265
    .local v27, "bias":F
    move/from16 v36, v4

    if-nez v36, :cond_28

    .line 266
    move-object/from16 v36, v11

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move/from16 v36, v0

    move/from16 v27, v36

    .line 270
    :goto_10
    move-object/from16 v36, v23

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v28, v36

    .line 271
    .local v28, "beginMargin":I
    move-object/from16 v36, v24

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v29, v36

    .line 272
    .local v29, "endMargin":I
    move-object/from16 v36, v3

    move-object/from16 v37, v23

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v25

    move/from16 v39, v28

    move/from16 v40, v27

    move-object/from16 v41, v26

    move-object/from16 v42, v24

    move-object/from16 v0, v42

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v42, v0

    move/from16 v43, v29

    const/16 v44, 0x5

    invoke-virtual/range {v36 .. v44}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 275
    .line 418
    .end local v23    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v24    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v25    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v26    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v27    # "bias":F
    .end local v28    # "beginMargin":I
    .end local v29    # "endMargin":I
    :cond_20
    :goto_11
    move/from16 v36, v19

    if-nez v36, :cond_21

    move/from16 v36, v20

    if-eqz v36, :cond_25

    :cond_21
    move-object/from16 v36, v9

    if-eqz v36, :cond_25

    .line 419
    move-object/from16 v36, v9

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v23, v36

    .line 420
    .restart local v23    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v36, v10

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v24, v36

    .line 421
    .restart local v24    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v36, v23

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_4b

    move-object/from16 v36, v23

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    :goto_12
    move-object/from16 v25, v36

    .line 422
    .restart local v25    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_4c

    move-object/from16 v36, v24

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    :goto_13
    move-object/from16 v26, v36

    .line 423
    .restart local v26    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v36, v8

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_22

    .line 424
    move-object/from16 v36, v8

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v27, v36

    .line 425
    .local v27, "realEnd":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_4d

    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    :goto_14
    move-object/from16 v26, v36

    .line 427
    .end local v27    # "realEnd":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_22
    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_23

    .line 428
    move-object/from16 v36, v9

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v23, v36

    .line 429
    move-object/from16 v36, v9

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v24, v36

    .line 431
    :cond_23
    move-object/from16 v36, v25

    if-eqz v36, :cond_25

    move-object/from16 v36, v26

    if-eqz v36, :cond_25

    .line 432
    const/high16 v36, 0x3f000000    # 0.5f

    move/from16 v27, v36

    .line 433
    .local v27, "bias":F
    move-object/from16 v36, v23

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v28, v36

    .line 434
    .restart local v28    # "beginMargin":I
    move-object/from16 v36, v10

    if-nez v36, :cond_24

    .line 436
    move-object/from16 v36, v8

    move-object/from16 v10, v36

    .line 438
    :cond_24
    move-object/from16 v36, v10

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v29, v36

    .line 439
    .restart local v29    # "endMargin":I
    move-object/from16 v36, v3

    move-object/from16 v37, v23

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v25

    move/from16 v39, v28

    move/from16 v40, v27

    move-object/from16 v41, v26

    move-object/from16 v42, v24

    move-object/from16 v0, v42

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v42, v0

    move/from16 v43, v29

    const/16 v44, 0x5

    invoke-virtual/range {v36 .. v44}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 443
    .end local v23    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v24    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v25    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v26    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v27    # "bias":F
    .end local v28    # "beginMargin":I
    .end local v29    # "endMargin":I
    :cond_25
    return-void

    .line 257
    .restart local v23    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v24    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_26
    const/16 v36, 0x0

    goto/16 :goto_e

    .line 258
    .restart local v25    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_27
    const/16 v36, 0x0

    goto/16 :goto_f

    .line 268
    .restart local v26    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v27    # "bias":F
    :cond_28
    move-object/from16 v36, v11

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v36, v0

    move/from16 v27, v36

    goto/16 :goto_10

    .line 275
    .end local v23    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v24    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v25    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v26    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v27    # "bias":F
    :cond_29
    move/from16 v36, v19

    if-eqz v36, :cond_3b

    move-object/from16 v36, v9

    if-eqz v36, :cond_3b

    .line 277
    move-object/from16 v36, v9

    move-object/from16 v12, v36

    .line 278
    move-object/from16 v36, v9

    move-object/from16 v23, v36

    .line 279
    .local v23, "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    move/from16 v36, v0

    if-lez v36, :cond_2a

    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    move/from16 v36, v0

    move-object/from16 v37, v6

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2a

    const/16 v36, 0x1

    :goto_15
    move/from16 v24, v36

    .line 280
    .local v24, "applyFixedEquality":Z
    :goto_16
    move-object/from16 v36, v12

    if-eqz v36, :cond_3a

    .line 281
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget-object v36, v36, v37

    move-object/from16 v13, v36

    .line 282
    :goto_17
    move-object/from16 v36, v13

    if-eqz v36, :cond_2b

    move-object/from16 v36, v13

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2b

    .line 283
    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget-object v36, v36, v37

    move-object/from16 v13, v36

    goto :goto_17

    .line 279
    .end local v24    # "applyFixedEquality":Z
    :cond_2a
    const/16 v36, 0x0

    goto :goto_15

    .line 285
    .restart local v24    # "applyFixedEquality":Z
    :cond_2b
    move-object/from16 v36, v13

    if-nez v36, :cond_2c

    move-object/from16 v36, v12

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_33

    .line 286
    :cond_2c
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v25, v36

    .line 287
    .local v25, "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v36, v25

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v26, v36

    .line 288
    .local v26, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v36, v25

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_35

    move-object/from16 v36, v25

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    :goto_18
    move-object/from16 v27, v36

    .line 289
    .local v27, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v36, v23

    move-object/from16 v37, v12

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_36

    .line 290
    move-object/from16 v36, v23

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v27, v36

    .line 295
    :cond_2d
    :goto_19
    const/16 v36, 0x0

    move-object/from16 v28, v36

    .line 296
    .local v28, "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/16 v36, 0x0

    move-object/from16 v29, v36

    .line 297
    .local v29, "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    const/16 v36, 0x0

    move-object/from16 v30, v36

    .line 298
    .local v30, "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v36, v25

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v31, v36

    .line 299
    .local v31, "beginMargin":I
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v32, v36

    .line 301
    .local v32, "nextMargin":I
    move-object/from16 v36, v13

    if-eqz v36, :cond_38

    .line 302
    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v28, v36

    .line 303
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v29, v36

    .line 304
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v30, v36

    .line 313
    :goto_1a
    move-object/from16 v36, v28

    if-eqz v36, :cond_2e

    .line 314
    move/from16 v36, v32

    move-object/from16 v37, v28

    invoke-virtual/range {v37 .. v37}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v37

    add-int v36, v36, v37

    move/from16 v32, v36

    .line 316
    :cond_2e
    move-object/from16 v36, v23

    if-eqz v36, :cond_2f

    .line 317
    move/from16 v36, v31

    move-object/from16 v37, v23

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    move/from16 v38, v5

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v37

    add-int v36, v36, v37

    move/from16 v31, v36

    .line 319
    :cond_2f
    move-object/from16 v36, v26

    if-eqz v36, :cond_33

    move-object/from16 v36, v27

    if-eqz v36, :cond_33

    move-object/from16 v36, v29

    if-eqz v36, :cond_33

    move-object/from16 v36, v30

    if-eqz v36, :cond_33

    .line 320
    move/from16 v36, v31

    move/from16 v33, v36

    .line 321
    .local v33, "margin1":I
    move-object/from16 v36, v12

    move-object/from16 v37, v9

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_30

    .line 322
    move-object/from16 v36, v9

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v33, v36

    .line 324
    :cond_30
    move/from16 v36, v32

    move/from16 v34, v36

    .line 325
    .local v34, "margin2":I
    move-object/from16 v36, v12

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_31

    .line 326
    move-object/from16 v36, v10

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v34, v36

    .line 328
    :cond_31
    const/16 v36, 0x4

    move/from16 v35, v36

    .line 329
    .local v35, "strength":I
    move/from16 v36, v24

    if-eqz v36, :cond_32

    .line 330
    const/16 v36, 0x6

    move/from16 v35, v36

    .line 332
    :cond_32
    move-object/from16 v36, v3

    move-object/from16 v37, v26

    move-object/from16 v38, v27

    move/from16 v39, v33

    const/high16 v40, 0x3f000000    # 0.5f

    move-object/from16 v41, v29

    move-object/from16 v42, v30

    move/from16 v43, v34

    move/from16 v44, v35

    invoke-virtual/range {v36 .. v44}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 337
    .end local v25    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v26    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v27    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v28    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v29    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v30    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v31    # "beginMargin":I
    .end local v32    # "nextMargin":I
    .end local v33    # "margin1":I
    .end local v34    # "margin2":I
    .end local v35    # "strength":I
    :cond_33
    move-object/from16 v36, v12

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_34

    .line 338
    move-object/from16 v36, v12

    move-object/from16 v23, v36

    .line 340
    :cond_34
    move-object/from16 v36, v13

    move-object/from16 v12, v36

    goto/16 :goto_16

    .line 288
    .restart local v25    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v26    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_35
    const/16 v36, 0x0

    goto/16 :goto_18

    .line 291
    .restart local v27    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_36
    move-object/from16 v36, v12

    move-object/from16 v37, v9

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_2d

    move-object/from16 v36, v23

    move-object/from16 v37, v12

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_2d

    .line 292
    move-object/from16 v36, v7

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_37

    move-object/from16 v36, v7

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    :goto_1b
    move-object/from16 v27, v36

    goto/16 :goto_19

    :cond_37
    const/16 v36, 0x0

    goto :goto_1b

    .line 306
    .restart local v28    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v29    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v30    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v31    # "beginMargin":I
    .restart local v32    # "nextMargin":I
    :cond_38
    move-object/from16 v36, v8

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v28, v36

    .line 307
    move-object/from16 v36, v28

    if-eqz v36, :cond_39

    .line 308
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v29, v36

    .line 310
    :cond_39
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v30, v36

    goto/16 :goto_1a

    .line 342
    .end local v25    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v26    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v27    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v28    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v29    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v30    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v31    # "beginMargin":I
    .end local v32    # "nextMargin":I
    :cond_3a
    goto/16 :goto_11

    .end local v23    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v24    # "applyFixedEquality":Z
    :cond_3b
    move/from16 v36, v20

    if-eqz v36, :cond_20

    move-object/from16 v36, v9

    if-eqz v36, :cond_20

    .line 344
    move-object/from16 v36, v9

    move-object/from16 v12, v36

    .line 345
    move-object/from16 v36, v9

    move-object/from16 v23, v36

    .line 346
    .restart local v23    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    move/from16 v36, v0

    if-lez v36, :cond_3c

    move-object/from16 v36, v6

    move-object/from16 v0, v36

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    move/from16 v36, v0

    move-object/from16 v37, v6

    move-object/from16 v0, v37

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_3c

    const/16 v36, 0x1

    :goto_1c
    move/from16 v24, v36

    .line 347
    .restart local v24    # "applyFixedEquality":Z
    :goto_1d
    move-object/from16 v36, v12

    if-eqz v36, :cond_48

    .line 348
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget-object v36, v36, v37

    move-object/from16 v13, v36

    .line 349
    :goto_1e
    move-object/from16 v36, v13

    if-eqz v36, :cond_3d

    move-object/from16 v36, v13

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_3d

    .line 350
    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v36, v0

    move/from16 v37, v4

    aget-object v36, v36, v37

    move-object/from16 v13, v36

    goto :goto_1e

    .line 346
    .end local v24    # "applyFixedEquality":Z
    :cond_3c
    const/16 v36, 0x0

    goto :goto_1c

    .line 352
    .restart local v24    # "applyFixedEquality":Z
    :cond_3d
    move-object/from16 v36, v12

    move-object/from16 v37, v9

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_42

    move-object/from16 v36, v12

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_42

    move-object/from16 v36, v13

    if-eqz v36, :cond_42

    .line 353
    move-object/from16 v36, v13

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_3e

    .line 354
    const/16 v36, 0x0

    move-object/from16 v13, v36

    .line 356
    :cond_3e
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v25, v36

    .line 357
    .restart local v25    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v36, v25

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v26, v36

    .line 358
    .restart local v26    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v36, v25

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_44

    move-object/from16 v36, v25

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    :goto_1f
    move-object/from16 v27, v36

    .line 359
    .restart local v27    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v36, v23

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v27, v36

    .line 360
    const/16 v36, 0x0

    move-object/from16 v28, v36

    .line 361
    .restart local v28    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/16 v36, 0x0

    move-object/from16 v29, v36

    .line 362
    .restart local v29    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    const/16 v36, 0x0

    move-object/from16 v30, v36

    .line 363
    .restart local v30    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v36, v25

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v31, v36

    .line 364
    .restart local v31    # "beginMargin":I
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v32, v36

    .line 366
    .restart local v32    # "nextMargin":I
    move-object/from16 v36, v13

    if-eqz v36, :cond_46

    .line 367
    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v28, v36

    .line 368
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v29, v36

    .line 369
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    if-eqz v36, :cond_45

    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    :goto_20
    move-object/from16 v30, v36

    .line 378
    :goto_21
    move-object/from16 v36, v28

    if-eqz v36, :cond_3f

    .line 379
    move/from16 v36, v32

    move-object/from16 v37, v28

    invoke-virtual/range {v37 .. v37}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v37

    add-int v36, v36, v37

    move/from16 v32, v36

    .line 381
    :cond_3f
    move-object/from16 v36, v23

    if-eqz v36, :cond_40

    .line 382
    move/from16 v36, v31

    move-object/from16 v37, v23

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    move/from16 v38, v5

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v37

    add-int v36, v36, v37

    move/from16 v31, v36

    .line 384
    :cond_40
    const/16 v36, 0x4

    move/from16 v33, v36

    .line 385
    .local v33, "strength":I
    move/from16 v36, v24

    if-eqz v36, :cond_41

    .line 386
    const/16 v36, 0x6

    move/from16 v33, v36

    .line 388
    :cond_41
    move-object/from16 v36, v26

    if-eqz v36, :cond_42

    move-object/from16 v36, v27

    if-eqz v36, :cond_42

    move-object/from16 v36, v29

    if-eqz v36, :cond_42

    move-object/from16 v36, v30

    if-eqz v36, :cond_42

    .line 389
    move-object/from16 v36, v3

    move-object/from16 v37, v26

    move-object/from16 v38, v27

    move/from16 v39, v31

    const/high16 v40, 0x3f000000    # 0.5f

    move-object/from16 v41, v29

    move-object/from16 v42, v30

    move/from16 v43, v32

    move/from16 v44, v33

    invoke-virtual/range {v36 .. v44}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 394
    .end local v25    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v26    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v27    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v28    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v29    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v30    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v31    # "beginMargin":I
    .end local v32    # "nextMargin":I
    .end local v33    # "strength":I
    :cond_42
    move-object/from16 v36, v12

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v36

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_43

    .line 395
    move-object/from16 v36, v12

    move-object/from16 v23, v36

    .line 397
    :cond_43
    move-object/from16 v36, v13

    move-object/from16 v12, v36

    goto/16 :goto_1d

    .line 358
    .restart local v25    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v26    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_44
    const/16 v36, 0x0

    goto/16 :goto_1f

    .line 369
    .restart local v27    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v28    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v29    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v30    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v31    # "beginMargin":I
    .restart local v32    # "nextMargin":I
    :cond_45
    const/16 v36, 0x0

    goto :goto_20

    .line 371
    :cond_46
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v28, v36

    .line 372
    move-object/from16 v36, v28

    if-eqz v36, :cond_47

    .line 373
    move-object/from16 v36, v28

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v29, v36

    .line 375
    :cond_47
    move-object/from16 v36, v12

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v36, v0

    move-object/from16 v30, v36

    goto/16 :goto_21

    .line 399
    .end local v25    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v26    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v27    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v28    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v29    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v30    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v31    # "beginMargin":I
    .end local v32    # "nextMargin":I
    :cond_48
    move-object/from16 v36, v9

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v25, v36

    .line 400
    .local v25, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v36, v7

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v26, v36

    .line 401
    .local v26, "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v36, v10

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v27, v36

    .line 402
    .local v27, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v36, v8

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v5

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move-object/from16 v28, v36

    .line 403
    .local v28, "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v36, v26

    if-eqz v36, :cond_49

    .line 404
    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_4a

    .line 405
    move-object/from16 v36, v3

    move-object/from16 v37, v25

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v26

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v38, v0

    move-object/from16 v39, v25

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v39

    const/16 v40, 0x5

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v36

    .line 411
    :cond_49
    :goto_22
    move-object/from16 v36, v28

    if-eqz v36, :cond_20

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_20

    .line 412
    move-object/from16 v36, v3

    move-object/from16 v37, v27

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v38, v0

    move-object/from16 v39, v27

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v39

    move/from16 v0, v39

    neg-int v0, v0

    move/from16 v39, v0

    const/16 v40, 0x5

    invoke-virtual/range {v36 .. v40}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v36

    goto/16 :goto_11

    .line 406
    :cond_4a
    move-object/from16 v36, v28

    if-eqz v36, :cond_49

    .line 407
    move-object/from16 v36, v3

    move-object/from16 v37, v25

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v37, v0

    move-object/from16 v38, v26

    move-object/from16 v0, v38

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v38, v0

    move-object/from16 v39, v25

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v39

    const/high16 v40, 0x3f000000    # 0.5f

    move-object/from16 v41, v27

    move-object/from16 v0, v41

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v41, v0

    move-object/from16 v42, v28

    move-object/from16 v0, v42

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v42, v0

    move-object/from16 v43, v27

    .line 408
    invoke-virtual/range {v43 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v43

    const/16 v44, 0x5

    .line 407
    invoke-virtual/range {v36 .. v44}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_22

    .line 421
    .end local v25    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v26    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v27    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v28    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v23, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v24, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_4b
    const/16 v36, 0x0

    goto/16 :goto_12

    .line 422
    .local v25, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_4c
    const/16 v36, 0x0

    goto/16 :goto_13

    .line 425
    .local v26, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v27, "realEnd":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_4d
    const/16 v36, 0x0

    goto/16 :goto_14
.end method
