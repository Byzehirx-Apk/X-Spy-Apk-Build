.class public Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
.super Landroidx/constraintlayout/solver/widgets/WidgetContainer;
.source "ConstraintWidgetContainer.java"


# static fields
.field private static final DEBUG:Z = false

.field static final DEBUG_GRAPH:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final MAX_ITERATIONS:I = 0x8

.field private static final USE_SNAPSHOT:Z = true


# instance fields
.field mDebugSolverPassCount:I

.field public mGroupsWrapOptimized:Z

.field private mHeightMeasuredTooSmall:Z

.field mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

.field mHorizontalChainsSize:I

.field public mHorizontalWrapOptimized:Z

.field private mIsRtl:Z

.field private mOptimizationLevel:I

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field public mSkipSolver:Z

.field private mSnapshot:Landroidx/constraintlayout/solver/widgets/Snapshot;

.field protected mSystem:Landroidx/constraintlayout/solver/LinearSystem;

.field mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

.field mVerticalChainsSize:I

.field public mVerticalWrapOptimized:Z

.field public mWidgetGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mWidthMeasuredTooSmall:Z

.field public mWrapFixedHeight:I

.field public mWrapFixedWidth:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;-><init>()V

    .line 41
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 47
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/LinearSystem;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/constraintlayout/solver/LinearSystem;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    .line 56
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 57
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 59
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 60
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 62
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    .line 63
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 64
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 65
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 66
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    .line 67
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    .line 69
    move-object v1, v0

    const/4 v2, 0x7

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 70
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 72
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 73
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 166
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    .line 83
    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;-><init>(II)V

    .line 41
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 47
    move-object v3, v0

    new-instance v4, Landroidx/constraintlayout/solver/LinearSystem;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroidx/constraintlayout/solver/LinearSystem;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    .line 56
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 57
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 59
    move-object v3, v0

    const/4 v4, 0x4

    new-array v4, v4, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 60
    move-object v3, v0

    const/4 v4, 0x4

    new-array v4, v4, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 62
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    .line 63
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 64
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 65
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 66
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    .line 67
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    .line 69
    move-object v3, v0

    const/4 v4, 0x7

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 70
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 72
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 73
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 166
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    .line 105
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 11

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;-><init>(IIII)V

    .line 41
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 47
    move-object v5, v0

    new-instance v6, Landroidx/constraintlayout/solver/LinearSystem;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroidx/constraintlayout/solver/LinearSystem;-><init>()V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    .line 56
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 57
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 59
    move-object v5, v0

    const/4 v6, 0x4

    new-array v6, v6, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 60
    move-object v5, v0

    const/4 v6, 0x4

    new-array v6, v6, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 62
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    .line 63
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 64
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 65
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 66
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    .line 67
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    .line 69
    move-object v5, v0

    const/4 v6, 0x7

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 70
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 72
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 73
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 166
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    .line 95
    return-void
.end method

.method private addHorizontalChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 10

    .prologue
    .line 744
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 745
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    .line 746
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 748
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    new-instance v4, Landroidx/constraintlayout/solver/widgets/ChainHead;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/ChainHead;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V

    aput-object v4, v2, v3

    .line 749
    move-object v2, v0

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 750
    return-void
.end method

.method private addVerticalChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 10

    .prologue
    .line 759
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 760
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    .line 761
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 763
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    new-instance v4, Landroidx/constraintlayout/solver/widgets/ChainHead;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    const/4 v7, 0x1

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/ChainHead;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V

    aput-object v4, v2, v3

    .line 764
    move-object v2, v0

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 765
    return-void
.end method

.method private resetChains()V
    .locals 3

    .prologue
    .line 718
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 719
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 720
    return-void
.end method


# virtual methods
.method addChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V
    .locals 6

    .prologue
    .line 729
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, p1

    .local v1, "constraintWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v2, p2

    .local v2, "type":I
    move-object v4, v1

    move-object v3, v4

    .line 730
    .local v3, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v4, v2

    if-nez v4, :cond_1

    .line 731
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addHorizontalChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    move v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 733
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addVerticalChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    goto :goto_0
.end method

.method public addChildrenToSolver(Landroidx/constraintlayout/solver/LinearSystem;)Z
    .locals 10

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 181
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v7

    .line 183
    .local v2, "count":I
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_5

    .line 184
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v4, v7

    .line 185
    .local v4, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v7, v4

    instance-of v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v7, :cond_4

    .line 186
    move-object v7, v4

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v5, v7

    .line 187
    .local v5, "horizontalBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    move-object v7, v4

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v6, v7

    .line 188
    .local v6, "verticalBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    move-object v7, v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_0

    .line 189
    move-object v7, v4

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 191
    :cond_0
    move-object v7, v6

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_1

    .line 192
    move-object v7, v4

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 194
    :cond_1
    move-object v7, v4

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 195
    move-object v7, v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_2

    .line 196
    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 198
    :cond_2
    move-object v7, v6

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_3

    .line 199
    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 201
    .line 183
    .end local v5    # "horizontalBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v6    # "verticalBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :cond_4
    move-object v7, v0

    move-object v8, v1

    move-object v9, v4

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 203
    move-object v7, v4

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    goto :goto_1

    .line 207
    .end local v4    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_5
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    if-lez v7, :cond_6

    .line 208
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;I)V

    .line 210
    :cond_6
    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    if-lez v7, :cond_7

    .line 211
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;I)V

    .line 213
    :cond_7
    const/4 v7, 0x1

    move v0, v7

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    return v0
.end method

.method public analyze(I)V
    .locals 6

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move v1, p1

    .local v1, "optimizationLevel":I
    move-object v4, v0

    move v5, v1

    invoke-super {v4, v5}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->analyze(I)V

    .line 281
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 282
    .local v2, "count":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 283
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->analyze(I)V

    .line 282
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 285
    :cond_0
    return-void
.end method

.method public fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, p1

    .local v1, "metrics":Landroidx/constraintlayout/solver/Metrics;
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/LinearSystem;->fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V

    .line 45
    return-void
.end method

.method public getHorizontalGuidelines()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 694
    .local v1, "guidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    const/4 v6, 0x0

    move v2, v6

    .local v2, "i":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .local v3, "mChildrenSize":I
    :goto_0
    move v6, v2

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 695
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v4, v6

    .line 696
    .local v4, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v6, v4

    instance-of v6, v6, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v6, :cond_0

    .line 697
    move-object v6, v4

    check-cast v6, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object v5, v6

    .line 698
    .local v5, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v6

    if-nez v6, :cond_0

    .line 699
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 694
    .end local v5    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 703
    .end local v4    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    return-object v0
.end method

.method public getOptimizationLevel()I
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    return v0
.end method

.method public getSystem()Landroidx/constraintlayout/solver/LinearSystem;
    .locals 2

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    const-string/jumbo v1, "ConstraintLayout"

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    return-object v0
.end method

.method public getVerticalGuidelines()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 675
    .local v1, "guidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    const/4 v6, 0x0

    move v2, v6

    .local v2, "i":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .local v3, "mChildrenSize":I
    :goto_0
    move v6, v2

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 676
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v4, v6

    .line 677
    .local v4, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v6, v4

    instance-of v6, v6, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v6, :cond_0

    .line 678
    move-object v6, v4

    check-cast v6, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object v5, v6

    .line 679
    .local v5, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 680
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 675
    .end local v5    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 684
    .end local v4    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    return-object v0
.end method

.method public getWidgetGroups()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 777
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    return-object v0
.end method

.method public handlesInternalConstraints()Z
    .locals 2

    .prologue
    .line 661
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    return v0
.end method

.method public isHeightMeasuredTooSmall()Z
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    return v0
.end method

.method public isRtl()Z
    .locals 2

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    return v0
.end method

.method public isWidthMeasuredTooSmall()Z
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    return v0
.end method

.method public layout()V
    .locals 27

    .prologue
    .line 298
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mX:I

    move/from16 v21, v0

    move/from16 v3, v21

    .line 299
    .local v3, "prex":I
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mY:I

    move/from16 v21, v0

    move/from16 v4, v21

    .line 300
    .local v4, "prey":I
    const/16 v21, 0x0

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v5, v21

    .line 301
    .local v5, "prew":I
    const/16 v21, 0x0

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v6, v21

    .line 302
    .local v6, "preh":I
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 303
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 305
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 306
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroidx/constraintlayout/solver/widgets/Snapshot;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 307
    move-object/from16 v21, v2

    new-instance v22, Landroidx/constraintlayout/solver/widgets/Snapshot;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    move-object/from16 v24, v2

    invoke-direct/range {v23 .. v24}, Landroidx/constraintlayout/solver/widgets/Snapshot;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroidx/constraintlayout/solver/widgets/Snapshot;

    .line 309
    :cond_0
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroidx/constraintlayout/solver/widgets/Snapshot;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/Snapshot;->updateFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 314
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 315
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 316
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetAnchors()V

    .line 317
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/LinearSystem;->getCache()Landroidx/constraintlayout/solver/Cache;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V

    .line 323
    :goto_0
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 324
    move-object/from16 v21, v2

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v21

    if-nez v21, :cond_1

    .line 325
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeReset()V

    .line 327
    :cond_1
    move-object/from16 v21, v2

    const/16 v22, 0x20

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v21

    if-nez v21, :cond_2

    .line 328
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimize()V

    .line 330
    :cond_2
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    .line 335
    :goto_1
    const/16 v21, 0x0

    move/from16 v7, v21

    .line 336
    .local v7, "wrap_override":Z
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v8, v21

    .line 337
    .local v8, "originalVerticalDimensionBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v9, v21

    .line 345
    .local v9, "originalHorizontalDimensionBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetChains()V

    .line 347
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_3

    .line 348
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 349
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;-><init>(Ljava/util/List;)V

    invoke-interface/range {v21 .. v23}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 352
    :cond_3
    const/16 v21, 0x0

    move/from16 v10, v21

    .line 353
    .local v10, "countSolve":I
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v11, v21

    .line 354
    .local v11, "groupSize":I
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v12, v21

    .line 355
    .local v12, "allChildren":Ljava/util/List;, "Ljava/util/List<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v21

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_4

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v21

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_7

    :cond_4
    const/16 v21, 0x1

    :goto_2
    move/from16 v13, v21

    .line 357
    .local v13, "hasWrapContent":Z
    const/16 v21, 0x0

    move/from16 v14, v21

    .local v14, "groupIndex":I
    :goto_3
    move/from16 v21, v14

    move/from16 v22, v11

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1b

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    move/from16 v21, v0

    if-nez v21, :cond_1b

    .line 358
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object/from16 v21, v0

    move/from16 v22, v14

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mSkipSolver:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 359
    .line 357
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 319
    .end local v7    # "wrap_override":Z
    .end local v8    # "originalVerticalDimensionBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v9    # "originalHorizontalDimensionBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v10    # "countSolve":I
    .end local v11    # "groupSize":I
    .end local v12    # "allChildren":Ljava/util/List;, "Ljava/util/List<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v13    # "hasWrapContent":Z
    .end local v14    # "groupIndex":I
    :cond_5
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 320
    move-object/from16 v21, v2

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mY:I

    goto/16 :goto_0

    .line 332
    :cond_6
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    goto/16 :goto_1

    .line 355
    .restart local v7    # "wrap_override":Z
    .restart local v8    # "originalVerticalDimensionBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v9    # "originalHorizontalDimensionBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v10    # "countSolve":I
    .restart local v11    # "groupSize":I
    .restart local v12    # "allChildren":Ljava/util/List;, "Ljava/util/List<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    :cond_7
    const/16 v21, 0x0

    goto :goto_2

    .line 361
    .restart local v13    # "hasWrapContent":Z
    .restart local v14    # "groupIndex":I
    :cond_8
    move-object/from16 v21, v2

    const/16 v22, 0x20

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 362
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v21

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_b

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v21

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 363
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object/from16 v22, v0

    move/from16 v23, v14

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->getWidgetsToSolve()Ljava/util/List;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 368
    :cond_9
    :goto_5
    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetChains()V

    .line 369
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v15, v21

    .line 370
    .local v15, "count":I
    const/16 v21, 0x0

    move/from16 v10, v21

    .line 374
    const/16 v21, 0x0

    move/from16 v16, v21

    .local v16, "i":I
    :goto_6
    move/from16 v21, v16

    move/from16 v22, v15

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 375
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v17, v21

    .line 376
    .local v17, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v21, v17

    move-object/from16 v0, v21

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 377
    move-object/from16 v21, v17

    check-cast v21, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->layout()V

    .line 374
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 365
    .end local v15    # "count":I
    .end local v16    # "i":I
    .end local v17    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_b
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object/from16 v22, v0

    move/from16 v23, v14

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->mConstrainedGroup:Ljava/util/List;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    goto :goto_5

    .line 382
    .restart local v15    # "count":I
    .restart local v16    # "i":I
    :cond_c
    const/16 v21, 0x1

    move/from16 v16, v21

    .line 383
    .local v16, "needsSolving":Z
    :goto_7
    move/from16 v21, v16

    if-eqz v21, :cond_1a

    .line 384
    add-int/lit8 v10, v10, 0x1

    .line 386
    move-object/from16 v21, v2

    :try_start_0
    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/LinearSystem;->reset()V

    .line 387
    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetChains()V

    .line 397
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->createObjectVariables(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 398
    const/16 v21, 0x0

    move/from16 v17, v21

    .local v17, "i":I
    :goto_8
    move/from16 v21, v17

    move/from16 v22, v15

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 399
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v21

    .line 400
    .local v18, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v21, v18

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 398
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 403
    .end local v18    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_d
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addChildrenToSolver(Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v21

    move/from16 v16, v21

    .line 404
    move/from16 v21, v16

    if-eqz v21, :cond_e

    .line 405
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/LinearSystem;->minimize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .line 411
    .end local v17    # "i":I
    :cond_e
    :goto_9
    move/from16 v21, v16

    if-eqz v21, :cond_10

    .line 412
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    move-object/from16 v22, v0

    sget-object v23, Landroidx/constraintlayout/solver/widgets/Optimizer;->flags:[Z

    invoke-virtual/range {v21 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateChildrenFromSolver(Landroidx/constraintlayout/solver/LinearSystem;[Z)V

    .line 431
    :cond_f
    :goto_a
    const/16 v21, 0x0

    move/from16 v16, v21

    .line 433
    move/from16 v21, v13

    if-eqz v21, :cond_15

    move/from16 v21, v10

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    sget-object v21, Landroidx/constraintlayout/solver/widgets/Optimizer;->flags:[Z

    const/16 v22, 0x2

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_15

    .line 436
    const/16 v21, 0x0

    move/from16 v17, v21

    .line 437
    .local v17, "maxX":I
    const/16 v21, 0x0

    move/from16 v18, v21

    .line 438
    .local v18, "maxY":I
    const/16 v21, 0x0

    move/from16 v19, v21

    .local v19, "i":I
    :goto_b
    move/from16 v21, v19

    move/from16 v22, v15

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    .line 439
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v20, v21

    .line 440
    .local v20, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v21, v17

    move-object/from16 v22, v20

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move/from16 v22, v0

    move-object/from16 v23, v20

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v17, v21

    .line 441
    move/from16 v21, v18

    move-object/from16 v22, v20

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move/from16 v22, v0

    move-object/from16 v23, v20

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v23

    add-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v18, v21

    .line 438
    add-int/lit8 v19, v19, 0x1

    goto :goto_b

    .line 407
    .end local v17    # "maxX":I
    .end local v18    # "maxY":I
    .end local v19    # "i":I
    .end local v20    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :catch_0
    move-exception v21

    move-object/from16 v17, v21

    .line 408
    .local v17, "e":Ljava/lang/Exception;
    move-object/from16 v21, v17

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    .line 409
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "EXCEPTION : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v17

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 414
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_10
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 415
    const/16 v21, 0x0

    move/from16 v17, v21

    .local v17, "i":I
    :goto_c
    move/from16 v21, v17

    move/from16 v22, v15

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    .line 416
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v21

    .line 417
    .local v18, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v21, v18

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_11

    move-object/from16 v21, v18

    .line 419
    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v21

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWrapWidth()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_11

    .line 420
    sget-object v21, Landroidx/constraintlayout/solver/widgets/Optimizer;->flags:[Z

    const/16 v22, 0x2

    const/16 v23, 0x1

    aput-boolean v23, v21, v22

    .line 421
    goto/16 :goto_a

    .line 423
    :cond_11
    move-object/from16 v21, v18

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_12

    move-object/from16 v21, v18

    .line 425
    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v21

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWrapHeight()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    .line 426
    sget-object v21, Landroidx/constraintlayout/solver/widgets/Optimizer;->flags:[Z

    const/16 v22, 0x2

    const/16 v23, 0x1

    aput-boolean v23, v21, v22

    .line 427
    goto/16 :goto_a

    .line 415
    :cond_12
    add-int/lit8 v17, v17, 0x1

    goto :goto_c

    .line 443
    .local v17, "maxX":I
    .local v18, "maxY":I
    .restart local v19    # "i":I
    :cond_13
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    move/from16 v21, v0

    move/from16 v22, v17

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v17, v21

    .line 444
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    move/from16 v21, v0

    move/from16 v22, v18

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v18, v21

    .line 445
    move-object/from16 v21, v9

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 446
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v21

    move/from16 v22, v17

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_14

    .line 451
    move-object/from16 v21, v2

    move/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 452
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v23, v21, v22

    .line 453
    const/16 v21, 0x1

    move/from16 v7, v21

    .line 454
    const/16 v21, 0x1

    move/from16 v16, v21

    .line 457
    :cond_14
    move-object/from16 v21, v8

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_15

    .line 458
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v21

    move/from16 v22, v18

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    .line 463
    move-object/from16 v21, v2

    move/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 464
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v23, v21, v22

    .line 465
    const/16 v21, 0x1

    move/from16 v7, v21

    .line 466
    const/16 v21, 0x1

    move/from16 v16, v21

    .line 471
    .end local v17    # "maxX":I
    .end local v18    # "maxY":I
    .end local v19    # "i":I
    :cond_15
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    move/from16 v21, v0

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v17, v21

    .line 472
    .local v17, "width":I
    move/from16 v21, v17

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_16

    .line 477
    move-object/from16 v21, v2

    move/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 478
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v23, v21, v22

    .line 479
    const/16 v21, 0x1

    move/from16 v7, v21

    .line 480
    const/16 v21, 0x1

    move/from16 v16, v21

    .line 482
    :cond_16
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    move/from16 v21, v0

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v18, v21

    .line 483
    .local v18, "height":I
    move/from16 v21, v18

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_17

    .line 488
    move-object/from16 v21, v2

    move/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 489
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v23, v21, v22

    .line 490
    const/16 v21, 0x1

    move/from16 v7, v21

    .line 491
    const/16 v21, 0x1

    move/from16 v16, v21

    .line 494
    :cond_17
    move/from16 v21, v7

    if-nez v21, :cond_19

    .line 495
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_18

    move/from16 v21, v5

    if-lez v21, :cond_18

    .line 497
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v21

    move/from16 v22, v5

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_18

    .line 503
    move-object/from16 v21, v2

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 504
    const/16 v21, 0x1

    move/from16 v7, v21

    .line 505
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v23, v21, v22

    .line 506
    move-object/from16 v21, v2

    move/from16 v22, v5

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 507
    const/16 v21, 0x1

    move/from16 v16, v21

    .line 510
    :cond_18
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_19

    move/from16 v21, v6

    if-lez v21, :cond_19

    .line 512
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v21

    move/from16 v22, v6

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_19

    .line 518
    move-object/from16 v21, v2

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 519
    const/16 v21, 0x1

    move/from16 v7, v21

    .line 520
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    sget-object v23, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v23, v21, v22

    .line 521
    move-object/from16 v21, v2

    move/from16 v22, v6

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 522
    const/16 v21, 0x1

    move/from16 v16, v21

    .line 526
    :cond_19
    goto/16 :goto_7

    .line 534
    .end local v17    # "width":I
    .end local v18    # "height":I
    :cond_1a
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move-object/from16 v21, v0

    move/from16 v22, v14

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;->updateUnresolvedWidgets()V

    goto/16 :goto_4

    .line 536
    .end local v15    # "count":I
    .end local v16    # "needsSolving":Z
    :cond_1b
    move-object/from16 v21, v2

    move-object/from16 v22, v12

    check-cast v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 538
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1e

    .line 539
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    move/from16 v21, v0

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v14, v21

    .line 540
    .local v14, "width":I
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    move/from16 v21, v0

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v15, v21

    .line 542
    .local v15, "height":I
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroidx/constraintlayout/solver/widgets/Snapshot;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/Snapshot;->applyTo(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 543
    move-object/from16 v21, v2

    move/from16 v22, v14

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    move/from16 v23, v0

    add-int v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 544
    move-object/from16 v21, v2

    move/from16 v22, v15

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    move/from16 v23, v0

    add-int v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 545
    .line 549
    .end local v14    # "width":I
    .end local v15    # "height":I
    :goto_d
    move/from16 v21, v7

    if-eqz v21, :cond_1c

    .line 550
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v23, v9

    aput-object v23, v21, v22

    .line 551
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v23, v8

    aput-object v23, v21, v22

    .line 566
    :cond_1c
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/LinearSystem;->getCache()Landroidx/constraintlayout/solver/Cache;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V

    .line 567
    move-object/from16 v21, v2

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getRootConstraintContainer()Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1d

    .line 568
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateDrawPosition()V

    .line 570
    :cond_1d
    return-void

    .line 546
    .local v14, "groupIndex":I
    :cond_1e
    move-object/from16 v21, v2

    move/from16 v22, v3

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 547
    move-object/from16 v21, v2

    move/from16 v22, v4

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mY:I

    goto :goto_d
.end method

.method public optimize()V
    .locals 3

    .prologue
    .line 630
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 631
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->analyze(I)V

    .line 643
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    .line 653
    return-void
.end method

.method public optimizeFor(I)Z
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move v1, p1

    .local v1, "feature":I
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    move v3, v1

    and-int/2addr v2, v3

    move v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public optimizeForDimensions(II)V
    .locals 5

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz v3, :cond_0

    .line 605
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 607
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz v3, :cond_1

    .line 608
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 610
    :cond_1
    return-void
.end method

.method public optimizeReset()V
    .locals 5

    .prologue
    .line 613
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 614
    .local v1, "count":I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetResolutionNodes()V

    .line 615
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 616
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetResolutionNodes()V

    .line 615
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 618
    :cond_0
    return-void
.end method

.method public preOptimize()V
    .locals 3

    .prologue
    .line 573
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeReset()V

    .line 574
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->analyze(I)V

    .line 575
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/LinearSystem;->reset()V

    .line 147
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 148
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    .line 149
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 150
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    .line 151
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 152
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 153
    move-object v1, v0

    invoke-super {v1}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->reset()V

    .line 154
    return-void
.end method

.method public resetGraph()V
    .locals 6

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v3, v0

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    move-object v1, v3

    .line 591
    .local v1, "leftNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v3, v0

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    move-object v2, v3

    .line 597
    .local v2, "topNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->invalidateAnchors()V

    .line 598
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->invalidateAnchors()V

    .line 599
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 600
    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 601
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 114
    return-void
.end method

.method public setPadding(IIII)V
    .locals 7

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "right":I
    move v4, p4

    .local v4, "bottom":I
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 249
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 250
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    .line 251
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    .line 252
    return-void
.end method

.method public setRtl(Z)V
    .locals 4

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move v1, p1

    .local v1, "isRtl":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 260
    return-void
.end method

.method public solveGraph()V
    .locals 6

    .prologue
    .line 578
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v3, v0

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    move-object v1, v3

    .line 579
    .local v1, "leftNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v3, v0

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    move-object v2, v3

    .line 585
    .local v2, "topNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 586
    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 587
    return-void
.end method

.method public updateChildrenFromSolver(Landroidx/constraintlayout/solver/LinearSystem;[Z)V
    .locals 9

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v2, p2

    .local v2, "flags":[Z
    move-object v6, v2

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-boolean v8, v6, v7

    .line 223
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 224
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 225
    .local v3, "count":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 226
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v5, v6

    .line 227
    .local v5, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 228
    move-object v6, v5

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_0

    move-object v6, v5

    .line 229
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    move-object v7, v5

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWrapWidth()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 230
    move-object v6, v2

    const/4 v7, 0x2

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 232
    :cond_0
    move-object v6, v5

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_1

    move-object v6, v5

    .line 233
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    move-object v7, v5

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWrapHeight()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 234
    move-object v6, v2

    const/4 v7, 0x2

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 225
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 237
    .end local v5    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2
    return-void
.end method
