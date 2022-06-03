.class public Landroidx/constraintlayout/solver/widgets/Analyzer;
.super Ljava/lang/Object;
.source "Analyzer.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Analyzer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static determineGroups(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 13

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "layoutWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v10

    const/16 v11, 0x20

    and-int/lit8 v10, v10, 0x20

    const/16 v11, 0x20

    if-eq v10, v11, :cond_0

    .line 46
    move-object v10, v0

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Analyzer;->singleGroup(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 47
    .line 100
    :goto_0
    return-void

    .line 49
    :cond_0
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 50
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 51
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 52
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 53
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object v1, v10

    .line 54
    .local v1, "widgets":Ljava/util/List;, "Ljava/util/List<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object v2, v10

    .line 55
    .local v2, "widgetGroups":Ljava/util/List;, "Ljava/util/List<Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;>;"
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_1
    move v3, v10

    .line 56
    .local v3, "horizontalWrapContent":Z
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_3

    const/4 v10, 0x1

    :goto_2
    move v4, v10

    .line 57
    .local v4, "verticalWrapContent":Z
    move v10, v3

    if-nez v10, :cond_1

    move v10, v4

    if-eqz v10, :cond_4

    :cond_1
    const/4 v10, 0x1

    :goto_3
    move v5, v10

    .line 58
    .local v5, "hasWrapContent":Z
    move-object v10, v2

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 60
    move-object v10, v1

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v10

    :goto_4
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v7, v10

    .line 61
    .local v7, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v10, v7

    const/4 v11, 0x0

    iput-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    .line 62
    move-object v10, v7

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 63
    move-object v10, v7

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetResolutionNodes()V

    .line 64
    goto :goto_4

    .line 55
    .end local v3    # "horizontalWrapContent":Z
    .end local v4    # "verticalWrapContent":Z
    .end local v5    # "hasWrapContent":Z
    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 56
    .restart local v3    # "horizontalWrapContent":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 57
    .restart local v4    # "verticalWrapContent":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 65
    .restart local v5    # "hasWrapContent":Z
    :cond_5
    move-object v10, v1

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v10

    :goto_5
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v7, v10

    .line 66
    .restart local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v10, v7

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    if-nez v10, :cond_6

    .line 67
    move-object v10, v7

    move-object v11, v2

    move v12, v5

    invoke-static {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/Analyzer;->determineGroups(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/List;Z)Z

    move-result v10

    if-nez v10, :cond_6

    .line 68
    move-object v10, v0

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Analyzer;->singleGroup(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 69
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 70
    goto/16 :goto_0

    .line 73
    :cond_6
    goto :goto_5

    .line 74
    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_7
    const/4 v10, 0x0

    move v6, v10

    .line 75
    .local v6, "measuredWidth":I
    const/4 v10, 0x0

    move v7, v10

    .line 77
    .local v7, "measuredHeight":I
    move-object v10, v2

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v10

    :goto_6
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    move-object v9, v10

    .line 78
    .local v9, "group":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    move v10, v6

    move-object v11, v9

    const/4 v12, 0x0

    .line 79
    invoke-static {v11, v12}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getMaxDimension(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;I)I

    move-result v11

    .line 78
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v6, v10

    .line 80
    move v10, v7

    move-object v11, v9

    const/4 v12, 0x1

    .line 81
    invoke-static {v11, v12}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getMaxDimension(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;I)I

    move-result v11

    .line 80
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v7, v10

    .line 82
    goto :goto_6

    .line 84
    .end local v9    # "group":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    :cond_8
    move v10, v3

    if-eqz v10, :cond_9

    .line 85
    move-object v10, v0

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 86
    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 87
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 88
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 89
    move-object v10, v0

    move v11, v6

    iput v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    .line 91
    :cond_9
    move v10, v4

    if-eqz v10, :cond_a

    .line 92
    move-object v10, v0

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 93
    move-object v10, v0

    move v11, v7

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 94
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 95
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 96
    move-object v10, v0

    move v11, v7

    iput v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    .line 98
    :cond_a
    move-object v10, v2

    const/4 v11, 0x0

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v12

    invoke-static {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    .line 99
    move-object v10, v2

    const/4 v11, 0x1

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v12

    invoke-static {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    .line 100
    goto/16 :goto_0
.end method

.method private static determineGroups(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/List;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/List",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "widgetGroups":Ljava/util/List;, "Ljava/util/List<Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;>;"
    move v2, p2

    .local v2, "hasWrapContent":Z
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;-><init>(Ljava/util/List;Z)V

    move-object v3, v4

    .line 111
    .local v3, "traverseList":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 112
    move-object v4, v0

    move-object v5, v3

    move-object v6, v1

    move v7, v2

    invoke-static {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/Analyzer;->traverse(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z

    move-result v4

    move v0, v4

    .end local v0    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0
.end method

.method private static getMaxDimension(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;I)I
    .locals 14

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "group":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    move v1, p1

    .local v1, "orientation":I
    const/4 v9, 0x0

    move v2, v9

    .line 275
    .local v2, "dimension":I
    move v9, v1

    const/4 v10, 0x2

    mul-int/lit8 v9, v9, 0x2

    move v3, v9

    .line 276
    .local v3, "offset":I
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->getStartWidgets(I)Ljava/util/List;

    move-result-object v9

    move-object v4, v9

    .line 277
    .local v4, "startWidgets":Ljava/util/List;, "Ljava/util/List<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v5, v9

    .line 278
    .local v5, "size":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_0
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_2

    .line 279
    move-object v9, v4

    move v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v7, v9

    .line 280
    .local v7, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v9, v7

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-object v9, v9, v10

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_0

    move-object v9, v7

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v10, v3

    aget-object v9, v9, v10

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_1

    move-object v9, v7

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-object v9, v9, v10

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_1

    :cond_0
    const/4 v9, 0x1

    :goto_1
    move v8, v9

    .line 283
    .local v8, "topLeftFlow":Z
    move v9, v2

    move-object v10, v7

    move v11, v1

    move v12, v8

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZI)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v2, v9

    .line 278
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 280
    .end local v8    # "topLeftFlow":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 286
    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupDimensions:[I

    move v10, v1

    move v11, v2

    aput v11, v9, v10

    .line 287
    move v9, v2

    move v0, v9

    .end local v0    # "group":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    return v0
.end method

.method private static getMaxDimensionTraversal(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZI)I
    .locals 28

    .prologue
    .line 304
    move-object/from16 v2, p0

    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v3, p1

    .local v3, "orientation":I
    move/from16 v4, p2

    .local v4, "topLeftFlow":Z
    move/from16 v5, p3

    .local v5, "depth":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 305
    const/16 v22, 0x0

    move/from16 v2, v22

    .line 413
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    return v2

    .line 309
    .restart local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    const/16 v22, 0x0

    move/from16 v8, v22

    .line 310
    .local v8, "dimension":I
    const/16 v22, 0x0

    move/from16 v9, v22

    .line 311
    .local v9, "dimensionPre":I
    const/16 v22, 0x0

    move/from16 v10, v22

    .line 316
    .local v10, "dimensionPost":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    move/from16 v22, v3

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/16 v22, 0x1

    :goto_1
    move/from16 v14, v22

    .line 318
    .local v14, "hasBaseline":Z
    move/from16 v22, v4

    if-eqz v22, :cond_3

    .line 319
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v22

    move/from16 v12, v22

    .line 320
    .local v12, "baselinePreDistance":I
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v22

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v13, v22

    .line 321
    .local v13, "baselinePostDistance":I
    move/from16 v22, v3

    const/16 v23, 0x2

    mul-int/lit8 v22, v22, 0x2

    move/from16 v6, v22

    .line 322
    .local v6, "startOffset":I
    move/from16 v22, v6

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v7, v22

    .line 332
    .local v7, "endOffset":I
    :goto_2
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    move/from16 v23, v7

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    move/from16 v23, v6

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    .line 333
    const/16 v22, -0x1

    move/from16 v11, v22

    .line 334
    .local v11, "flow":I
    move/from16 v22, v6

    move/from16 v15, v22

    .line 335
    .local v15, "aux":I
    move/from16 v22, v7

    move/from16 v6, v22

    .line 336
    move/from16 v22, v15

    move/from16 v7, v22

    .line 341
    .end local v15    # "aux":I
    :goto_3
    move/from16 v22, v14

    if-eqz v22, :cond_1

    .line 342
    move/from16 v22, v5

    move/from16 v23, v12

    sub-int v22, v22, v23

    move/from16 v5, v22

    .line 345
    :cond_1
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    move/from16 v23, v6

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v22

    move/from16 v23, v11

    mul-int v22, v22, v23

    move-object/from16 v23, v2

    move/from16 v24, v3

    invoke-static/range {v23 .. v24}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getParentBiasOffset(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v8, v22

    .line 346
    move/from16 v22, v8

    move/from16 v23, v5

    add-int v22, v22, v23

    move/from16 v15, v22

    .line 347
    .local v15, "downDepth":I
    move/from16 v22, v3

    if-nez v22, :cond_5

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v22

    :goto_4
    move/from16 v23, v11

    mul-int v22, v22, v23

    move/from16 v16, v22

    .line 348
    .local v16, "postTemp":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    move/from16 v23, v6

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v17, v22

    :goto_5
    move-object/from16 v22, v17

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v22, v17

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/constraintlayout/solver/widgets/ResolutionNode;

    move-object/from16 v18, v22

    .line 349
    .local v18, "targetNode":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    move-object/from16 v22, v18

    check-cast v22, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v19, v22

    .line 350
    .local v19, "anchor":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move/from16 v22, v9

    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v15

    invoke-static/range {v23 .. v26}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZI)I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v9, v22

    .line 351
    goto :goto_5

    .line 316
    .end local v6    # "startOffset":I
    .end local v7    # "endOffset":I
    .end local v11    # "flow":I
    .end local v12    # "baselinePreDistance":I
    .end local v13    # "baselinePostDistance":I
    .end local v14    # "hasBaseline":Z
    .end local v15    # "downDepth":I
    .end local v16    # "postTemp":I
    .end local v18    # "targetNode":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    .end local v19    # "anchor":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_2
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 324
    .restart local v14    # "hasBaseline":Z
    :cond_3
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v22

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v12, v22

    .line 325
    .restart local v12    # "baselinePreDistance":I
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v22

    move/from16 v13, v22

    .line 326
    .restart local v13    # "baselinePostDistance":I
    move/from16 v22, v3

    const/16 v23, 0x2

    mul-int/lit8 v22, v22, 0x2

    move/from16 v7, v22

    .line 327
    .restart local v7    # "endOffset":I
    move/from16 v22, v7

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v6, v22

    .restart local v6    # "startOffset":I
    goto/16 :goto_2

    .line 338
    :cond_4
    const/16 v22, 0x1

    move/from16 v11, v22

    .restart local v11    # "flow":I
    goto/16 :goto_3

    .line 347
    .restart local v15    # "downDepth":I
    :cond_5
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v22

    goto/16 :goto_4

    .line 352
    .restart local v16    # "postTemp":I
    :cond_6
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    move/from16 v23, v7

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v17, v22

    :goto_6
    move-object/from16 v22, v17

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 v22, v17

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/constraintlayout/solver/widgets/ResolutionNode;

    move-object/from16 v18, v22

    .line 353
    .restart local v18    # "targetNode":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    move-object/from16 v22, v18

    check-cast v22, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v19, v22

    .line 354
    .restart local v19    # "anchor":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move/from16 v22, v10

    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v16

    move/from16 v27, v15

    add-int v26, v26, v27

    invoke-static/range {v23 .. v26}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZI)I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v10, v22

    .line 355
    goto :goto_6

    .line 356
    .end local v18    # "targetNode":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    .end local v19    # "anchor":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_7
    move/from16 v22, v14

    if-eqz v22, :cond_8

    .line 357
    move/from16 v22, v9

    move/from16 v23, v12

    sub-int v22, v22, v23

    move/from16 v9, v22

    .line 358
    move/from16 v22, v10

    move/from16 v23, v13

    add-int v22, v22, v23

    move/from16 v10, v22

    .line 364
    :goto_7
    const/16 v22, 0x0

    move/from16 v17, v22

    .line 365
    .local v17, "dimensionBaseline":I
    move/from16 v22, v3

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 366
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v18, v22

    :goto_8
    move-object/from16 v22, v18

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    move-object/from16 v22, v18

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/constraintlayout/solver/widgets/ResolutionNode;

    move-object/from16 v19, v22

    .line 367
    .local v19, "targetNode":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    move-object/from16 v22, v19

    check-cast v22, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v20, v22

    .line 368
    .local v20, "anchor":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move/from16 v22, v11

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 369
    move/from16 v22, v17

    move-object/from16 v23, v20

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v12

    move/from16 v27, v15

    add-int v26, v26, v27

    invoke-static/range {v23 .. v26}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZI)I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v17, v22

    .line 373
    :goto_9
    goto :goto_8

    .line 360
    .end local v17    # "dimensionBaseline":I
    .end local v19    # "targetNode":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    .end local v20    # "anchor":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_8
    move/from16 v22, v10

    move/from16 v23, v3

    if-nez v23, :cond_9

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v23

    :goto_a
    move/from16 v24, v11

    mul-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v10, v22

    goto/16 :goto_7

    :cond_9
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v23

    goto :goto_a

    .line 371
    .restart local v17    # "dimensionBaseline":I
    .restart local v19    # "targetNode":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    .restart local v20    # "anchor":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_a
    move/from16 v22, v17

    move-object/from16 v23, v20

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v13

    move/from16 v27, v11

    mul-int v26, v26, v27

    move/from16 v27, v15

    add-int v26, v26, v27

    invoke-static/range {v23 .. v26}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getMaxDimensionTraversal(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZI)I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v17, v22

    goto :goto_9

    .line 374
    .end local v19    # "targetNode":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    .end local v20    # "anchor":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_b
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependents:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->size()I

    move-result v22

    if-lez v22, :cond_c

    move/from16 v22, v14

    if-nez v22, :cond_c

    .line 375
    move/from16 v22, v11

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 376
    move/from16 v22, v17

    move/from16 v23, v12

    add-int v22, v22, v23

    move/from16 v17, v22

    .line 383
    :cond_c
    :goto_b
    move/from16 v22, v8

    move/from16 v18, v22

    .line 384
    .local v18, "distanceBeforeWidget":I
    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v17

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v8, v22

    .line 385
    move/from16 v22, v5

    move/from16 v23, v18

    add-int v22, v22, v23

    move/from16 v19, v22

    .line 386
    .local v19, "leftTop":I
    move/from16 v22, v19

    move/from16 v23, v16

    add-int v22, v22, v23

    move/from16 v20, v22

    .line 387
    .local v20, "end":I
    move/from16 v22, v11

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 388
    move/from16 v22, v20

    move/from16 v21, v22

    .line 389
    .local v21, "aux":I
    move/from16 v22, v19

    move/from16 v20, v22

    .line 390
    move/from16 v22, v21

    move/from16 v19, v22

    .line 392
    .end local v21    # "aux":I
    :cond_d
    move/from16 v22, v4

    if-eqz v22, :cond_11

    .line 393
    move-object/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v19

    invoke-static/range {v22 .. v24}, Landroidx/constraintlayout/solver/widgets/Optimizer;->setOptimizedWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;II)V

    .line 394
    move-object/from16 v22, v2

    move/from16 v23, v19

    move/from16 v24, v20

    move/from16 v25, v3

    invoke-virtual/range {v22 .. v25}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFrame(III)V

    .line 400
    :goto_c
    move-object/from16 v22, v2

    move/from16 v23, v3

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v22

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_e

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_e

    .line 402
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move/from16 v24, v3

    invoke-virtual/range {v22 .. v24}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->addWidgetsToSet(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 405
    :cond_e
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    move/from16 v23, v6

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    move/from16 v23, v7

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    .line 407
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v22

    move-object/from16 v21, v22

    .line 408
    .local v21, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    move/from16 v23, v6

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v22, v0

    move-object/from16 v23, v21

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_f

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    move/from16 v23, v7

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v22, v0

    move-object/from16 v23, v21

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 410
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move/from16 v24, v3

    invoke-virtual/range {v22 .. v24}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->addWidgetsToSet(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 413
    .end local v21    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_f
    move/from16 v22, v8

    move/from16 v2, v22

    goto/16 :goto_0

    .line 378
    .end local v18    # "distanceBeforeWidget":I
    .end local v19    # "leftTop":I
    .end local v20    # "end":I
    :cond_10
    move/from16 v22, v17

    move/from16 v23, v13

    sub-int v22, v22, v23

    move/from16 v17, v22

    goto/16 :goto_b

    .line 396
    .restart local v18    # "distanceBeforeWidget":I
    .restart local v19    # "leftTop":I
    .restart local v20    # "end":I
    :cond_11
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move/from16 v24, v3

    invoke-virtual/range {v22 .. v24}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->addWidgetsToSet(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 397
    move-object/from16 v22, v2

    move/from16 v23, v19

    move/from16 v24, v3

    invoke-virtual/range {v22 .. v24}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setRelativePositioning(II)V

    goto/16 :goto_c
.end method

.method private static getParentBiasOffset(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 11

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "orientation":I
    move v8, v1

    const/4 v9, 0x2

    mul-int/lit8 v8, v8, 0x2

    move v2, v8

    .line 506
    .local v2, "offset":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v9, v2

    aget-object v8, v8, v9

    move-object v3, v8

    .line 507
    .local v3, "startAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    move-object v4, v8

    .line 508
    .local v4, "endAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v8, v3

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_1

    move-object v8, v3

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_1

    move-object v8, v4

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_1

    move-object v8, v4

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_1

    .line 510
    const/4 v8, 0x0

    move v5, v8

    .line 511
    .local v5, "length":I
    const/4 v8, 0x0

    move v6, v8

    .line 512
    .local v6, "widgetDimension":I
    const/4 v8, 0x0

    move v7, v8

    .line 513
    .local v7, "bias":F
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v9, v1

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v8

    move v5, v8

    .line 514
    move v8, v1

    if-nez v8, :cond_0

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    :goto_0
    move v7, v8

    .line 516
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v8

    move v6, v8

    .line 517
    move v8, v5

    move-object v9, v3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    sub-int/2addr v8, v9

    move-object v9, v4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    sub-int/2addr v8, v9

    move v5, v8

    .line 518
    move v8, v5

    move v9, v6

    sub-int/2addr v8, v9

    move v5, v8

    .line 519
    move v8, v5

    int-to-float v8, v8

    move v9, v7

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v5, v8

    .line 520
    move v8, v5

    move v0, v8

    .line 522
    .end local v0    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v5    # "length":I
    .end local v6    # "widgetDimension":I
    .end local v7    # "bias":F
    :goto_1
    return v0

    .line 514
    .restart local v0    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v5    # "length":I
    .restart local v6    # "widgetDimension":I
    .restart local v7    # "bias":F
    :cond_0
    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_0

    .line 522
    .end local v5    # "length":I
    .end local v6    # "widgetDimension":I
    .end local v7    # "bias":F
    :cond_1
    const/4 v8, 0x0

    move v0, v8

    goto :goto_1
.end method

.method private static invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V
    .locals 5

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "layoutWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, p2

    .local v2, "group":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    move-object v3, v2

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    .line 261
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 262
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 263
    return-void
.end method

.method private static resolveDimensionRatio(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)I
    .locals 4

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v2, -0x1

    move v1, v2

    .line 533
    .local v1, "length":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_2

    .line 534
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    if-nez v2, :cond_1

    .line 535
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v1, v2

    .line 539
    :goto_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 548
    :cond_0
    :goto_1
    move v2, v1

    move v0, v2

    .end local v0    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0

    .line 537
    .restart local v0    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    move v1, v2

    goto :goto_0

    .line 540
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_0

    .line 541
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 542
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v1, v2

    .line 546
    :goto_2
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_1

    .line 544
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    move v1, v2

    goto :goto_2
.end method

.method private static setConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .locals 4

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "originAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    move-object v1, v2

    .line 418
    .local v1, "originNode":Landroidx/constraintlayout/solver/widgets/ResolutionNode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v3, v0

    if-eq v2, v3, :cond_0

    .line 420
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 422
    :cond_0
    return-void
.end method

.method public static setPosition(Ljava/util/List;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;>;"
    move v1, p1

    .local v1, "orientation":I
    move v2, p2

    .local v2, "containerLength":I
    move-object v8, v0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v3, v8

    .line 445
    .local v3, "groupsSize":I
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_2

    .line 446
    move-object v8, v0

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    move-object v5, v8

    .line 447
    .local v5, "group":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    move-object v8, v5

    move v9, v1

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->getWidgetsToSet(I)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_1
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v7, v8

    .line 449
    .local v7, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v8, v7

    iget-boolean v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    if-eqz v8, :cond_0

    .line 450
    move-object v8, v7

    move v9, v1

    move v10, v2

    invoke-static {v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/Analyzer;->updateSizeDependentWidgets(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;II)V

    .line 452
    :cond_0
    goto :goto_1

    .line 445
    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 454
    .end local v5    # "group":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    :cond_2
    return-void
.end method

.method private static singleGroup(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 7

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "layoutWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 432
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    const/4 v2, 0x0

    new-instance v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 433
    return-void
.end method

.method private static traverse(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;",
            "Ljava/util/List",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, p1

    .local v1, "upperGroup":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    move-object v2, p2

    .local v2, "widgetGroups":Ljava/util/List;, "Ljava/util/List<Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;>;"
    move v3, p3

    .local v3, "hasWrapContent":Z
    move-object v8, v0

    if-nez v8, :cond_0

    .line 129
    const/4 v8, 0x1

    move v0, v8

    .line 256
    .end local v0    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    return v0

    .line 131
    .restart local v0    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    .line 132
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v4, v8

    .line 133
    .local v4, "layoutWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    if-nez v8, :cond_19

    .line 135
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 136
    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    move-object v9, v0

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 137
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    .line 139
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_1

    .line 145
    move-object v8, v4

    move-object v9, v0

    move-object v10, v1

    invoke-static {v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/Analyzer;->invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V

    .line 146
    move v8, v3

    if-eqz v8, :cond_1

    .line 147
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 151
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_5

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_5

    .line 153
    move-object v8, v4

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    :goto_1
    move v5, v8

    .line 154
    .local v5, "wrap":Z
    move v8, v3

    if-eqz v8, :cond_3

    .line 155
    move-object v8, v4

    move-object v9, v0

    move-object v10, v1

    invoke-static {v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/Analyzer;->invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V

    .line 156
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 153
    .end local v5    # "wrap":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 157
    .restart local v5    # "wrap":Z
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v8, v9, :cond_4

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v0

    .line 158
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eq v8, v9, :cond_5

    .line 159
    :cond_4
    move-object v8, v4

    move-object v9, v0

    move-object v10, v1

    invoke-static {v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/Analyzer;->invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V

    .line 163
    .end local v5    # "wrap":Z
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_9

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_9

    .line 165
    move-object v8, v4

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_6

    const/4 v8, 0x1

    :goto_2
    move v5, v8

    .line 166
    .restart local v5    # "wrap":Z
    move v8, v3

    if-eqz v8, :cond_7

    .line 167
    move-object v8, v4

    move-object v9, v0

    move-object v10, v1

    invoke-static {v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/Analyzer;->invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V

    .line 168
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    .line 165
    .end local v5    # "wrap":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 169
    .restart local v5    # "wrap":Z
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v8, v9, :cond_8

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v0

    .line 170
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eq v8, v9, :cond_9

    .line 171
    :cond_8
    move-object v8, v4

    move-object v9, v0

    move-object v10, v1

    invoke-static {v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/Analyzer;->invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V

    .line 174
    .end local v5    # "wrap":Z
    :cond_9
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_15

    const/4 v8, 0x1

    :goto_3
    move-object v9, v0

    .line 175
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_16

    const/4 v9, 0x1

    :goto_4
    xor-int/2addr v8, v9

    if-eqz v8, :cond_17

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_17

    .line 178
    move-object v8, v0

    invoke-static {v8}, Landroidx/constraintlayout/solver/widgets/Analyzer;->resolveDimensionRatio(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)I

    move-result v8

    .line 187
    :cond_a
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_b

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_e

    :cond_b
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_c

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_c

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_e

    :cond_c
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_d

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_d

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_e

    :cond_d
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_f

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_f

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_f

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_f

    :cond_e
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_f

    .line 193
    move-object v8, v0

    instance-of v8, v8, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v8, :cond_f

    move-object v8, v0

    instance-of v8, v8, Landroidx/constraintlayout/solver/widgets/Helper;

    if-nez v8, :cond_f

    .line 194
    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    move-object v9, v0

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 199
    :cond_f
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_10

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_13

    :cond_10
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_11

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_11

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_13

    :cond_11
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_12

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_12

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_13

    :cond_12
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_14

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_14

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_14

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v8, v9, :cond_14

    :cond_13
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_14

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_14

    .line 205
    move-object v8, v0

    instance-of v8, v8, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v8, :cond_14

    move-object v8, v0

    instance-of v8, v8, Landroidx/constraintlayout/solver/widgets/Helper;

    if-nez v8, :cond_14

    .line 206
    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    move-object v9, v0

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 226
    :cond_14
    move-object v8, v0

    instance-of v8, v8, Landroidx/constraintlayout/solver/widgets/Helper;

    if-eqz v8, :cond_1e

    .line 227
    move-object v8, v4

    move-object v9, v0

    move-object v10, v1

    invoke-static {v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/Analyzer;->invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V

    .line 228
    move v8, v3

    if-eqz v8, :cond_1c

    .line 229
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    .line 174
    :cond_15
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 175
    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 179
    :cond_17
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v9, :cond_18

    move-object v8, v0

    .line 180
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_a

    .line 181
    :cond_18
    move-object v8, v4

    move-object v9, v0

    move-object v10, v1

    invoke-static {v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/Analyzer;->invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V

    .line 182
    move v8, v3

    if-eqz v8, :cond_a

    .line 183
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    .line 211
    :cond_19
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    move-object v9, v1

    if-eq v8, v9, :cond_1b

    .line 212
    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v8

    .line 213
    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v8

    .line 214
    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v8

    .line 215
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    iget-boolean v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    if-nez v8, :cond_1a

    .line 216
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    .line 218
    :cond_1a
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    invoke-interface {v8, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v8

    .line 219
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_5
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v6, v8

    .line 220
    .local v6, "auxWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v8, v6

    move-object v9, v1

    iput-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    .line 221
    goto :goto_5

    .line 223
    .end local v6    # "auxWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1b
    const/4 v8, 0x1

    move v0, v8

    goto/16 :goto_0

    .line 231
    :cond_1c
    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/solver/widgets/Helper;

    move-object v5, v8

    .line 232
    .local v5, "hWidget":Landroidx/constraintlayout/solver/widgets/Helper;
    const/4 v8, 0x0

    move v6, v8

    .local v6, "widgetsCount":I
    :goto_6
    move v8, v6

    move-object v9, v5

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    if-ge v8, v9, :cond_1e

    .line 233
    move-object v8, v5

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v9, v6

    aget-object v8, v8, v9

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    invoke-static {v8, v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/Analyzer;->traverse(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z

    move-result v8

    if-nez v8, :cond_1d

    .line 234
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    .line 232
    :cond_1d
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 239
    .end local v5    # "hWidget":Landroidx/constraintlayout/solver/widgets/Helper;
    .end local v6    # "widgetsCount":I
    :cond_1e
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v8, v8

    move v5, v8

    .line 240
    .local v5, "anchorsSize":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_7
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_22

    .line 241
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 242
    .local v7, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v8, v7

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_21

    move-object v8, v7

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eq v8, v9, :cond_21

    .line 243
    move-object v8, v7

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v8, v9, :cond_1f

    .line 244
    move-object v8, v4

    move-object v9, v0

    move-object v10, v1

    invoke-static {v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/Analyzer;->invalidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;)V

    .line 245
    move v8, v3

    if-eqz v8, :cond_20

    .line 246
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    .line 249
    :cond_1f
    move-object v8, v7

    invoke-static {v8}, Landroidx/constraintlayout/solver/widgets/Analyzer;->setConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V

    .line 251
    :cond_20
    move-object v8, v7

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    invoke-static {v8, v9, v10, v11}, Landroidx/constraintlayout/solver/widgets/Analyzer;->traverse(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;Ljava/util/List;Z)Z

    move-result v8

    if-nez v8, :cond_21

    .line 252
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    .line 240
    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 256
    .end local v7    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_22
    const/4 v8, 0x1

    move v0, v8

    goto/16 :goto_0
.end method

.method private static updateSizeDependentWidgets(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;II)V
    .locals 14

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "orientation":I
    move/from16 v2, p2

    .local v2, "containerLength":I
    move v10, v1

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    move v5, v10

    .line 468
    .local v5, "offset":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v11, v5

    aget-object v10, v10, v11

    move-object v6, v10

    .line 469
    .local v6, "startAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-object v10, v10, v11

    move-object v7, v10

    .line 470
    .local v7, "endAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v10, v6

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_0

    move-object v10, v7

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    move v8, v10

    .line 471
    .local v8, "hasBias":Z
    move v10, v8

    if-eqz v10, :cond_1

    .line 472
    move-object v10, v0

    move v11, v1

    invoke-static {v10, v11}, Landroidx/constraintlayout/solver/widgets/Analyzer;->getParentBiasOffset(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v10

    move-object v11, v6

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int/2addr v10, v11

    move v4, v10

    .line 473
    .local v4, "start":I
    move-object v10, v0

    move v11, v1

    move v12, v4

    invoke-static {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/Optimizer;->setOptimizedWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;II)V

    .line 474
    .line 495
    :goto_1
    return-void

    .line 470
    .end local v4    # "start":I
    .end local v8    # "hasBias":Z
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 481
    .restart local v8    # "hasBias":Z
    :cond_1
    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_2

    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_2

    .line 482
    move-object v10, v0

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Analyzer;->resolveDimensionRatio(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)I

    move-result v10

    move v9, v10

    .line 483
    .local v9, "length":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v11, v5

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    float-to-int v10, v10

    move v4, v10

    .line 484
    .restart local v4    # "start":I
    move v10, v4

    move v11, v9

    add-int/2addr v10, v11

    move v3, v10

    .line 485
    .local v3, "end":I
    move-object v10, v7

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v11

    iput-object v11, v10, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 486
    move-object v10, v7

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    move v11, v9

    int-to-float v11, v11

    iput v11, v10, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 487
    move-object v10, v7

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    const/4 v11, 0x1

    iput v11, v10, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    .line 488
    move-object v10, v0

    move v11, v4

    move v12, v3

    move v13, v1

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFrame(III)V

    .line 489
    goto :goto_1

    .line 491
    .end local v3    # "end":I
    .end local v4    # "start":I
    .end local v9    # "length":I
    :cond_2
    move v10, v2

    move-object v11, v0

    move v12, v1

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRelativePositioning(I)I

    move-result v11

    sub-int/2addr v10, v11

    move v3, v10

    .line 492
    .restart local v3    # "end":I
    move v10, v3

    move-object v11, v0

    move v12, v1

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v11

    sub-int/2addr v10, v11

    move v4, v10

    .line 493
    .restart local v4    # "start":I
    move-object v10, v0

    move v11, v4

    move v12, v3

    move v13, v1

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFrame(III)V

    .line 494
    move-object v10, v0

    move v11, v1

    move v12, v4

    invoke-static {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/Optimizer;->setOptimizedWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;II)V

    .line 495
    goto :goto_1
.end method
