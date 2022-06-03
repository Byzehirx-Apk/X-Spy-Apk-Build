.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ALLOWS_EMBEDDED:Z = false

.field private static final CACHE_MEASURED_DIMENSION:Z = false

.field private static final DEBUG:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-1.1.3"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/widget/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field private mConstraintSetId:I

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMetrics:Landroidx/constraintlayout/solver/Metrics;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOptimizationLevel:I

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 499
    move-object v2, v0

    new-instance v3, Landroid/util/SparseArray;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 502
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 507
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 509
    move-object v2, v0

    new-instance v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 511
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 512
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 513
    move-object v2, v0

    const v3, 0x7fffffff

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 514
    move-object v2, v0

    const v3, 0x7fffffff

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 516
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 517
    move-object v2, v0

    const/4 v3, 0x7

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 518
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 520
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 522
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 525
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 526
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 527
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 528
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 529
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 530
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 571
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 572
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 575
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 499
    move-object v3, v0

    new-instance v4, Landroid/util/SparseArray;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 502
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 507
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 509
    move-object v3, v0

    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 511
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 512
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 513
    move-object v3, v0

    const v4, 0x7fffffff

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 514
    move-object v3, v0

    const v4, 0x7fffffff

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 516
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 517
    move-object v3, v0

    const/4 v4, 0x7

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 518
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 520
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 522
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 525
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 526
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 527
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 528
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 529
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 530
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 576
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 577
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 499
    move-object v4, v0

    new-instance v5, Landroid/util/SparseArray;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 502
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 507
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 509
    move-object v4, v0

    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 511
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 512
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 513
    move-object v4, v0

    const v5, 0x7fffffff

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 514
    move-object v4, v0

    const v5, 0x7fffffff

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 516
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 517
    move-object v4, v0

    const/4 v5, 0x7

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 518
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 520
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 522
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 525
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 526
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 527
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 528
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 529
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 530
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 581
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 582
    return-void
.end method

.method private final getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 5

    .prologue
    .line 1131
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move v1, p1

    .local v1, "id":I
    move v3, v1

    if-nez v3, :cond_0

    .line 1132
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v0, v3

    .line 1144
    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    :goto_0
    return-object v0

    .line 1134
    .restart local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    .line 1135
    .local v2, "view":Landroid/view/View;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 1136
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1137
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v4, v0

    if-eq v3, v4, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v4, v0

    if-ne v3, v4, :cond_1

    .line 1138
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 1141
    :cond_1
    move-object v3, v2

    move-object v4, v0

    if-ne v3, v4, :cond_2

    .line 1142
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v0, v3

    goto :goto_0

    .line 1144
    :cond_2
    move-object v3, v2

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    goto :goto_1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 13

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v9, v0

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    .line 596
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 597
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 598
    move-object v8, v1

    if-eqz v8, :cond_7

    .line 599
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v9, v1

    sget-object v10, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v2, v8

    .line 600
    .local v2, "a":Landroid/content/res/TypedArray;
    move-object v8, v2

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v8

    move v3, v8

    .line 601
    .local v3, "N":I
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_6

    .line 602
    move-object v8, v2

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    move v5, v8

    .line 603
    .local v5, "attr":I
    move v8, v5

    sget v9, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v8, v9, :cond_1

    .line 604
    move-object v8, v0

    move-object v9, v2

    move v10, v5

    move-object v11, v0

    iget v11, v11, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 601
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 605
    :cond_1
    move v8, v5

    sget v9, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v8, v9, :cond_2

    .line 606
    move-object v8, v0

    move-object v9, v2

    move v10, v5

    move-object v11, v0

    iget v11, v11, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    goto :goto_1

    .line 607
    :cond_2
    move v8, v5

    sget v9, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v8, v9, :cond_3

    .line 608
    move-object v8, v0

    move-object v9, v2

    move v10, v5

    move-object v11, v0

    iget v11, v11, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    goto :goto_1

    .line 609
    :cond_3
    move v8, v5

    sget v9, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v8, v9, :cond_4

    .line 610
    move-object v8, v0

    move-object v9, v2

    move v10, v5

    move-object v11, v0

    iget v11, v11, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    goto :goto_1

    .line 611
    :cond_4
    move v8, v5

    sget v9, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v8, v9, :cond_5

    .line 612
    move-object v8, v0

    move-object v9, v2

    move v10, v5

    move-object v11, v0

    iget v11, v11, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_1

    .line 613
    :cond_5
    move v8, v5

    sget v9, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v8, v9, :cond_0

    .line 614
    move-object v8, v2

    move v9, v5

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    move v6, v8

    .line 616
    .local v6, "id":I
    move-object v8, v0

    :try_start_0
    new-instance v9, Landroidx/constraintlayout/widget/ConstraintSet;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 617
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    move v10, v6

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    .line 621
    :goto_2
    move-object v8, v0

    move v9, v6

    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    goto :goto_1

    .line 618
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 619
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    goto :goto_2

    .line 624
    .end local v5    # "attr":I
    .end local v6    # "id":I
    .end local v7    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    move-object v8, v2

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 626
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 627
    return-void
.end method

.method private internalMeasureChildren(II)V
    .locals 27

    .prologue
    .line 1161
    move-object/from16 v4, p0

    .local v4, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move/from16 v5, p1

    .local v5, "parentWidthSpec":I
    move/from16 v6, p2

    .local v6, "parentHeightSpec":I
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v21

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v7, v21

    .line 1162
    .local v7, "heightPadding":I
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v21

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v8, v21

    .line 1164
    .local v8, "widthPadding":I
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v21

    move/from16 v9, v21

    .line 1165
    .local v9, "widgetsCount":I
    const/16 v21, 0x0

    move/from16 v10, v21

    .local v10, "i":I
    :goto_0
    move/from16 v21, v10

    move/from16 v22, v9

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    .line 1166
    move-object/from16 v21, v4

    move/from16 v22, v10

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v11, v21

    .line 1167
    .local v11, "child":Landroid/view/View;
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1168
    .line 1165
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1170
    :cond_1
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object/from16 v12, v21

    .line 1171
    .local v12, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v21, v0

    move-object/from16 v13, v21

    .line 1172
    .local v13, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 1173
    goto :goto_1

    .line 1175
    :cond_2
    move-object/from16 v21, v13

    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1177
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    move/from16 v21, v0

    move/from16 v14, v21

    .line 1178
    .local v14, "width":I
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    move/from16 v21, v0

    move/from16 v15, v21

    .line 1182
    .local v15, "height":I
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v21, v0

    if-nez v21, :cond_3

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    :cond_3
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v21, v0

    if-nez v21, :cond_9

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    :cond_4
    const/16 v21, 0x1

    :goto_2
    move/from16 v16, v21

    .line 1192
    .local v16, "doMeasure":Z
    const/16 v21, 0x0

    move/from16 v17, v21

    .line 1193
    .local v17, "didWrapMeasureWidth":Z
    const/16 v21, 0x0

    move/from16 v18, v21

    .line 1195
    .local v18, "didWrapMeasureHeight":Z
    move/from16 v21, v16

    if-eqz v21, :cond_6

    .line 1199
    move/from16 v21, v14

    if-nez v21, :cond_a

    .line 1200
    move/from16 v21, v5

    move/from16 v22, v8

    const/16 v23, -0x2

    invoke-static/range {v21 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v21

    move/from16 v19, v21

    .line 1202
    .local v19, "childWidthMeasureSpec":I
    const/16 v21, 0x1

    move/from16 v17, v21

    .line 1213
    :goto_3
    move/from16 v21, v15

    if-nez v21, :cond_d

    .line 1214
    move/from16 v21, v6

    move/from16 v22, v7

    const/16 v23, -0x2

    invoke-static/range {v21 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v21

    move/from16 v20, v21

    .line 1216
    .local v20, "childHeightMeasureSpec":I
    const/16 v21, 0x1

    move/from16 v18, v21

    .line 1227
    :goto_4
    move-object/from16 v21, v11

    move/from16 v22, v19

    move/from16 v23, v20

    invoke-virtual/range {v21 .. v23}, Landroid/view/View;->measure(II)V

    .line 1228
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1229
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v21, v0

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->measures:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->measures:J

    .line 1232
    :cond_5
    move-object/from16 v21, v13

    move/from16 v22, v14

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    const/16 v22, 0x1

    :goto_5
    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1233
    move-object/from16 v21, v13

    move/from16 v22, v15

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    const/16 v22, 0x1

    :goto_6
    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1234
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    move/from16 v14, v21

    .line 1235
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    move/from16 v15, v21

    .line 1238
    .end local v19    # "childWidthMeasureSpec":I
    .end local v20    # "childHeightMeasureSpec":I
    :cond_6
    move-object/from16 v21, v13

    move/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1239
    move-object/from16 v21, v13

    move/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1241
    move/from16 v21, v17

    if-eqz v21, :cond_7

    .line 1242
    move-object/from16 v21, v13

    move/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1244
    :cond_7
    move/from16 v21, v18

    if-eqz v21, :cond_8

    .line 1245
    move-object/from16 v21, v13

    move/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1248
    :cond_8
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1249
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getBaseline()I

    move-result v21

    move/from16 v19, v21

    .line 1250
    .local v19, "baseline":I
    move/from16 v21, v19

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 1251
    move-object/from16 v21, v13

    move/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    goto/16 :goto_1

    .line 1182
    .end local v16    # "doMeasure":Z
    .end local v17    # "didWrapMeasureWidth":Z
    .end local v18    # "didWrapMeasureHeight":Z
    .end local v19    # "baseline":I
    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 1203
    .restart local v16    # "doMeasure":Z
    .restart local v17    # "didWrapMeasureWidth":Z
    .restart local v18    # "didWrapMeasureHeight":Z
    :cond_a
    move/from16 v21, v14

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 1204
    move/from16 v21, v5

    move/from16 v22, v8

    const/16 v23, -0x1

    invoke-static/range {v21 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v21

    move/from16 v19, v21

    .local v19, "childWidthMeasureSpec":I
    goto/16 :goto_3

    .line 1207
    .end local v19    # "childWidthMeasureSpec":I
    :cond_b
    move/from16 v21, v14

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 1208
    const/16 v21, 0x1

    move/from16 v17, v21

    .line 1210
    :cond_c
    move/from16 v21, v5

    move/from16 v22, v8

    move/from16 v23, v14

    invoke-static/range {v21 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v21

    move/from16 v19, v21

    .restart local v19    # "childWidthMeasureSpec":I
    goto/16 :goto_3

    .line 1217
    :cond_d
    move/from16 v21, v15

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 1218
    move/from16 v21, v6

    move/from16 v22, v7

    const/16 v23, -0x1

    invoke-static/range {v21 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v21

    move/from16 v20, v21

    .restart local v20    # "childHeightMeasureSpec":I
    goto/16 :goto_4

    .line 1221
    .end local v20    # "childHeightMeasureSpec":I
    :cond_e
    move/from16 v21, v15

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 1222
    const/16 v21, 0x1

    move/from16 v18, v21

    .line 1224
    :cond_f
    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v15

    invoke-static/range {v21 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v21

    move/from16 v20, v21

    .restart local v20    # "childHeightMeasureSpec":I
    goto/16 :goto_4

    .line 1232
    :cond_10
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 1233
    :cond_11
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 1255
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v13    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "width":I
    .end local v15    # "height":I
    .end local v16    # "doMeasure":Z
    .end local v17    # "didWrapMeasureWidth":Z
    .end local v18    # "didWrapMeasureHeight":Z
    .end local v19    # "childWidthMeasureSpec":I
    .end local v20    # "childHeightMeasureSpec":I
    :cond_12
    return-void
.end method

.method private internalMeasureDimensions(II)V
    .locals 35

    .prologue
    .line 1283
    move-object/from16 v4, p0

    .local v4, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move/from16 v5, p1

    .local v5, "parentWidthSpec":I
    move/from16 v6, p2

    .local v6, "parentHeightSpec":I
    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v29

    move-object/from16 v30, v4

    invoke-virtual/range {v30 .. v30}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v30

    add-int v29, v29, v30

    move/from16 v7, v29

    .line 1284
    .local v7, "heightPadding":I
    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v29

    move-object/from16 v30, v4

    invoke-virtual/range {v30 .. v30}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v30

    add-int v29, v29, v30

    move/from16 v8, v29

    .line 1286
    .local v8, "widthPadding":I
    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v29

    move/from16 v9, v29

    .line 1287
    .local v9, "widgetsCount":I
    const/16 v29, 0x0

    move/from16 v10, v29

    .local v10, "i":I
    :goto_0
    move/from16 v29, v10

    move/from16 v30, v9

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_d

    .line 1288
    move-object/from16 v29, v4

    move/from16 v30, v10

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v11, v29

    .line 1289
    .local v11, "child":Landroid/view/View;
    move-object/from16 v29, v11

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 1290
    .line 1287
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1292
    :cond_1
    move-object/from16 v29, v11

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object/from16 v12, v29

    .line 1293
    .local v12, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v29, v0

    move-object/from16 v13, v29

    .line 1294
    .local v13, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    move/from16 v29, v0

    if-nez v29, :cond_0

    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    .line 1295
    goto :goto_1

    .line 1297
    :cond_2
    move-object/from16 v29, v13

    move-object/from16 v30, v11

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getVisibility()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1299
    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    move/from16 v29, v0

    move/from16 v14, v29

    .line 1300
    .local v14, "width":I
    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    move/from16 v29, v0

    move/from16 v15, v29

    .line 1302
    .local v15, "height":I
    move/from16 v29, v14

    if-eqz v29, :cond_3

    move/from16 v29, v15

    if-nez v29, :cond_4

    .line 1303
    :cond_3
    move-object/from16 v29, v13

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1304
    move-object/from16 v29, v13

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1305
    goto :goto_1

    .line 1308
    :cond_4
    const/16 v29, 0x0

    move/from16 v16, v29

    .line 1309
    .local v16, "didWrapMeasureWidth":Z
    const/16 v29, 0x0

    move/from16 v17, v29

    .line 1313
    .local v17, "didWrapMeasureHeight":Z
    move/from16 v29, v14

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    .line 1314
    const/16 v29, 0x1

    move/from16 v16, v29

    .line 1316
    :cond_5
    move/from16 v29, v5

    move/from16 v30, v8

    move/from16 v31, v14

    invoke-static/range {v29 .. v31}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v29

    move/from16 v18, v29

    .line 1318
    .local v18, "childWidthMeasureSpec":I
    move/from16 v29, v15

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 1319
    const/16 v29, 0x1

    move/from16 v17, v29

    .line 1321
    :cond_6
    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v15

    invoke-static/range {v29 .. v31}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v29

    move/from16 v19, v29

    .line 1323
    .local v19, "childHeightMeasureSpec":I
    move-object/from16 v29, v11

    move/from16 v30, v18

    move/from16 v31, v19

    invoke-virtual/range {v29 .. v31}, Landroid/view/View;->measure(II)V

    .line 1324
    move-object/from16 v29, v4

    move-object/from16 v0, v29

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v29, v0

    if-eqz v29, :cond_7

    .line 1325
    move-object/from16 v29, v4

    move-object/from16 v0, v29

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v29, v0

    move-object/from16 v34, v29

    move-object/from16 v29, v34

    move-object/from16 v30, v34

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->measures:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x1

    add-long v30, v30, v32

    move-wide/from16 v0, v30

    move-object/from16 v2, v29

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->measures:J

    .line 1328
    :cond_7
    move-object/from16 v29, v13

    move/from16 v30, v14

    const/16 v31, -0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_b

    const/16 v30, 0x1

    :goto_2
    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1329
    move-object/from16 v29, v13

    move/from16 v30, v15

    const/16 v31, -0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    const/16 v30, 0x1

    :goto_3
    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1330
    move-object/from16 v29, v11

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    move/from16 v14, v29

    .line 1331
    move-object/from16 v29, v11

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    move/from16 v15, v29

    .line 1333
    move-object/from16 v29, v13

    move/from16 v30, v14

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1334
    move-object/from16 v29, v13

    move/from16 v30, v15

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1336
    move/from16 v29, v16

    if-eqz v29, :cond_8

    .line 1337
    move-object/from16 v29, v13

    move/from16 v30, v14

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1339
    :cond_8
    move/from16 v29, v17

    if-eqz v29, :cond_9

    .line 1340
    move-object/from16 v29, v13

    move/from16 v30, v15

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1343
    :cond_9
    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    move/from16 v29, v0

    if-eqz v29, :cond_a

    .line 1344
    move-object/from16 v29, v11

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBaseline()I

    move-result v29

    move/from16 v20, v29

    .line 1345
    .local v20, "baseline":I
    move/from16 v29, v20

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_a

    .line 1346
    move-object/from16 v29, v13

    move/from16 v30, v20

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1350
    .end local v20    # "baseline":I
    :cond_a
    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 1351
    move-object/from16 v29, v13

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v29

    move/from16 v30, v14

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1352
    move-object/from16 v29, v13

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v29

    move/from16 v30, v15

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    goto/16 :goto_1

    .line 1328
    :cond_b
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1329
    :cond_c
    const/16 v30, 0x0

    goto/16 :goto_3

    .line 1357
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v13    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "width":I
    .end local v15    # "height":I
    .end local v16    # "didWrapMeasureWidth":Z
    .end local v17    # "didWrapMeasureHeight":Z
    .end local v18    # "childWidthMeasureSpec":I
    .end local v19    # "childHeightMeasureSpec":I
    :cond_d
    move-object/from16 v29, v4

    move-object/from16 v0, v29

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    .line 1359
    const/16 v29, 0x0

    move/from16 v10, v29

    :goto_4
    move/from16 v29, v10

    move/from16 v30, v9

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_28

    .line 1360
    move-object/from16 v29, v4

    move/from16 v30, v10

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v11, v29

    .line 1361
    .restart local v11    # "child":Landroid/view/View;
    move-object/from16 v29, v11

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    .line 1362
    .line 1359
    :cond_e
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1364
    :cond_f
    move-object/from16 v29, v11

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object/from16 v12, v29

    .line 1365
    .restart local v12    # "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v29, v0

    move-object/from16 v13, v29

    .line 1366
    .restart local v13    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    move/from16 v29, v0

    if-nez v29, :cond_e

    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    move/from16 v29, v0

    if-eqz v29, :cond_10

    .line 1367
    goto :goto_5

    .line 1369
    :cond_10
    move-object/from16 v29, v13

    move-object/from16 v30, v11

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getVisibility()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1371
    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    move/from16 v29, v0

    move/from16 v14, v29

    .line 1372
    .restart local v14    # "width":I
    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    move/from16 v29, v0

    move/from16 v15, v29

    .line 1374
    .restart local v15    # "height":I
    move/from16 v29, v14

    if-eqz v29, :cond_11

    move/from16 v29, v15

    if-eqz v29, :cond_11

    .line 1375
    goto :goto_5

    .line 1378
    :cond_11
    move-object/from16 v29, v13

    sget-object v30, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v29

    move-object/from16 v16, v29

    .line 1379
    .local v16, "left":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object/from16 v29, v13

    sget-object v30, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v29

    move-object/from16 v17, v29

    .line 1380
    .local v17, "right":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object/from16 v29, v13

    sget-object v30, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v29

    if-eqz v29, :cond_12

    move-object/from16 v29, v13

    sget-object v30, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1381
    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v29

    if-eqz v29, :cond_12

    const/16 v29, 0x1

    :goto_6
    move/from16 v18, v29

    .line 1382
    .local v18, "bothHorizontal":Z
    move-object/from16 v29, v13

    sget-object v30, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v29

    move-object/from16 v19, v29

    .line 1383
    .local v19, "top":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object/from16 v29, v13

    sget-object v30, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v29

    move-object/from16 v20, v29

    .line 1384
    .local v20, "bottom":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object/from16 v29, v13

    sget-object v30, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v29

    if-eqz v29, :cond_13

    move-object/from16 v29, v13

    sget-object v30, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1385
    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v29

    if-eqz v29, :cond_13

    const/16 v29, 0x1

    :goto_7
    move/from16 v21, v29

    .line 1387
    .local v21, "bothVertical":Z
    move/from16 v29, v14

    if-nez v29, :cond_14

    move/from16 v29, v15

    if-nez v29, :cond_14

    move/from16 v29, v18

    if-eqz v29, :cond_14

    move/from16 v29, v21

    if-eqz v29, :cond_14

    .line 1388
    goto/16 :goto_5

    .line 1381
    .end local v18    # "bothHorizontal":Z
    .end local v19    # "top":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v20    # "bottom":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v21    # "bothVertical":Z
    :cond_12
    const/16 v29, 0x0

    goto :goto_6

    .line 1385
    .restart local v18    # "bothHorizontal":Z
    .restart local v19    # "top":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .restart local v20    # "bottom":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_13
    const/16 v29, 0x0

    goto :goto_7

    .line 1391
    .restart local v21    # "bothVertical":Z
    :cond_14
    const/16 v29, 0x0

    move/from16 v22, v29

    .line 1392
    .local v22, "didWrapMeasureWidth":Z
    const/16 v29, 0x0

    move/from16 v23, v29

    .line 1393
    .local v23, "didWrapMeasureHeight":Z
    move-object/from16 v29, v4

    move-object/from16 v0, v29

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v29

    sget-object v30, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_1a

    const/16 v29, 0x1

    :goto_8
    move/from16 v24, v29

    .line 1394
    .local v24, "resolveWidth":Z
    move-object/from16 v29, v4

    move-object/from16 v0, v29

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v29

    sget-object v30, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_1b

    const/16 v29, 0x1

    :goto_9
    move/from16 v25, v29

    .line 1399
    .local v25, "resolveHeight":Z
    move/from16 v29, v24

    if-nez v29, :cond_15

    .line 1400
    move-object/from16 v29, v13

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1402
    :cond_15
    move/from16 v29, v25

    if-nez v29, :cond_16

    .line 1403
    move-object/from16 v29, v13

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1405
    :cond_16
    move/from16 v29, v14

    if-nez v29, :cond_1d

    .line 1406
    move/from16 v29, v24

    if-eqz v29, :cond_1c

    move-object/from16 v29, v13

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isSpreadWidth()Z

    move-result v29

    if-eqz v29, :cond_1c

    move/from16 v29, v18

    if-eqz v29, :cond_1c

    move-object/from16 v29, v16

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v29

    if-eqz v29, :cond_1c

    move-object/from16 v29, v17

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v29

    if-eqz v29, :cond_1c

    .line 1407
    move-object/from16 v29, v17

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v29

    move-object/from16 v30, v16

    invoke-virtual/range {v30 .. v30}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v30

    sub-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v14, v29

    .line 1408
    move-object/from16 v29, v13

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v29

    move/from16 v30, v14

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1409
    move/from16 v29, v5

    move/from16 v30, v8

    move/from16 v31, v14

    invoke-static/range {v29 .. v31}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v29

    move/from16 v26, v29

    .line 1427
    .local v26, "childWidthMeasureSpec":I
    :goto_a
    move/from16 v29, v15

    if-nez v29, :cond_21

    .line 1428
    move/from16 v29, v25

    if-eqz v29, :cond_20

    move-object/from16 v29, v13

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isSpreadHeight()Z

    move-result v29

    if-eqz v29, :cond_20

    move/from16 v29, v21

    if-eqz v29, :cond_20

    move-object/from16 v29, v19

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v29

    if-eqz v29, :cond_20

    move-object/from16 v29, v20

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v29

    if-eqz v29, :cond_20

    .line 1429
    move-object/from16 v29, v20

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v29

    move-object/from16 v30, v19

    invoke-virtual/range {v30 .. v30}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v30

    sub-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v15, v29

    .line 1430
    move-object/from16 v29, v13

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v29

    move/from16 v30, v15

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1431
    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v15

    invoke-static/range {v29 .. v31}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v29

    move/from16 v27, v29

    .line 1449
    .local v27, "childHeightMeasureSpec":I
    :goto_b
    move-object/from16 v29, v11

    move/from16 v30, v26

    move/from16 v31, v27

    invoke-virtual/range {v29 .. v31}, Landroid/view/View;->measure(II)V

    .line 1450
    move-object/from16 v29, v4

    move-object/from16 v0, v29

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v29, v0

    if-eqz v29, :cond_17

    .line 1451
    move-object/from16 v29, v4

    move-object/from16 v0, v29

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v29, v0

    move-object/from16 v34, v29

    move-object/from16 v29, v34

    move-object/from16 v30, v34

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->measures:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x1

    add-long v30, v30, v32

    move-wide/from16 v0, v30

    move-object/from16 v2, v29

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->measures:J

    .line 1454
    :cond_17
    move-object/from16 v29, v13

    move/from16 v30, v14

    const/16 v31, -0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_24

    const/16 v30, 0x1

    :goto_c
    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1455
    move-object/from16 v29, v13

    move/from16 v30, v15

    const/16 v31, -0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_25

    const/16 v30, 0x1

    :goto_d
    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1456
    move-object/from16 v29, v11

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    move/from16 v14, v29

    .line 1457
    move-object/from16 v29, v11

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    move/from16 v15, v29

    .line 1459
    move-object/from16 v29, v13

    move/from16 v30, v14

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1460
    move-object/from16 v29, v13

    move/from16 v30, v15

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1462
    move/from16 v29, v22

    if-eqz v29, :cond_18

    .line 1463
    move-object/from16 v29, v13

    move/from16 v30, v14

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1465
    :cond_18
    move/from16 v29, v23

    if-eqz v29, :cond_19

    .line 1466
    move-object/from16 v29, v13

    move/from16 v30, v15

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1468
    :cond_19
    move/from16 v29, v24

    if-eqz v29, :cond_26

    .line 1469
    move-object/from16 v29, v13

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v29

    move/from16 v30, v14

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1473
    :goto_e
    move/from16 v29, v25

    if-eqz v29, :cond_27

    .line 1474
    move-object/from16 v29, v13

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v29

    move/from16 v30, v15

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1479
    :goto_f
    move-object/from16 v29, v12

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    move/from16 v29, v0

    if-eqz v29, :cond_e

    .line 1480
    move-object/from16 v29, v11

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBaseline()I

    move-result v29

    move/from16 v28, v29

    .line 1481
    .local v28, "baseline":I
    move/from16 v29, v28

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_e

    .line 1482
    move-object/from16 v29, v13

    move/from16 v30, v28

    invoke-virtual/range {v29 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    goto/16 :goto_5

    .line 1393
    .end local v24    # "resolveWidth":Z
    .end local v25    # "resolveHeight":Z
    .end local v26    # "childWidthMeasureSpec":I
    .end local v27    # "childHeightMeasureSpec":I
    .end local v28    # "baseline":I
    :cond_1a
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 1394
    .restart local v24    # "resolveWidth":Z
    :cond_1b
    const/16 v29, 0x0

    goto/16 :goto_9

    .line 1412
    .restart local v25    # "resolveHeight":Z
    :cond_1c
    move/from16 v29, v5

    move/from16 v30, v8

    const/16 v31, -0x2

    invoke-static/range {v29 .. v31}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v29

    move/from16 v26, v29

    .line 1414
    .restart local v26    # "childWidthMeasureSpec":I
    const/16 v29, 0x1

    move/from16 v22, v29

    .line 1415
    const/16 v29, 0x0

    move/from16 v24, v29

    goto/16 :goto_a

    .line 1417
    .end local v26    # "childWidthMeasureSpec":I
    :cond_1d
    move/from16 v29, v14

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1e

    .line 1418
    move/from16 v29, v5

    move/from16 v30, v8

    const/16 v31, -0x1

    invoke-static/range {v29 .. v31}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v29

    move/from16 v26, v29

    .restart local v26    # "childWidthMeasureSpec":I
    goto/16 :goto_a

    .line 1421
    .end local v26    # "childWidthMeasureSpec":I
    :cond_1e
    move/from16 v29, v14

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1f

    .line 1422
    const/16 v29, 0x1

    move/from16 v22, v29

    .line 1424
    :cond_1f
    move/from16 v29, v5

    move/from16 v30, v8

    move/from16 v31, v14

    invoke-static/range {v29 .. v31}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v29

    move/from16 v26, v29

    .restart local v26    # "childWidthMeasureSpec":I
    goto/16 :goto_a

    .line 1434
    :cond_20
    move/from16 v29, v6

    move/from16 v30, v7

    const/16 v31, -0x2

    invoke-static/range {v29 .. v31}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v29

    move/from16 v27, v29

    .line 1436
    .restart local v27    # "childHeightMeasureSpec":I
    const/16 v29, 0x1

    move/from16 v23, v29

    .line 1437
    const/16 v29, 0x0

    move/from16 v25, v29

    goto/16 :goto_b

    .line 1439
    .end local v27    # "childHeightMeasureSpec":I
    :cond_21
    move/from16 v29, v15

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_22

    .line 1440
    move/from16 v29, v6

    move/from16 v30, v7

    const/16 v31, -0x1

    invoke-static/range {v29 .. v31}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v29

    move/from16 v27, v29

    .restart local v27    # "childHeightMeasureSpec":I
    goto/16 :goto_b

    .line 1443
    .end local v27    # "childHeightMeasureSpec":I
    :cond_22
    move/from16 v29, v15

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_23

    .line 1444
    const/16 v29, 0x1

    move/from16 v23, v29

    .line 1446
    :cond_23
    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v15

    invoke-static/range {v29 .. v31}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v29

    move/from16 v27, v29

    .restart local v27    # "childHeightMeasureSpec":I
    goto/16 :goto_b

    .line 1454
    :cond_24
    const/16 v30, 0x0

    goto/16 :goto_c

    .line 1455
    :cond_25
    const/16 v30, 0x0

    goto/16 :goto_d

    .line 1471
    :cond_26
    move-object/from16 v29, v13

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->remove()V

    goto/16 :goto_e

    .line 1476
    :cond_27
    move-object/from16 v29, v13

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->remove()V

    goto/16 :goto_f

    .line 1486
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v13    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "width":I
    .end local v15    # "height":I
    .end local v16    # "left":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v17    # "right":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v18    # "bothHorizontal":Z
    .end local v19    # "top":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v20    # "bottom":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v21    # "bothVertical":Z
    .end local v22    # "didWrapMeasureWidth":Z
    .end local v23    # "didWrapMeasureHeight":Z
    .end local v24    # "resolveWidth":Z
    .end local v25    # "resolveHeight":Z
    .end local v26    # "childWidthMeasureSpec":I
    .end local v27    # "childHeightMeasureSpec":I
    :cond_28
    return-void
.end method

.method private setChildrenConstraints()V
    .locals 29

    .prologue
    .line 808
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v22

    move/from16 v3, v22

    .line 810
    .local v3, "isInEditMode":Z
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v22

    move/from16 v4, v22

    .line 811
    .local v4, "count":I
    move/from16 v22, v3

    if-eqz v22, :cond_1

    .line 815
    const/16 v22, 0x0

    move/from16 v5, v22

    .local v5, "i":I
    :goto_0
    move/from16 v22, v5

    move/from16 v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 816
    move-object/from16 v22, v2

    move/from16 v23, v5

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v6, v22

    .line 818
    .local v6, "view":Landroid/view/View;
    move-object/from16 v22, v2

    :try_start_0
    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/widget/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v7, v22

    .line 819
    .local v7, "IdAsString":Ljava/lang/String;
    move-object/from16 v22, v2

    const/16 v23, 0x0

    move-object/from16 v24, v7

    move-object/from16 v25, v6

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getId()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v22 .. v25}, Landroidx/constraintlayout/widget/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 820
    move-object/from16 v22, v7

    const/16 v23, 0x2f

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    move/from16 v8, v22

    .line 821
    .local v8, "slashIndex":I
    move/from16 v22, v8

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 822
    move-object/from16 v22, v7

    move/from16 v23, v8

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v7, v22

    .line 824
    :cond_0
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getId()I

    move-result v23

    invoke-direct/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v22

    move-object/from16 v23, v7

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    .line 815
    .end local v7    # "IdAsString":Ljava/lang/String;
    .end local v8    # "slashIndex":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 825
    :catch_0
    move-exception v22

    move-object/from16 v7, v22

    goto :goto_1

    .line 832
    .end local v5    # "i":I
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    const/16 v22, 0x0

    move/from16 v5, v22

    .restart local v5    # "i":I
    :goto_2
    move/from16 v22, v5

    move/from16 v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 833
    move-object/from16 v22, v2

    move/from16 v23, v5

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v6, v22

    .line 834
    .local v6, "child":Landroid/view/View;
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v22

    move-object/from16 v7, v22

    .line 835
    .local v7, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v22, v7

    if-nez v22, :cond_2

    .line 836
    .line 832
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 838
    :cond_2
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->reset()V

    goto :goto_3

    .line 841
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_3
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 842
    const/16 v22, 0x0

    move/from16 v5, v22

    :goto_4
    move/from16 v22, v5

    move/from16 v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 843
    move-object/from16 v22, v2

    move/from16 v23, v5

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v6, v22

    .line 844
    .restart local v6    # "child":Landroid/view/View;
    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    move-object/from16 v22, v6

    move-object/from16 v0, v22

    instance-of v0, v0, Landroidx/constraintlayout/widget/Constraints;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 845
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    check-cast v23, Landroidx/constraintlayout/widget/Constraints;

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/widget/Constraints;->getConstraintSet()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 842
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 849
    .end local v6    # "child":Landroid/view/View;
    :cond_5
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 850
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 853
    :cond_6
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 855
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v5, v22

    .line 856
    .local v5, "helperCount":I
    move/from16 v22, v5

    if-lez v22, :cond_7

    .line 857
    const/16 v22, 0x0

    move/from16 v6, v22

    .local v6, "i":I
    :goto_5
    move/from16 v22, v6

    move/from16 v23, v5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 858
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move/from16 v23, v6

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/constraintlayout/widget/ConstraintHelper;

    move-object/from16 v7, v22

    .line 859
    .local v7, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    move-object/from16 v22, v7

    move-object/from16 v23, v2

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 857
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 863
    .end local v6    # "i":I
    .end local v7    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    :cond_7
    const/16 v22, 0x0

    move/from16 v6, v22

    .restart local v6    # "i":I
    :goto_6
    move/from16 v22, v6

    move/from16 v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 864
    move-object/from16 v22, v2

    move/from16 v23, v6

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v7, v22

    .line 865
    .local v7, "child":Landroid/view/View;
    move-object/from16 v22, v7

    move-object/from16 v0, v22

    instance-of v0, v0, Landroidx/constraintlayout/widget/Placeholder;

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 866
    move-object/from16 v22, v7

    check-cast v22, Landroidx/constraintlayout/widget/Placeholder;

    move-object/from16 v23, v2

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/widget/Placeholder;->updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 863
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 870
    .end local v7    # "child":Landroid/view/View;
    :cond_9
    const/16 v22, 0x0

    move/from16 v6, v22

    :goto_7
    move/from16 v22, v6

    move/from16 v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2e

    .line 871
    move-object/from16 v22, v2

    move/from16 v23, v6

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v7, v22

    .line 872
    .restart local v7    # "child":Landroid/view/View;
    move-object/from16 v22, v2

    move-object/from16 v23, v7

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v22

    move-object/from16 v8, v22

    .line 873
    .local v8, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v22, v8

    if-nez v22, :cond_b

    .line 874
    .line 870
    :cond_a
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 876
    :cond_b
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object/from16 v9, v22

    .line 877
    .local v9, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    .line 878
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    move/from16 v22, v0

    if-eqz v22, :cond_12

    .line 879
    move-object/from16 v22, v9

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    .line 895
    :cond_c
    :goto_9
    move-object/from16 v22, v8

    move-object/from16 v23, v7

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 896
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 897
    move-object/from16 v22, v8

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 899
    :cond_d
    move-object/from16 v22, v8

    move-object/from16 v23, v7

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 900
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v22, v0

    move-object/from16 v23, v8

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 902
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v22, v0

    if-eqz v22, :cond_e

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v22, v0

    if-nez v22, :cond_f

    .line 903
    :cond_e
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v23, v8

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v22

    .line 906
    :cond_f
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    move/from16 v22, v0

    if-eqz v22, :cond_15

    .line 907
    move-object/from16 v22, v8

    check-cast v22, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object/from16 v10, v22

    .line 908
    .local v10, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    move/from16 v22, v0

    move/from16 v11, v22

    .line 909
    .local v11, "resolvedGuideBegin":I
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    move/from16 v22, v0

    move/from16 v12, v22

    .line 910
    .local v12, "resolvedGuideEnd":I
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    move/from16 v22, v0

    move/from16 v13, v22

    .line 911
    .local v13, "resolvedGuidePercent":F
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x11

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    .line 912
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    move/from16 v22, v0

    move/from16 v11, v22

    .line 913
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    move/from16 v22, v0

    move/from16 v12, v22

    .line 914
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    move/from16 v22, v0

    move/from16 v13, v22

    .line 916
    :cond_10
    move/from16 v22, v13

    const/high16 v23, -0x40800000    # -1.0f

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_13

    .line 917
    move-object/from16 v22, v10

    move/from16 v23, v13

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 923
    :cond_11
    :goto_a
    goto/16 :goto_8

    .line 881
    .end local v10    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    .end local v11    # "resolvedGuideBegin":I
    .end local v12    # "resolvedGuideEnd":I
    .end local v13    # "resolvedGuidePercent":F
    :cond_12
    move/from16 v22, v3

    if-eqz v22, :cond_c

    .line 886
    move-object/from16 v22, v2

    :try_start_1
    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/widget/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v23, v7

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v10, v22

    .line 887
    .local v10, "IdAsString":Ljava/lang/String;
    move-object/from16 v22, v2

    const/16 v23, 0x0

    move-object/from16 v24, v10

    move-object/from16 v25, v7

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getId()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v22 .. v25}, Landroidx/constraintlayout/widget/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 888
    move-object/from16 v22, v10

    move-object/from16 v23, v10

    const-string/jumbo v24, "id/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x3

    add-int/lit8 v23, v23, 0x3

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v10, v22

    .line 889
    move-object/from16 v22, v2

    move-object/from16 v23, v7

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getId()I

    move-result v23

    invoke-direct/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v22

    move-object/from16 v23, v10

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 892
    goto/16 :goto_9

    .line 890
    .end local v10    # "IdAsString":Ljava/lang/String;
    :catch_1
    move-exception v22

    move-object/from16 v10, v22

    goto/16 :goto_9

    .line 918
    .local v10, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    .restart local v11    # "resolvedGuideBegin":I
    .restart local v12    # "resolvedGuideEnd":I
    .restart local v13    # "resolvedGuidePercent":F
    :cond_13
    move/from16 v22, v11

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_14

    .line 919
    move-object/from16 v22, v10

    move/from16 v23, v11

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_a

    .line 920
    :cond_14
    move/from16 v22, v12

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11

    .line 921
    move-object/from16 v22, v10

    move/from16 v23, v12

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_a

    .line 923
    .end local v10    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    .end local v11    # "resolvedGuideBegin":I
    .end local v12    # "resolvedGuideEnd":I
    .end local v13    # "resolvedGuidePercent":F
    :cond_15
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_16

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 943
    :cond_16
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    move/from16 v22, v0

    move/from16 v10, v22

    .line 944
    .local v10, "resolvedLeftToLeft":I
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    move/from16 v22, v0

    move/from16 v11, v22

    .line 945
    .local v11, "resolvedLeftToRight":I
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    move/from16 v22, v0

    move/from16 v12, v22

    .line 946
    .local v12, "resolvedRightToLeft":I
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    move/from16 v22, v0

    move/from16 v13, v22

    .line 947
    .local v13, "resolvedRightToRight":I
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    move/from16 v22, v0

    move/from16 v14, v22

    .line 948
    .local v14, "resolveGoneLeftMargin":I
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    move/from16 v22, v0

    move/from16 v15, v22

    .line 949
    .local v15, "resolveGoneRightMargin":I
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    move/from16 v22, v0

    move/from16 v16, v22

    .line 951
    .local v16, "resolvedHorizontalBias":F
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x11

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_18

    .line 954
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    move/from16 v22, v0

    move/from16 v10, v22

    .line 955
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    move/from16 v22, v0

    move/from16 v11, v22

    .line 956
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    move/from16 v22, v0

    move/from16 v12, v22

    .line 957
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    move/from16 v22, v0

    move/from16 v13, v22

    .line 958
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    move/from16 v22, v0

    move/from16 v14, v22

    .line 959
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    move/from16 v22, v0

    move/from16 v15, v22

    .line 960
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    move/from16 v22, v0

    move/from16 v16, v22

    .line 962
    move/from16 v22, v10

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_17

    move/from16 v22, v11

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_17

    .line 963
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1d

    .line 964
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    move/from16 v22, v0

    move/from16 v10, v22

    .line 969
    :cond_17
    :goto_b
    move/from16 v22, v12

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    move/from16 v22, v13

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 970
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1e

    .line 971
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    move/from16 v22, v0

    move/from16 v12, v22

    .line 979
    :cond_18
    :goto_c
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1f

    .line 980
    move-object/from16 v22, v2

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v22

    move-object/from16 v17, v22

    .line 981
    .local v17, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v22, v17

    if-eqz v22, :cond_19

    .line 982
    move-object/from16 v22, v8

    move-object/from16 v23, v17

    move-object/from16 v24, v9

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    move/from16 v24, v0

    move-object/from16 v25, v9

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    move/from16 v25, v0

    invoke-virtual/range {v22 .. v25}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connectCircularConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V

    .line 984
    .line 1080
    .end local v17    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_19
    :goto_d
    move/from16 v22, v3

    if-eqz v22, :cond_1b

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1a

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1b

    .line 1082
    :cond_1a
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    move/from16 v23, v0

    move-object/from16 v24, v9

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setOrigin(II)V

    .line 1086
    :cond_1b
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v22, v0

    if-nez v22, :cond_2b

    .line 1087
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2a

    .line 1088
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1089
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v22

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1090
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v22

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1099
    :goto_e
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v22, v0

    if-nez v22, :cond_2d

    .line 1100
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2c

    .line 1101
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1102
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v22

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1103
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v22

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1113
    :goto_f
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1c

    .line 1114
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    .line 1116
    :cond_1c
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    .line 1117
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalWeight(F)V

    .line 1118
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1119
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1120
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    move/from16 v23, v0

    move-object/from16 v24, v9

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    move/from16 v24, v0

    move-object/from16 v25, v9

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    move/from16 v25, v0

    move-object/from16 v26, v9

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    move/from16 v26, v0

    invoke-virtual/range {v22 .. v26}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 1123
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    move/from16 v23, v0

    move-object/from16 v24, v9

    move-object/from16 v0, v24

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    move/from16 v24, v0

    move-object/from16 v25, v9

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    move/from16 v25, v0

    move-object/from16 v26, v9

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    move/from16 v26, v0

    invoke-virtual/range {v22 .. v26}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    goto/16 :goto_8

    .line 965
    :cond_1d
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_17

    .line 966
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    move/from16 v22, v0

    move/from16 v11, v22

    goto/16 :goto_b

    .line 972
    :cond_1e
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_18

    .line 973
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    move/from16 v22, v0

    move/from16 v13, v22

    goto/16 :goto_c

    .line 986
    :cond_1f
    move/from16 v22, v10

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_26

    .line 987
    move-object/from16 v22, v2

    move/from16 v23, v10

    invoke-direct/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v22

    move-object/from16 v17, v22

    .line 988
    .restart local v17    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v22, v17

    if-eqz v22, :cond_20

    .line 989
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v24, v17

    sget-object v25, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v26, v9

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    move/from16 v27, v14

    invoke-virtual/range {v22 .. v27}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 993
    .line 1003
    .end local v17    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_20
    :goto_10
    move/from16 v22, v12

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_27

    .line 1004
    move-object/from16 v22, v2

    move/from16 v23, v12

    invoke-direct/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v22

    move-object/from16 v17, v22

    .line 1005
    .restart local v17    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v22, v17

    if-eqz v22, :cond_21

    .line 1006
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v24, v17

    sget-object v25, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v26, v9

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    move/from16 v27, v15

    invoke-virtual/range {v22 .. v27}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1010
    .line 1020
    .end local v17    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_21
    :goto_11
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_28

    .line 1021
    move-object/from16 v22, v2

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v22

    move-object/from16 v17, v22

    .line 1022
    .restart local v17    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v22, v17

    if-eqz v22, :cond_22

    .line 1023
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v24, v17

    sget-object v25, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v26, v9

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    move/from16 v26, v0

    move-object/from16 v27, v9

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move/from16 v27, v0

    invoke-virtual/range {v22 .. v27}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1027
    .line 1037
    .end local v17    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_22
    :goto_12
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_29

    .line 1038
    move-object/from16 v22, v2

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v22

    move-object/from16 v17, v22

    .line 1039
    .restart local v17    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v22, v17

    if-eqz v22, :cond_23

    .line 1040
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v24, v17

    sget-object v25, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v26, v9

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    move-object/from16 v27, v9

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move/from16 v27, v0

    invoke-virtual/range {v22 .. v27}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1044
    .line 1054
    .end local v17    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_23
    :goto_13
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_24

    .line 1055
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/View;

    move-object/from16 v17, v22

    .line 1056
    .local v17, "view":Landroid/view/View;
    move-object/from16 v22, v2

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v22

    move-object/from16 v18, v22

    .line 1057
    .local v18, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v22, v18

    if-eqz v22, :cond_24

    move-object/from16 v22, v17

    if-eqz v22, :cond_24

    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move/from16 v22, v0

    if-eqz v22, :cond_24

    .line 1058
    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object/from16 v19, v22

    .line 1059
    .local v19, "targetParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object/from16 v22, v9

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1060
    move-object/from16 v22, v19

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1061
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v22

    move-object/from16 v20, v22

    .line 1062
    .local v20, "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v22, v18

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1063
    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v22

    move-object/from16 v21, v22

    .line 1064
    .local v21, "targetBaseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v22, v20

    move-object/from16 v23, v21

    const/16 v24, 0x0

    const/16 v25, -0x1

    sget-object v26, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v22 .. v28}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v22

    .line 1067
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1068
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1072
    .end local v17    # "view":Landroid/view/View;
    .end local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v19    # "targetParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v20    # "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v21    # "targetBaseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_24
    move/from16 v22, v16

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_25

    move/from16 v22, v16

    const/high16 v23, 0x3f000000    # 0.5f

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_25

    .line 1073
    move-object/from16 v22, v8

    move/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1075
    :cond_25
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_19

    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    move/from16 v22, v0

    const/high16 v23, 0x3f000000    # 0.5f

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_19

    .line 1076
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    goto/16 :goto_d

    .line 993
    :cond_26
    move/from16 v22, v11

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_20

    .line 994
    move-object/from16 v22, v2

    move/from16 v23, v11

    invoke-direct/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v22

    move-object/from16 v17, v22

    .line 995
    .local v17, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v22, v17

    if-eqz v22, :cond_20

    .line 996
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v24, v17

    sget-object v25, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v26, v9

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    move/from16 v27, v14

    invoke-virtual/range {v22 .. v27}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_10

    .line 1010
    .end local v17    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_27
    move/from16 v22, v13

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_21

    .line 1011
    move-object/from16 v22, v2

    move/from16 v23, v13

    invoke-direct/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v22

    move-object/from16 v17, v22

    .line 1012
    .restart local v17    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v22, v17

    if-eqz v22, :cond_21

    .line 1013
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v24, v17

    sget-object v25, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v26, v9

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    move/from16 v27, v15

    invoke-virtual/range {v22 .. v27}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_11

    .line 1027
    .end local v17    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_28
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_22

    .line 1028
    move-object/from16 v22, v2

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v22

    move-object/from16 v17, v22

    .line 1029
    .restart local v17    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v22, v17

    if-eqz v22, :cond_22

    .line 1030
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v24, v17

    sget-object v25, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v26, v9

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    move/from16 v26, v0

    move-object/from16 v27, v9

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move/from16 v27, v0

    invoke-virtual/range {v22 .. v27}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_12

    .line 1044
    .end local v17    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_29
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_23

    .line 1045
    move-object/from16 v22, v2

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v22

    move-object/from16 v17, v22

    .line 1046
    .restart local v17    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v22, v17

    if-eqz v22, :cond_23

    .line 1047
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v24, v17

    sget-object v25, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v26, v9

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    move-object/from16 v27, v9

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move/from16 v27, v0

    invoke-virtual/range {v22 .. v27}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_13

    .line 1092
    .end local v17    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2a
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1093
    move-object/from16 v22, v8

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_e

    .line 1096
    :cond_2b
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1097
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_e

    .line 1105
    :cond_2c
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1106
    move-object/from16 v22, v8

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto/16 :goto_f

    .line 1109
    :cond_2d
    move-object/from16 v22, v8

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1110
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto/16 :goto_f

    .line 1128
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v10    # "resolvedLeftToLeft":I
    .end local v11    # "resolvedLeftToRight":I
    .end local v12    # "resolvedRightToLeft":I
    .end local v13    # "resolvedRightToRight":I
    .end local v14    # "resolveGoneLeftMargin":I
    .end local v15    # "resolveGoneRightMargin":I
    .end local v16    # "resolvedHorizontalBias":F
    :cond_2e
    return-void
.end method

.method private setSelfDimensionBehaviour(II)V
    .locals 17

    .prologue
    .line 1798
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move/from16 v1, p1

    .local v1, "widthMeasureSpec":I
    move/from16 v2, p2

    .local v2, "heightMeasureSpec":I
    move v14, v1

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    move v3, v14

    .line 1799
    .local v3, "widthMode":I
    move v14, v1

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    move v4, v14

    .line 1800
    .local v4, "widthSize":I
    move v14, v2

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    move v5, v14

    .line 1801
    .local v5, "heightMode":I
    move v14, v2

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    move v6, v14

    .line 1803
    .local v6, "heightSize":I
    move-object v14, v0

    invoke-virtual {v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v14

    move-object v15, v0

    invoke-virtual {v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v15

    add-int/2addr v14, v15

    move v7, v14

    .line 1804
    .local v7, "heightPadding":I
    move-object v14, v0

    invoke-virtual {v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v14

    move-object v15, v0

    invoke-virtual {v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v15

    add-int/2addr v14, v15

    move v8, v14

    .line 1806
    .local v8, "widthPadding":I
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v9, v14

    .line 1807
    .local v9, "widthBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v10, v14

    .line 1808
    .local v10, "heightBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v14, 0x0

    move v11, v14

    .line 1809
    .local v11, "desiredWidth":I
    const/4 v14, 0x0

    move v12, v14

    .line 1811
    .local v12, "desiredHeight":I
    move-object v14, v0

    invoke-virtual {v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    move-object v13, v14

    .line 1812
    .local v13, "params":Landroid/view/ViewGroup$LayoutParams;
    move v14, v3

    sparse-switch v14, :sswitch_data_0

    .line 1826
    :goto_0
    move v14, v5

    sparse-switch v14, :sswitch_data_1

    .line 1841
    :goto_1
    move-object v14, v0

    iget-object v14, v14, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1842
    move-object v14, v0

    iget-object v14, v14, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1843
    move-object v14, v0

    iget-object v14, v14, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v15, v9

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1844
    move-object v14, v0

    iget-object v14, v14, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move v15, v11

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1845
    move-object v14, v0

    iget-object v14, v14, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v15, v10

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1846
    move-object v14, v0

    iget-object v14, v14, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move v15, v12

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1847
    move-object v14, v0

    iget-object v14, v14, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v15, v0

    iget v15, v15, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1848
    move-object v14, v0

    iget-object v14, v14, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v15, v0

    iget v15, v15, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1849
    return-void

    .line 1814
    :sswitch_0
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v9, v14

    .line 1815
    move v14, v4

    move v11, v14

    .line 1817
    goto :goto_0

    .line 1819
    :sswitch_1
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v9, v14

    .line 1821
    goto :goto_0

    .line 1823
    :sswitch_2
    move-object v14, v0

    iget v14, v14, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    move v15, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    move v15, v8

    sub-int/2addr v14, v15

    move v11, v14

    goto :goto_0

    .line 1828
    :sswitch_3
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v10, v14

    .line 1829
    move v14, v6

    move v12, v14

    .line 1831
    goto :goto_1

    .line 1833
    :sswitch_4
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v10, v14

    .line 1835
    goto :goto_1

    .line 1837
    :sswitch_5
    move-object v14, v0

    iget v14, v14, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    move v15, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    move v15, v7

    sub-int/2addr v14, v15

    move v12, v14

    goto/16 :goto_1

    .line 1812
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_2
    .end sparse-switch

    .line 1826
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_4
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private updateHierarchy()V
    .locals 7

    .prologue
    .line 791
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v5

    move v1, v5

    .line 793
    .local v1, "count":I
    const/4 v5, 0x0

    move v2, v5

    .line 794
    .local v2, "recompute":Z
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 795
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 796
    .local v4, "child":Landroid/view/View;
    move-object v5, v4

    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 797
    const/4 v5, 0x1

    move v2, v5

    .line 801
    .end local v4    # "child":Landroid/view/View;
    :cond_0
    move v5, v2

    if-eqz v5, :cond_1

    .line 802
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 803
    move-object v5, v0

    invoke-direct {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setChildrenConstraints()V

    .line 805
    :cond_1
    return-void

    .line 794
    .restart local v4    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private updatePostMeasures()V
    .locals 7

    .prologue
    .line 1258
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v5

    move v1, v5

    .line 1259
    .local v1, "widgetsCount":I
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 1260
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 1261
    .local v3, "child":Landroid/view/View;
    move-object v5, v3

    instance-of v5, v5, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v5, :cond_0

    .line 1262
    move-object v5, v3

    check-cast v5, Landroidx/constraintlayout/widget/Placeholder;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/Placeholder;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1259
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1266
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 1267
    .local v2, "helperCount":I
    move v5, v2

    if-lez v5, :cond_2

    .line 1268
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 1269
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintHelper;

    move-object v4, v5

    .line 1270
    .local v4, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1268
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1273
    .end local v3    # "i":I
    .end local v4    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    :cond_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 8

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "index":I
    move-object v3, p3

    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 635
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_0

    .line 636
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 638
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .prologue
    .line 1996
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 26

    .prologue
    .line 2023
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object/from16 v3, p1

    .local v3, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-super/range {v19 .. v20}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2024
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2025
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v19

    move/from16 v4, v19

    .line 2026
    .local v4, "count":I
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v5, v19

    .line 2027
    .local v5, "cw":F
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v6, v19

    .line 2028
    .local v6, "ch":F
    const/high16 v19, 0x44870000    # 1080.0f

    move/from16 v7, v19

    .line 2029
    .local v7, "ow":F
    const/high16 v19, 0x44f00000    # 1920.0f

    move/from16 v8, v19

    .line 2030
    .local v8, "oh":F
    const/16 v19, 0x0

    move/from16 v9, v19

    .local v9, "i":I
    :goto_0
    move/from16 v19, v9

    move/from16 v20, v4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 2031
    move-object/from16 v19, v2

    move/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v10, v19

    .line 2032
    .local v10, "child":Landroid/view/View;
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 2033
    .line 2030
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2035
    :cond_1
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v11, v19

    .line 2036
    .local v11, "tag":Ljava/lang/Object;
    move-object/from16 v19, v11

    if-eqz v19, :cond_0

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 2037
    move-object/from16 v19, v11

    check-cast v19, Ljava/lang/String;

    move-object/from16 v12, v19

    .line 2038
    .local v12, "coordinates":Ljava/lang/String;
    move-object/from16 v19, v12

    const-string/jumbo v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v13, v19

    .line 2039
    .local v13, "split":[Ljava/lang/String;
    move-object/from16 v19, v13

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 2040
    move-object/from16 v19, v13

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v14, v19

    .line 2041
    .local v14, "x":I
    move-object/from16 v19, v13

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v15, v19

    .line 2042
    .local v15, "y":I
    move-object/from16 v19, v13

    const/16 v20, 0x2

    aget-object v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v16, v19

    .line 2043
    .local v16, "w":I
    move-object/from16 v19, v13

    const/16 v20, 0x3

    aget-object v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v17, v19

    .line 2044
    .local v17, "h":I
    move/from16 v19, v14

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v7

    div-float v19, v19, v20

    move/from16 v20, v5

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v14, v19

    .line 2045
    move/from16 v19, v15

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v8

    div-float v19, v19, v20

    move/from16 v20, v6

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v15, v19

    .line 2046
    move/from16 v19, v16

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v7

    div-float v19, v19, v20

    move/from16 v20, v5

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v16, v19

    .line 2047
    move/from16 v19, v17

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v8

    div-float v19, v19, v20

    move/from16 v20, v6

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v17, v19

    .line 2048
    new-instance v19, Landroid/graphics/Paint;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v18, v19

    .line 2049
    .local v18, "paint":Landroid/graphics/Paint;
    move-object/from16 v19, v18

    const/high16 v20, -0x10000

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 2050
    move-object/from16 v19, v3

    move/from16 v20, v14

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v15

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v14

    move/from16 v23, v16

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v15

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v18

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2051
    move-object/from16 v19, v3

    move/from16 v20, v14

    move/from16 v21, v16

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v15

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v14

    move/from16 v23, v16

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v15

    move/from16 v24, v17

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v18

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2052
    move-object/from16 v19, v3

    move/from16 v20, v14

    move/from16 v21, v16

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v15

    move/from16 v22, v17

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v14

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v15

    move/from16 v24, v17

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v18

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2053
    move-object/from16 v19, v3

    move/from16 v20, v14

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v15

    move/from16 v22, v17

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v14

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v15

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v18

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2054
    move-object/from16 v19, v18

    const v20, -0xff0100

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 2055
    move-object/from16 v19, v3

    move/from16 v20, v14

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v15

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v14

    move/from16 v23, v16

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v15

    move/from16 v24, v17

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v18

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2056
    move-object/from16 v19, v3

    move/from16 v20, v14

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v15

    move/from16 v22, v17

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v14

    move/from16 v23, v16

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v15

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v18

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 2061
    .end local v4    # "count":I
    .end local v5    # "cw":F
    .end local v6    # "ch":F
    .end local v7    # "ow":F
    .end local v8    # "oh":F
    .end local v9    # "i":I
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "tag":Ljava/lang/Object;
    .end local v12    # "coordinates":Ljava/lang/String;
    .end local v13    # "split":[Ljava/lang/String;
    .end local v14    # "x":I
    .end local v15    # "y":I
    .end local v16    # "w":I
    .end local v17    # "h":I
    .end local v18    # "paint":Landroid/graphics/Paint;
    :cond_2
    return-void
.end method

.method public fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V
    .locals 4

    .prologue
    .line 1496
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, p1

    .local v1, "metrics":Landroidx/constraintlayout/solver/Metrics;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    .line 1497
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V

    .line 1498
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 6

    .prologue
    .line 1980
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 1988
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 7

    .prologue
    .line 1972
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move v1, p1

    .local v1, "type":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move v4, v1

    if-nez v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 561
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 562
    .local v3, "name":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 563
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 566
    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    .end local v3    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 2

    .prologue
    .line 787
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    .prologue
    .line 777
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    return v0
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    .line 740
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    return v0
.end method

.method public getMinWidth()I
    .locals 2

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    return v0
.end method

.method public getOptimizationLevel()I
    .locals 2

    .prologue
    .line 1965
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    return v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 2015
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    return-object v0
.end method

.method public final getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 4

    .prologue
    .line 1154
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    move-object v3, v0

    if-ne v2, v3, :cond_0

    .line 1155
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v0, v2

    .line 1157
    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    :cond_0
    move-object v2, v1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 25

    .prologue
    .line 1875
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move/from16 v3, p1

    .local v3, "changed":Z
    move/from16 v4, p2

    .local v4, "left":I
    move/from16 v5, p3

    .local v5, "top":I
    move/from16 v6, p4

    .local v6, "right":I
    move/from16 v7, p5

    .local v7, "bottom":I
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v20

    move/from16 v8, v20

    .line 1876
    .local v8, "widgetsCount":I
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v20

    move/from16 v9, v20

    .line 1877
    .local v9, "isInEditMode":Z
    const/16 v20, 0x0

    move/from16 v10, v20

    .local v10, "i":I
    :goto_0
    move/from16 v20, v10

    move/from16 v21, v8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 1878
    move-object/from16 v20, v2

    move/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v11, v20

    .line 1879
    .local v11, "child":Landroid/view/View;
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object/from16 v12, v20

    .line 1880
    .local v12, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v20, v0

    move-object/from16 v13, v20

    .line 1882
    .local v13, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    move/from16 v20, v9

    if-nez v20, :cond_1

    .line 1885
    .line 1877
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1887
    :cond_1
    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 1888
    goto :goto_1

    .line 1890
    :cond_2
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v20

    move/from16 v14, v20

    .line 1891
    .local v14, "l":I
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v20

    move/from16 v15, v20

    .line 1892
    .local v15, "t":I
    move/from16 v20, v14

    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v16, v20

    .line 1893
    .local v16, "r":I
    move/from16 v20, v15

    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v17, v20

    .line 1915
    .local v17, "b":I
    move-object/from16 v20, v11

    move/from16 v21, v14

    move/from16 v22, v15

    move/from16 v23, v16

    move/from16 v24, v17

    invoke-virtual/range {v20 .. v24}, Landroid/view/View;->layout(IIII)V

    .line 1916
    move-object/from16 v20, v11

    move-object/from16 v0, v20

    instance-of v0, v0, Landroidx/constraintlayout/widget/Placeholder;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1917
    move-object/from16 v20, v11

    check-cast v20, Landroidx/constraintlayout/widget/Placeholder;

    move-object/from16 v18, v20

    .line 1918
    .local v18, "holder":Landroidx/constraintlayout/widget/Placeholder;
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Landroidx/constraintlayout/widget/Placeholder;->getContent()Landroid/view/View;

    move-result-object v20

    move-object/from16 v19, v20

    .line 1919
    .local v19, "content":Landroid/view/View;
    move-object/from16 v20, v19

    if-eqz v20, :cond_0

    .line 1920
    move-object/from16 v20, v19

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1921
    move-object/from16 v20, v19

    move/from16 v21, v14

    move/from16 v22, v15

    move/from16 v23, v16

    move/from16 v24, v17

    invoke-virtual/range {v20 .. v24}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1925
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v13    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "l":I
    .end local v15    # "t":I
    .end local v16    # "r":I
    .end local v17    # "b":I
    .end local v18    # "holder":Landroidx/constraintlayout/widget/Placeholder;
    .end local v19    # "content":Landroid/view/View;
    :cond_3
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v10, v20

    .line 1926
    .local v10, "helperCount":I
    move/from16 v20, v10

    if-lez v20, :cond_4

    .line 1927
    const/16 v20, 0x0

    move/from16 v11, v20

    .local v11, "i":I
    :goto_2
    move/from16 v20, v11

    move/from16 v21, v10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 1928
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move/from16 v21, v11

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroidx/constraintlayout/widget/ConstraintHelper;

    move-object/from16 v12, v20

    .line 1929
    .local v12, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    move-object/from16 v20, v12

    move-object/from16 v21, v2

    invoke-virtual/range {v20 .. v21}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1927
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1932
    .end local v11    # "i":I
    .end local v12    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 45

    .prologue
    .line 1505
    move-object/from16 v4, p0

    .local v4, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move/from16 v5, p1

    .local v5, "widthMeasureSpec":I
    move/from16 v6, p2

    .local v6, "heightMeasureSpec":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v39

    move-wide/from16 v7, v39

    .line 1506
    .local v7, "time":J
    const/16 v39, 0x0

    move/from16 v9, v39

    .line 1507
    .local v9, "REMEASURES_A":I
    const/16 v39, 0x0

    move/from16 v10, v39

    .line 1513
    .local v10, "REMEASURES_B":I
    move/from16 v39, v5

    invoke-static/range {v39 .. v39}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v39

    move/from16 v11, v39

    .line 1514
    .local v11, "widthMode":I
    move/from16 v39, v5

    invoke-static/range {v39 .. v39}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v39

    move/from16 v12, v39

    .line 1515
    .local v12, "widthSize":I
    move/from16 v39, v6

    invoke-static/range {v39 .. v39}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v39

    move/from16 v13, v39

    .line 1516
    .local v13, "heightMode":I
    move/from16 v39, v6

    invoke-static/range {v39 .. v39}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v39

    move/from16 v14, v39

    .line 1542
    .local v14, "heightSize":I
    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v39

    move/from16 v15, v39

    .line 1543
    .local v15, "paddingLeft":I
    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v39

    move/from16 v16, v39

    .line 1545
    .local v16, "paddingTop":I
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move/from16 v40, v15

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 1546
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move/from16 v40, v16

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 1547
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v40, v4

    move-object/from16 v0, v40

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMaxWidth(I)V

    .line 1548
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v40, v4

    move-object/from16 v0, v40

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMaxHeight(I)V

    .line 1550
    sget v39, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v40, 0x11

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_0

    .line 1551
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutDirection()I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_d

    const/16 v40, 0x1

    :goto_0
    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 1554
    :cond_0
    move-object/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    invoke-direct/range {v39 .. v41}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelfDimensionBehaviour(II)V

    .line 1555
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v39

    move/from16 v17, v39

    .line 1556
    .local v17, "startingWidth":I
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v39

    move/from16 v18, v39

    .line 1558
    .local v18, "startingHeight":I
    const/16 v39, 0x0

    move/from16 v19, v39

    .line 1559
    .local v19, "runAnalyzer":Z
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    move/from16 v39, v0

    if-eqz v39, :cond_1

    .line 1560
    move-object/from16 v39, v4

    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v39

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 1561
    move-object/from16 v39, v4

    invoke-direct/range {v39 .. v39}, Landroidx/constraintlayout/widget/ConstraintLayout;->updateHierarchy()V

    .line 1562
    const/16 v39, 0x1

    move/from16 v19, v39

    .line 1565
    :cond_1
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    move/from16 v39, v0

    const/16 v40, 0x8

    and-int/lit8 v39, v39, 0x8

    const/16 v40, 0x8

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_e

    const/16 v39, 0x1

    :goto_1
    move/from16 v20, v39

    .line 1567
    .local v20, "optimiseDimensions":Z
    move/from16 v39, v20

    if-eqz v39, :cond_f

    .line 1568
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->preOptimize()V

    .line 1569
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move/from16 v40, v17

    move/from16 v41, v18

    invoke-virtual/range {v39 .. v41}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeForDimensions(II)V

    .line 1570
    move-object/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    invoke-direct/range {v39 .. v41}, Landroidx/constraintlayout/widget/ConstraintLayout;->internalMeasureDimensions(II)V

    .line 1574
    :goto_2
    move-object/from16 v39, v4

    invoke-direct/range {v39 .. v39}, Landroidx/constraintlayout/widget/ConstraintLayout;->updatePostMeasures()V

    .line 1582
    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v39

    if-lez v39, :cond_2

    move/from16 v39, v19

    if-eqz v39, :cond_2

    .line 1583
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/Analyzer;->determineGroups(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 1585
    :cond_2
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    move/from16 v39, v0

    if-eqz v39, :cond_6

    .line 1586
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    move/from16 v39, v0

    if-eqz v39, :cond_4

    move/from16 v39, v11

    const/high16 v40, -0x80000000

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_4

    .line 1587
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    move/from16 v39, v0

    move/from16 v40, v12

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_3

    .line 1588
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v40, v4

    move-object/from16 v0, v40

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1590
    :cond_3
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    sget-object v40, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1591
    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1593
    :cond_4
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    move/from16 v39, v0

    if-eqz v39, :cond_6

    move/from16 v39, v13

    const/high16 v40, -0x80000000

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_6

    .line 1594
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    move/from16 v39, v0

    move/from16 v40, v14

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_5

    .line 1595
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v40, v4

    move-object/from16 v0, v40

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1597
    :cond_5
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    sget-object v40, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1598
    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1602
    :cond_6
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    move/from16 v39, v0

    const/16 v40, 0x20

    and-int/lit8 v39, v39, 0x20

    const/16 v40, 0x20

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_a

    .line 1603
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v39

    move/from16 v21, v39

    .line 1604
    .local v21, "width":I
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v39

    move/from16 v22, v39

    .line 1605
    .local v22, "height":I
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    move/from16 v39, v0

    move/from16 v40, v21

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_7

    move/from16 v39, v11

    const/high16 v40, 0x40000000    # 2.0f

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_7

    .line 1606
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move/from16 v41, v21

    invoke-static/range {v39 .. v41}, Landroidx/constraintlayout/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    .line 1608
    :cond_7
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    move/from16 v39, v0

    move/from16 v40, v22

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_8

    move/from16 v39, v13

    const/high16 v40, 0x40000000    # 2.0f

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_8

    .line 1609
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    move/from16 v41, v22

    invoke-static/range {v39 .. v41}, Landroidx/constraintlayout/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    .line 1611
    :cond_8
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    move/from16 v39, v0

    if-eqz v39, :cond_9

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    move/from16 v39, v0

    move/from16 v40, v12

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_9

    .line 1612
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move/from16 v41, v12

    invoke-static/range {v39 .. v41}, Landroidx/constraintlayout/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    .line 1614
    :cond_9
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    move/from16 v39, v0

    if-eqz v39, :cond_a

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    move/from16 v39, v0

    move/from16 v40, v14

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_a

    .line 1615
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    move/from16 v41, v14

    invoke-static/range {v39 .. v41}, Landroidx/constraintlayout/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    .line 1620
    .end local v21    # "width":I
    .end local v22    # "height":I
    :cond_a
    move-object/from16 v39, v4

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v39

    if-lez v39, :cond_b

    .line 1621
    move-object/from16 v39, v4

    const-string/jumbo v40, "First pass"

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/widget/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1623
    :cond_b
    const/16 v39, 0x0

    move/from16 v21, v39

    .line 1626
    .local v21, "childState":I
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    move/from16 v22, v39

    .line 1628
    .local v22, "sizeDependentWidgetsCount":I
    move/from16 v39, v16

    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v40

    add-int v39, v39, v40

    move/from16 v23, v39

    .line 1629
    .local v23, "heightPadding":I
    move/from16 v39, v15

    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v40

    add-int v39, v39, v40

    move/from16 v24, v39

    .line 1635
    .local v24, "widthPadding":I
    move/from16 v39, v22

    if-lez v39, :cond_29

    .line 1636
    const/16 v39, 0x0

    move/from16 v25, v39

    .line 1637
    .local v25, "needSolverPass":Z
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v39

    sget-object v40, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_10

    const/16 v39, 0x1

    :goto_3
    move/from16 v26, v39

    .line 1639
    .local v26, "containerWrapWidth":Z
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v39

    sget-object v40, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_11

    const/16 v39, 0x1

    :goto_4
    move/from16 v27, v39

    .line 1641
    .local v27, "containerWrapHeight":Z
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v39

    move-object/from16 v40, v4

    move-object/from16 v0, v40

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    move/from16 v40, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    move/from16 v28, v39

    .line 1642
    .local v28, "minWidth":I
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v39

    move-object/from16 v40, v4

    move-object/from16 v0, v40

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    move/from16 v40, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    move/from16 v29, v39

    .line 1643
    .local v29, "minHeight":I
    const/16 v39, 0x0

    move/from16 v30, v39

    .local v30, "i":I
    :goto_5
    move/from16 v39, v30

    move/from16 v40, v22

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_20

    .line 1644
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move/from16 v40, v30

    invoke-virtual/range {v39 .. v40}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v31, v39

    .line 1645
    .local v31, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v39, v31

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/view/View;

    move-object/from16 v32, v39

    .line 1646
    .local v32, "child":Landroid/view/View;
    move-object/from16 v39, v32

    if-nez v39, :cond_12

    .line 1647
    .line 1643
    :cond_c
    :goto_6
    add-int/lit8 v30, v30, 0x1

    goto :goto_5

    .line 1551
    .end local v17    # "startingWidth":I
    .end local v18    # "startingHeight":I
    .end local v19    # "runAnalyzer":Z
    .end local v20    # "optimiseDimensions":Z
    .end local v21    # "childState":I
    .end local v22    # "sizeDependentWidgetsCount":I
    .end local v23    # "heightPadding":I
    .end local v24    # "widthPadding":I
    .end local v25    # "needSolverPass":Z
    .end local v26    # "containerWrapWidth":Z
    .end local v27    # "containerWrapHeight":Z
    .end local v28    # "minWidth":I
    .end local v29    # "minHeight":I
    .end local v30    # "i":I
    .end local v31    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v32    # "child":Landroid/view/View;
    :cond_d
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 1565
    .restart local v17    # "startingWidth":I
    .restart local v18    # "startingHeight":I
    .restart local v19    # "runAnalyzer":Z
    :cond_e
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 1572
    .restart local v20    # "optimiseDimensions":Z
    :cond_f
    move-object/from16 v39, v4

    move/from16 v40, v5

    move/from16 v41, v6

    invoke-direct/range {v39 .. v41}, Landroidx/constraintlayout/widget/ConstraintLayout;->internalMeasureChildren(II)V

    goto/16 :goto_2

    .line 1637
    .restart local v21    # "childState":I
    .restart local v22    # "sizeDependentWidgetsCount":I
    .restart local v23    # "heightPadding":I
    .restart local v24    # "widthPadding":I
    .restart local v25    # "needSolverPass":Z
    :cond_10
    const/16 v39, 0x0

    goto/16 :goto_3

    .line 1639
    .restart local v26    # "containerWrapWidth":Z
    :cond_11
    const/16 v39, 0x0

    goto :goto_4

    .line 1649
    .restart local v27    # "containerWrapHeight":Z
    .restart local v28    # "minWidth":I
    .restart local v29    # "minHeight":I
    .restart local v30    # "i":I
    .restart local v31    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v32    # "child":Landroid/view/View;
    :cond_12
    move-object/from16 v39, v32

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v39

    check-cast v39, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object/from16 v33, v39

    .line 1650
    .local v33, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object/from16 v39, v33

    move-object/from16 v0, v39

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    move/from16 v39, v0

    if-nez v39, :cond_c

    move-object/from16 v39, v33

    move-object/from16 v0, v39

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    move/from16 v39, v0

    if-eqz v39, :cond_13

    .line 1651
    goto :goto_6

    .line 1653
    :cond_13
    move-object/from16 v39, v32

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getVisibility()I

    move-result v39

    const/16 v40, 0x8

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_14

    .line 1654
    goto :goto_6

    .line 1657
    :cond_14
    move/from16 v39, v20

    if-eqz v39, :cond_15

    move-object/from16 v39, v31

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v39

    if-eqz v39, :cond_15

    move-object/from16 v39, v31

    .line 1658
    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v39

    if-eqz v39, :cond_15

    .line 1659
    goto :goto_6

    .line 1661
    :cond_15
    const/16 v39, 0x0

    move/from16 v34, v39

    .line 1662
    .local v34, "widthSpec":I
    const/16 v39, 0x0

    move/from16 v35, v39

    .line 1664
    .local v35, "heightSpec":I
    move-object/from16 v39, v33

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    move/from16 v39, v0

    const/16 v40, -0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_1e

    move-object/from16 v39, v33

    move-object/from16 v0, v39

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v39, v0

    if-eqz v39, :cond_1e

    .line 1665
    move/from16 v39, v5

    move/from16 v40, v24

    move-object/from16 v41, v33

    move-object/from16 v0, v41

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    move/from16 v41, v0

    invoke-static/range {v39 .. v41}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v39

    move/from16 v34, v39

    .line 1669
    :goto_7
    move-object/from16 v39, v33

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    move/from16 v39, v0

    const/16 v40, -0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_1f

    move-object/from16 v39, v33

    move-object/from16 v0, v39

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v39, v0

    if-eqz v39, :cond_1f

    .line 1670
    move/from16 v39, v6

    move/from16 v40, v23

    move-object/from16 v41, v33

    move-object/from16 v0, v41

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    move/from16 v41, v0

    invoke-static/range {v39 .. v41}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v39

    move/from16 v35, v39

    .line 1676
    :goto_8
    move-object/from16 v39, v32

    move/from16 v40, v34

    move/from16 v41, v35

    invoke-virtual/range {v39 .. v41}, Landroid/view/View;->measure(II)V

    .line 1677
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v39, v0

    if-eqz v39, :cond_16

    .line 1678
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v39, v0

    move-object/from16 v44, v39

    move-object/from16 v39, v44

    move-object/from16 v40, v44

    move-object/from16 v0, v40

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->additionalMeasures:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x1

    add-long v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, v39

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->additionalMeasures:J

    .line 1681
    :cond_16
    add-int/lit8 v9, v9, 0x1

    .line 1683
    move-object/from16 v39, v32

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getMeasuredWidth()I

    move-result v39

    move/from16 v36, v39

    .line 1684
    .local v36, "measuredWidth":I
    move-object/from16 v39, v32

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getMeasuredHeight()I

    move-result v39

    move/from16 v37, v39

    .line 1686
    .local v37, "measuredHeight":I
    move/from16 v39, v36

    move-object/from16 v40, v31

    invoke-virtual/range {v40 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_19

    .line 1687
    move-object/from16 v39, v31

    move/from16 v40, v36

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1688
    move/from16 v39, v20

    if-eqz v39, :cond_17

    .line 1689
    move-object/from16 v39, v31

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v39

    move/from16 v40, v36

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1691
    :cond_17
    move/from16 v39, v26

    if-eqz v39, :cond_18

    move-object/from16 v39, v31

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v39

    move/from16 v40, v28

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_18

    .line 1692
    move-object/from16 v39, v31

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v39

    move-object/from16 v40, v31

    sget-object v41, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1693
    invoke-virtual/range {v40 .. v41}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v40

    add-int v39, v39, v40

    move/from16 v38, v39

    .line 1694
    .local v38, "w":I
    move/from16 v39, v28

    move/from16 v40, v38

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    move/from16 v28, v39

    .line 1696
    .end local v38    # "w":I
    :cond_18
    const/16 v39, 0x1

    move/from16 v25, v39

    .line 1698
    :cond_19
    move/from16 v39, v37

    move-object/from16 v40, v31

    invoke-virtual/range {v40 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_1c

    .line 1699
    move-object/from16 v39, v31

    move/from16 v40, v37

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1700
    move/from16 v39, v20

    if-eqz v39, :cond_1a

    .line 1701
    move-object/from16 v39, v31

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v39

    move/from16 v40, v37

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1703
    :cond_1a
    move/from16 v39, v27

    if-eqz v39, :cond_1b

    move-object/from16 v39, v31

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v39

    move/from16 v40, v29

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_1b

    .line 1704
    move-object/from16 v39, v31

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v39

    move-object/from16 v40, v31

    sget-object v41, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1705
    invoke-virtual/range {v40 .. v41}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v40

    add-int v39, v39, v40

    move/from16 v38, v39

    .line 1706
    .local v38, "h":I
    move/from16 v39, v29

    move/from16 v40, v38

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    move/from16 v29, v39

    .line 1708
    .end local v38    # "h":I
    :cond_1b
    const/16 v39, 0x1

    move/from16 v25, v39

    .line 1710
    :cond_1c
    move-object/from16 v39, v33

    move-object/from16 v0, v39

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    move/from16 v39, v0

    if-eqz v39, :cond_1d

    .line 1711
    move-object/from16 v39, v32

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getBaseline()I

    move-result v39

    move/from16 v38, v39

    .line 1712
    .local v38, "baseline":I
    move/from16 v39, v38

    const/16 v40, -0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_1d

    move/from16 v39, v38

    move-object/from16 v40, v31

    invoke-virtual/range {v40 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_1d

    .line 1713
    move-object/from16 v39, v31

    move/from16 v40, v38

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1714
    const/16 v39, 0x1

    move/from16 v25, v39

    .line 1718
    .end local v38    # "baseline":I
    :cond_1d
    sget v39, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v40, 0xb

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_c

    .line 1719
    move/from16 v39, v21

    move-object/from16 v40, v32

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getMeasuredState()I

    move-result v40

    invoke-static/range {v39 .. v40}, Landroidx/constraintlayout/widget/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v39

    move/from16 v21, v39

    goto/16 :goto_6

    .line 1667
    .end local v36    # "measuredWidth":I
    .end local v37    # "measuredHeight":I
    :cond_1e
    move-object/from16 v39, v31

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v39

    const/high16 v40, 0x40000000    # 2.0f

    invoke-static/range {v39 .. v40}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v39

    move/from16 v34, v39

    goto/16 :goto_7

    .line 1672
    :cond_1f
    move-object/from16 v39, v31

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v39

    const/high16 v40, 0x40000000    # 2.0f

    invoke-static/range {v39 .. v40}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v39

    move/from16 v35, v39

    goto/16 :goto_8

    .line 1722
    .end local v31    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v32    # "child":Landroid/view/View;
    .end local v33    # "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v34    # "widthSpec":I
    .end local v35    # "heightSpec":I
    :cond_20
    move/from16 v39, v25

    if-eqz v39, :cond_24

    .line 1723
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move/from16 v40, v17

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1724
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move/from16 v40, v18

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1725
    move/from16 v39, v20

    if-eqz v39, :cond_21

    .line 1726
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    .line 1728
    :cond_21
    move-object/from16 v39, v4

    const-string/jumbo v40, "2nd pass"

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/widget/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1729
    const/16 v39, 0x0

    move/from16 v25, v39

    .line 1730
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v39

    move/from16 v40, v28

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_22

    .line 1731
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move/from16 v40, v28

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1732
    const/16 v39, 0x1

    move/from16 v25, v39

    .line 1734
    :cond_22
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v39

    move/from16 v40, v29

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_23

    .line 1735
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    move/from16 v40, v29

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1736
    const/16 v39, 0x1

    move/from16 v25, v39

    .line 1738
    :cond_23
    move/from16 v39, v25

    if-eqz v39, :cond_24

    .line 1739
    move-object/from16 v39, v4

    const-string/jumbo v40, "3rd pass"

    invoke-virtual/range {v39 .. v40}, Landroidx/constraintlayout/widget/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1742
    :cond_24
    const/16 v39, 0x0

    move/from16 v30, v39

    :goto_9
    move/from16 v39, v30

    move/from16 v40, v22

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_29

    .line 1743
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move/from16 v40, v30

    invoke-virtual/range {v39 .. v40}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v31, v39

    .line 1744
    .restart local v31    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v39, v31

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/view/View;

    move-object/from16 v32, v39

    .line 1745
    .restart local v32    # "child":Landroid/view/View;
    move-object/from16 v39, v32

    if-nez v39, :cond_26

    .line 1746
    .line 1742
    :cond_25
    :goto_a
    add-int/lit8 v30, v30, 0x1

    goto :goto_9

    .line 1748
    :cond_26
    move-object/from16 v39, v32

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getMeasuredWidth()I

    move-result v39

    move-object/from16 v40, v31

    invoke-virtual/range {v40 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_27

    move-object/from16 v39, v32

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getMeasuredHeight()I

    move-result v39

    move-object/from16 v40, v31

    invoke-virtual/range {v40 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_25

    :cond_27
    move-object/from16 v39, v31

    .line 1749
    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v39

    const/16 v40, 0x8

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_25

    .line 1750
    move-object/from16 v39, v31

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v39

    const/high16 v40, 0x40000000    # 2.0f

    invoke-static/range {v39 .. v40}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v39

    move/from16 v33, v39

    .line 1751
    .local v33, "widthSpec":I
    move-object/from16 v39, v31

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v39

    const/high16 v40, 0x40000000    # 2.0f

    invoke-static/range {v39 .. v40}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v39

    move/from16 v34, v39

    .line 1752
    .local v34, "heightSpec":I
    move-object/from16 v39, v32

    move/from16 v40, v33

    move/from16 v41, v34

    invoke-virtual/range {v39 .. v41}, Landroid/view/View;->measure(II)V

    .line 1753
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v39, v0

    if-eqz v39, :cond_28

    .line 1754
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v39, v0

    move-object/from16 v44, v39

    move-object/from16 v39, v44

    move-object/from16 v40, v44

    move-object/from16 v0, v40

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->additionalMeasures:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x1

    add-long v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, v39

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->additionalMeasures:J

    .line 1757
    :cond_28
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_a

    .line 1762
    .end local v25    # "needSolverPass":Z
    .end local v26    # "containerWrapWidth":Z
    .end local v27    # "containerWrapHeight":Z
    .end local v28    # "minWidth":I
    .end local v29    # "minHeight":I
    .end local v30    # "i":I
    .end local v31    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v32    # "child":Landroid/view/View;
    .end local v33    # "widthSpec":I
    .end local v34    # "heightSpec":I
    :cond_29
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v39

    move/from16 v40, v24

    add-int v39, v39, v40

    move/from16 v25, v39

    .line 1763
    .local v25, "androidLayoutWidth":I
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v39

    move/from16 v40, v23

    add-int v39, v39, v40

    move/from16 v26, v39

    .line 1765
    .local v26, "androidLayoutHeight":I
    sget v39, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v40, 0xb

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_2c

    .line 1766
    move/from16 v39, v25

    move/from16 v40, v5

    move/from16 v41, v21

    invoke-static/range {v39 .. v41}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v39

    move/from16 v27, v39

    .line 1767
    .local v27, "resolvedWidthSize":I
    move/from16 v39, v26

    move/from16 v40, v6

    move/from16 v41, v21

    const/16 v42, 0x10

    shl-int/lit8 v41, v41, 0x10

    invoke-static/range {v39 .. v41}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v39

    move/from16 v28, v39

    .line 1769
    .local v28, "resolvedHeightSize":I
    move/from16 v39, v27

    const v40, 0xffffff

    and-int v39, v39, v40

    move/from16 v27, v39

    .line 1770
    move/from16 v39, v28

    const v40, 0xffffff

    and-int v39, v39, v40

    move/from16 v28, v39

    .line 1771
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    move/from16 v39, v0

    move/from16 v40, v27

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->min(II)I

    move-result v39

    move/from16 v27, v39

    .line 1772
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    move/from16 v39, v0

    move/from16 v40, v28

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->min(II)I

    move-result v39

    move/from16 v28, v39

    .line 1773
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v39

    if-eqz v39, :cond_2a

    .line 1774
    move/from16 v39, v27

    const/high16 v40, 0x1000000

    or-int v39, v39, v40

    move/from16 v27, v39

    .line 1776
    :cond_2a
    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v39

    if-eqz v39, :cond_2b

    .line 1777
    move/from16 v39, v28

    const/high16 v40, 0x1000000

    or-int v39, v39, v40

    move/from16 v28, v39

    .line 1779
    :cond_2b
    move-object/from16 v39, v4

    move/from16 v40, v27

    move/from16 v41, v28

    invoke-virtual/range {v39 .. v41}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1780
    move-object/from16 v39, v4

    move/from16 v40, v27

    move/from16 v0, v40

    move-object/from16 v1, v39

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 1781
    move-object/from16 v39, v4

    move/from16 v40, v28

    move/from16 v0, v40

    move-object/from16 v1, v39

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 1782
    .line 1795
    .end local v27    # "resolvedWidthSize":I
    .end local v28    # "resolvedHeightSize":I
    :goto_b
    return-void

    .line 1783
    :cond_2c
    move-object/from16 v39, v4

    move/from16 v40, v25

    move/from16 v41, v26

    invoke-virtual/range {v39 .. v41}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1784
    move-object/from16 v39, v4

    move/from16 v40, v25

    move/from16 v0, v40

    move-object/from16 v1, v39

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 1785
    move-object/from16 v39, v4

    move/from16 v40, v26

    move/from16 v0, v40

    move-object/from16 v1, v39

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    goto :goto_b
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_0

    .line 657
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 659
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    move-object v2, v5

    .line 660
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v5, v1

    instance-of v5, v5, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v5, :cond_1

    .line 661
    move-object v5, v2

    instance-of v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v5, :cond_1

    .line 662
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object v3, v5

    .line 663
    .local v3, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v5, v3

    new-instance v6, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    iput-object v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 664
    move-object v5, v3

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 665
    move-object v5, v3

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v5, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object v6, v3

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    .line 668
    .end local v3    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_1
    move-object v5, v1

    instance-of v5, v5, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v5, :cond_2

    .line 669
    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintHelper;

    move-object v3, v5

    .line 670
    .local v3, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    .line 671
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object v4, v5

    .line 672
    .local v4, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v5, v4

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 673
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 674
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 677
    .end local v3    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    .end local v4    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 678
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 679
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 686
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 687
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 689
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 690
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    move-object v2, v3

    .line 691
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->remove(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 692
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 693
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 694
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 695
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 645
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 646
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 647
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 649
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 3172
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3173
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 3175
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 3176
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 3177
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 3178
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 3179
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 3180
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 3181
    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 4

    .prologue
    .line 2004
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v1, p1

    .local v1, "set":Landroidx/constraintlayout/widget/ConstraintSet;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2005
    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move v1, p1

    .local v1, "type":I
    move-object v2, p2

    .local v2, "value1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "value2":Ljava/lang/Object;
    move v7, v1

    if-nez v7, :cond_2

    move-object v7, v2

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    move-object v7, v3

    instance-of v7, v7, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    .line 543
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 544
    move-object v7, v0

    new-instance v8, Ljava/util/HashMap;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 546
    :cond_0
    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    .line 547
    .local v4, "name":Ljava/lang/String;
    move-object v7, v4

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    move v5, v7

    .line 548
    .local v5, "index":I
    move v7, v5

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 549
    move-object v7, v4

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 551
    :cond_1
    move-object v7, v3

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v6, v7

    .line 552
    .local v6, "id":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    move-object v8, v4

    move v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 554
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "index":I
    .end local v6    # "id":I
    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 5

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 590
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->setId(I)V

    .line 591
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 592
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 4

    .prologue
    .line 762
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move v1, p1

    .local v1, "value":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    if-ne v2, v3, :cond_0

    .line 763
    .line 767
    :goto_0
    return-void

    .line 765
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 766
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 767
    goto :goto_0
.end method

.method public setMaxWidth(I)V
    .locals 4

    .prologue
    .line 749
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move v1, p1

    .local v1, "value":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    if-ne v2, v3, :cond_0

    .line 750
    .line 754
    :goto_0
    return-void

    .line 752
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 753
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 754
    goto :goto_0
.end method

.method public setMinHeight(I)V
    .locals 4

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move v1, p1

    .local v1, "value":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    if-ne v2, v3, :cond_0

    .line 717
    .line 721
    :goto_0
    return-void

    .line 719
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 720
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 721
    goto :goto_0
.end method

.method public setMinWidth(I)V
    .locals 4

    .prologue
    .line 703
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move v1, p1

    .local v1, "value":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    if-ne v2, v3, :cond_0

    .line 704
    .line 708
    :goto_0
    return-void

    .line 706
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 707
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 708
    goto :goto_0
.end method

.method public setOptimizationLevel(I)V
    .locals 4

    .prologue
    .line 1955
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move v1, p1

    .local v1, "level":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 1956
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 2

    .prologue
    .line 3189
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    return v0
.end method

.method protected solveLinearSystem(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 1860
    move-object v1, p0

    .local v1, "this":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v2, p1

    .local v2, "reason":Ljava/lang/String;
    move-object v3, v1

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 1861
    move-object v3, v1

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v3, :cond_0

    .line 1862
    move-object v3, v1

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Landroidx/constraintlayout/solver/Metrics;->resolutions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->resolutions:J

    .line 1864
    :cond_0
    return-void
.end method
