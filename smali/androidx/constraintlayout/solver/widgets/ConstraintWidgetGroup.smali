.class public Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
.super Ljava/lang/Object;
.source "ConstraintWidgetGroup.java"


# instance fields
.field public mConstrainedGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field public final mGroupDimensions:[I

.field mGroupHeight:I

.field mGroupWidth:I

.field public mSkipSolver:Z

.field mStartHorizontalWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field mStartVerticalWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field mUnresolvedWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field mWidgetsToSetHorizontal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field mWidgetsToSetVertical:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field mWidgetsToSolve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    move-object v1, p1

    .local v1, "widgets":Ljava/util/List;, "Ljava/util/List<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupWidth:I

    .line 39
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupHeight:I

    .line 40
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    .line 41
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupWidth:I

    aput v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupHeight:I

    aput v6, v4, v5

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupDimensions:[I

    .line 48
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    .line 49
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    .line 50
    move-object v2, v0

    new-instance v3, Ljava/util/HashSet;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetHorizontal:Ljava/util/HashSet;

    .line 51
    move-object v2, v0

    new-instance v3, Ljava/util/HashSet;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetVertical:Ljava/util/HashSet;

    .line 52
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    .line 53
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    .line 56
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    move-object v1, p1

    .local v1, "widgets":Ljava/util/List;, "Ljava/util/List<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    move v2, p2

    .local v2, "skipSolver":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupWidth:I

    .line 39
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupHeight:I

    .line 40
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    .line 41
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupWidth:I

    aput v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupHeight:I

    aput v7, v5, v6

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mGroupDimensions:[I

    .line 48
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    .line 49
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    .line 50
    move-object v3, v0

    new-instance v4, Ljava/util/HashSet;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetHorizontal:Ljava/util/HashSet;

    .line 51
    move-object v3, v0

    new-instance v4, Ljava/util/HashSet;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetVertical:Ljava/util/HashSet;

    .line 52
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    .line 53
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    .line 60
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    .line 61
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    .line 62
    return-void
.end method

.method private getWidgetsToSolveTraversal(Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    move-object v1, p1

    .local v1, "widgetsToSolve":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    move-object v2, p2

    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v7, v2

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    if-eqz v7, :cond_0

    .line 123
    .line 152
    :goto_0
    return-void

    .line 125
    :cond_0
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 126
    move-object v7, v2

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 127
    move-object v7, v2

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isFullyResolved()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 128
    goto :goto_0

    .line 130
    :cond_1
    move-object v7, v2

    instance-of v7, v7, Landroidx/constraintlayout/solver/widgets/Helper;

    if-eqz v7, :cond_2

    .line 131
    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/solver/widgets/Helper;

    move-object v3, v7

    .line 132
    .local v3, "helper":Landroidx/constraintlayout/solver/widgets/Helper;
    move-object v7, v3

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    move v4, v7

    .line 133
    .local v4, "widgetCount":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 134
    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v10, v5

    aget-object v9, v9, v10

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->getWidgetsToSolveTraversal(Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 133
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 138
    .end local v3    # "helper":Landroidx/constraintlayout/solver/widgets/Helper;
    .end local v4    # "widgetCount":I
    .end local v5    # "i":I
    :cond_2
    move-object v7, v2

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v7, v7

    move v3, v7

    .line 139
    .local v3, "count":I
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_2
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_4

    .line 140
    move-object v7, v2

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v8, v4

    aget-object v7, v7, v8

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v5, v7

    .line 141
    .local v5, "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v7, 0x0

    move-object v6, v7

    .line 142
    .local v6, "targetWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v7, v5

    if-eqz v7, :cond_3

    .line 143
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v6, v7

    .line 148
    move-object v7, v5

    if-eqz v7, :cond_3

    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    if-eq v7, v8, :cond_3

    .line 149
    move-object v7, v0

    move-object v8, v1

    move-object v9, v6

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->getWidgetsToSolveTraversal(Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 139
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 152
    .end local v5    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v6    # "targetWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_4
    goto :goto_0
.end method

.method private updateResolvedDimension(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 10

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v7, 0x0

    move v2, v7

    .local v2, "start":I
    const/4 v7, 0x0

    move v3, v7

    .line 174
    .local v3, "end":I
    move-object v7, v1

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    if-eqz v7, :cond_b

    .line 176
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isFullyResolved()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 177
    .line 244
    :goto_0
    return-void

    .line 180
    :cond_0
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_1
    move v4, v7

    .line 183
    .local v4, "rightSide":Z
    move v7, v4

    if-eqz v7, :cond_5

    .line 184
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v5, v7

    .line 188
    .local v5, "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_2
    move-object v7, v5

    if-eqz v7, :cond_2

    .line 189
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    if-nez v7, :cond_1

    .line 190
    move-object v7, v0

    move-object v8, v5

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->updateResolvedDimension(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 192
    :cond_1
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v7, v8, :cond_6

    .line 193
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move-object v8, v5

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    move v3, v7

    .line 198
    :cond_2
    :goto_3
    move v7, v4

    if-eqz v7, :cond_7

    .line 199
    move v7, v3

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    sub-int/2addr v7, v8

    move v3, v7

    .line 203
    :goto_4
    move v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    move v2, v7

    .line 204
    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 206
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_8

    .line 207
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v5, v7

    .line 208
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    if-nez v7, :cond_3

    .line 209
    move-object v7, v0

    move-object v8, v5

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->updateResolvedDimension(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 211
    :cond_3
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move-object v8, v5

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v7, v8

    move-object v8, v1

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    sub-int/2addr v7, v8

    move v2, v7

    .line 213
    move v7, v2

    move-object v8, v1

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v7, v8

    move v3, v7

    .line 214
    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    .line 215
    move-object v7, v1

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    .line 216
    goto/16 :goto_0

    .line 180
    .end local v4    # "rightSide":Z
    .end local v5    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 186
    .restart local v4    # "rightSide":Z
    :cond_5
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v5, v7

    .restart local v5    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto/16 :goto_2

    .line 194
    :cond_6
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v7, v8, :cond_2

    .line 195
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move v3, v7

    goto :goto_3

    .line 201
    :cond_7
    move v7, v3

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    move v3, v7

    goto :goto_4

    .line 218
    :cond_8
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    :goto_5
    move v6, v7

    .line 220
    .local v6, "bottomSide":Z
    move v7, v6

    if-eqz v7, :cond_d

    .line 221
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v5, v7

    .line 225
    :goto_6
    move-object v7, v5

    if-eqz v7, :cond_a

    .line 226
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    if-nez v7, :cond_9

    .line 227
    move-object v7, v0

    move-object v8, v5

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->updateResolvedDimension(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 229
    :cond_9
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v7, v8, :cond_e

    .line 230
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move-object v8, v5

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    move v3, v7

    .line 235
    :cond_a
    :goto_7
    move v7, v6

    if-eqz v7, :cond_f

    .line 236
    move v7, v3

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    sub-int/2addr v7, v8

    move v3, v7

    .line 240
    :goto_8
    move v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    move v2, v7

    .line 241
    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    .line 242
    move-object v7, v1

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    .line 244
    .end local v4    # "rightSide":Z
    .end local v5    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v6    # "bottomSide":Z
    :cond_b
    goto/16 :goto_0

    .line 218
    .restart local v4    # "rightSide":Z
    .restart local v5    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_c
    const/4 v7, 0x0

    goto :goto_5

    .line 223
    .restart local v6    # "bottomSide":Z
    :cond_d
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v5, v7

    goto :goto_6

    .line 231
    :cond_e
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v7, v8, :cond_a

    .line 232
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move v3, v7

    goto :goto_7

    .line 238
    :cond_f
    move v7, v3

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    move v3, v7

    goto :goto_8
.end method


# virtual methods
.method addWidgetsToSet(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v2, p2

    .local v2, "orientation":I
    move v3, v2

    if-nez v3, :cond_1

    .line 84
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetHorizontal:Ljava/util/HashSet;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 86
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetVertical:Ljava/util/HashSet;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public getStartWidgets(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    move v1, p1

    .local v1, "orientation":I
    move v2, v1

    if-nez v2, :cond_0

    .line 66
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartHorizontalWidgets:Ljava/util/List;

    move-object v0, v2

    .line 70
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    :goto_0
    return-object v0

    .line 67
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 68
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mStartVerticalWidgets:Ljava/util/List;

    move-object v0, v2

    goto :goto_0

    .line 70
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method getWidgetsToSet(I)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    move v1, p1

    .local v1, "orientation":I
    move v2, v1

    if-nez v2, :cond_0

    .line 75
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetHorizontal:Ljava/util/HashSet;

    move-object v0, v2

    .line 79
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    :goto_0
    return-object v0

    .line 76
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 77
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSetVertical:Ljava/util/HashSet;

    move-object v0, v2

    goto :goto_0

    .line 79
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method getWidgetsToSolve()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    move-object v0, v4

    .line 112
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    .local v1, "size":I
    .local v2, "i":I
    :goto_0
    return-object v0

    .line 102
    .end local v1    # "size":I
    .end local v2    # "i":I
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v1, v4

    .line 103
    .restart local v1    # "size":I
    const/4 v4, 0x0

    move v2, v4

    .restart local v2    # "i":I
    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 104
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v3, v4

    .line 105
    .local v3, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v4, v3

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    if-nez v4, :cond_1

    .line 106
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->getWidgetsToSolveTraversal(Ljava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 103
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    .end local v3    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 110
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 111
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    .line 112
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mWidgetsToSolve:Ljava/util/List;

    move-object v0, v4

    goto :goto_0
.end method

.method updateUnresolvedWidgets()V
    .locals 6

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v1, v4

    .line 159
    .local v1, "size":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 160
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mUnresolvedWidgets:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v3, v4

    .line 163
    .local v3, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->updateResolvedDimension(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v3    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    return-void
.end method
