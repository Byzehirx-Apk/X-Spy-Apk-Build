.class public Landroidx/constraintlayout/solver/widgets/ChainHead;
.super Ljava/lang/Object;
.source "ChainHead.java"


# instance fields
.field private mDefined:Z

.field protected mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mHasComplexMatchWeights:Z

.field protected mHasDefinedWeights:Z

.field protected mHasUndefinedWeights:Z

.field protected mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mIsRtl:Z

.field protected mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mLastVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mOrientation:I

.field protected mTotalWeight:F

.field protected mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field protected mWidgetsCount:I

.field protected mWidgetsMatchCount:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    move-object v1, p1

    .local v1, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v2, p2

    .local v2, "orientation":I
    move v3, p3

    .local v3, "isRtl":Z
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    .line 44
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/ChainHead;->mIsRtl:Z

    .line 59
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 60
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    .line 61
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/ChainHead;->mIsRtl:Z

    .line 62
    return-void
.end method

.method private defineChainProperties()V
    .locals 12

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    move v1, v7

    .line 80
    .local v1, "offset":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v2, v7

    .line 83
    .local v2, "lastVisited":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v3, v7

    .line 84
    .local v3, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v4, v7

    .line 85
    .local v4, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v7, 0x0

    move v5, v7

    .line 86
    .local v5, "done":Z
    :goto_0
    move v7, v5

    if-nez v7, :cond_e

    .line 87
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    .line 88
    move-object v7, v3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 89
    move-object v7, v3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 90
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_7

    .line 92
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v7, :cond_0

    .line 93
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 95
    :cond_0
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 98
    move-object v7, v3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    aget-object v7, v7, v8

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_7

    move-object v7, v3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    aget v7, v7, v8

    if-eqz v7, :cond_1

    move-object v7, v3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    aget v7, v7, v8

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    move-object v7, v3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    aget v7, v7, v8

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    .line 102
    :cond_1
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 103
    move-object v7, v3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    aget v7, v7, v8

    move v6, v7

    .line 104
    .local v6, "weight":F
    move v7, v6

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 105
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    move-object v9, v3

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    move-object v10, v0

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    aget v9, v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    .line 108
    :cond_2
    move-object v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    invoke-static {v7, v8}, Landroidx/constraintlayout/solver/widgets/ChainHead;->isMatchConstraintEqualityCandidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 109
    move v7, v6

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b

    .line 110
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    .line 114
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    if-nez v7, :cond_3

    .line 115
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 117
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 120
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v7, :cond_5

    .line 121
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 123
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v7, :cond_6

    .line 124
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    move-object v9, v3

    aput-object v9, v7, v8

    .line 126
    :cond_6
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 129
    .end local v6    # "weight":F
    :cond_7
    move-object v7, v2

    move-object v8, v3

    if-eq v7, v8, :cond_8

    .line 130
    move-object v7, v2

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    move-object v9, v3

    aput-object v9, v7, v8

    .line 132
    :cond_8
    move-object v7, v3

    move-object v2, v7

    .line 135
    move-object v7, v3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v7

    .line 136
    .local v6, "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v7, v6

    if-eqz v7, :cond_c

    .line 137
    move-object v7, v6

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v4, v7

    .line 138
    move-object v7, v4

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v8, v1

    aget-object v7, v7, v8

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_9

    move-object v7, v4

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v8, v1

    aget-object v7, v7, v8

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v8, v3

    if-eq v7, v8, :cond_a

    .line 140
    :cond_9
    const/4 v7, 0x0

    move-object v4, v7

    .line 145
    :cond_a
    :goto_2
    move-object v7, v4

    if-eqz v7, :cond_d

    .line 146
    move-object v7, v4

    move-object v3, v7

    .line 150
    :goto_3
    goto/16 :goto_0

    .line 112
    .local v6, "weight":F
    :cond_b
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasDefinedWeights:Z

    goto :goto_1

    .line 143
    .local v6, "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_c
    const/4 v7, 0x0

    move-object v4, v7

    goto :goto_2

    .line 148
    :cond_d
    const/4 v7, 0x1

    move v5, v7

    goto :goto_3

    .line 151
    .end local v6    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_e
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 153
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mOrientation:I

    if-nez v7, :cond_f

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mIsRtl:Z

    if-eqz v7, :cond_f

    .line 154
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 159
    :goto_4
    move-object v7, v0

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasDefinedWeights:Z

    if-eqz v8, :cond_10

    move-object v8, v0

    iget-boolean v8, v8, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v8, :cond_10

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 160
    return-void

    .line 156
    :cond_f
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    goto :goto_4

    .line 159
    :cond_10
    const/4 v8, 0x0

    goto :goto_5
.end method

.method private static isMatchConstraintEqualityCandidate(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "orientation":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v3, v1

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    move v3, v1

    aget v2, v2, v3

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    move v3, v1

    aget v2, v2, v3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    return v0

    .restart local v0    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public define()V
    .locals 3

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/ChainHead;->mDefined:Z

    if-nez v1, :cond_0

    .line 196
    move-object v1, v0

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/ChainHead;->defineChainProperties()V

    .line 198
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ChainHead;->mDefined:Z

    .line 199
    return-void
.end method

.method public getFirst()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    return-object v0
.end method

.method public getFirstMatchConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    return-object v0
.end method

.method public getFirstVisibleWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    return-object v0
.end method

.method public getHead()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    return-object v0
.end method

.method public getLast()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    return-object v0
.end method

.method public getLastMatchConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    return-object v0
.end method

.method public getLastVisibleWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    return-object v0
.end method

.method public getTotalWeight()F
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ChainHead;
    return v0
.end method
