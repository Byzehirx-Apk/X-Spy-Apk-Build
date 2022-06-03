.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public anchorGravity:I

.field public dodgeInsetEdges:I

.field public gravity:I

.field public insetEdge:I

.field public keyline:I

.field mAnchorDirectChild:Landroid/view/View;

.field mAnchorId:I

.field mAnchorView:Landroid/view/View;

.field mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

.field mBehaviorResolved:Z

.field mBehaviorTag:Ljava/lang/Object;

.field private mDidAcceptNestedScrollNonTouch:Z

.field private mDidAcceptNestedScrollTouch:Z

.field private mDidBlockInteraction:Z

.field private mDidChangeAfterNestedScroll:Z

.field mInsetOffsetX:I

.field mInsetOffsetY:I

.field final mLastChildRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 7

    .prologue
    .line 2778
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2718
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2727
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2733
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2740
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2746
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2753
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2760
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2773
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2779
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2782
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2718
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2727
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2733
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2740
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2746
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2753
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2760
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2773
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2784
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 2787
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_android_layout_gravity:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2790
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_anchor:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2792
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_anchorGravity:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2796
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_keyline:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2799
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_insetEdge:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2800
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_dodgeInsetEdges:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2802
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    iput-boolean v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2804
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-eqz v4, :cond_0

    .line 2805
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    sget v8, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v5

    iput-object v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 2808
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2810
    move-object v4, v0

    iget-object v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v4, :cond_1

    .line 2812
    move-object v4, v0

    iget-object v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    .line 2814
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .prologue
    .line 2825
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2718
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2727
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2733
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2740
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2746
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2753
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2760
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2773
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2826
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 6

    .prologue
    .line 2821
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2718
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2727
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2733
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2740
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2746
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2753
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2760
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2773
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2822
    return-void
.end method

.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 6

    .prologue
    .line 2817
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, p1

    .local v1, "p":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2718
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2727
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2733
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2740
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2746
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2753
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2760
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2773
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2818
    return-void
.end method

.method private resolveAnchorView(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 12

    .prologue
    .line 3048
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, p1

    .local v1, "forChild":Landroid/view/View;
    move-object v2, p2

    .local v2, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3049
    move-object v5, v0

    iget-object v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 3050
    move-object v5, v0

    iget-object v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move-object v6, v2

    if-ne v5, v6, :cond_1

    .line 3051
    move-object v5, v2

    invoke-virtual {v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3052
    move-object v5, v0

    move-object v6, v0

    const/4 v7, 0x0

    move-object v10, v6

    move-object v11, v7

    move-object v6, v11

    move-object v7, v10

    move-object v8, v11

    iput-object v8, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3053
    .line 3085
    :goto_0
    return-void

    .line 3055
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3059
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move-object v3, v5

    .line 3060
    .local v3, "directChild":Landroid/view/View;
    move-object v5, v0

    iget-object v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v4, v5

    .line 3061
    .local v4, "p":Landroid/view/ViewParent;
    :goto_1
    move-object v5, v4

    move-object v6, v2

    if-eq v5, v6, :cond_5

    move-object v5, v4

    if-eqz v5, :cond_5

    .line 3063
    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_3

    .line 3064
    move-object v5, v2

    invoke-virtual {v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3065
    move-object v5, v0

    move-object v6, v0

    const/4 v7, 0x0

    move-object v10, v6

    move-object v11, v7

    move-object v6, v11

    move-object v7, v10

    move-object v8, v11

    iput-object v8, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3066
    goto :goto_0

    .line 3068
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3071
    :cond_3
    move-object v5, v4

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_4

    .line 3072
    move-object v5, v4

    check-cast v5, Landroid/view/View;

    move-object v3, v5

    .line 3062
    :cond_4
    move-object v5, v4

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 3075
    :cond_5
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 3076
    .line 3085
    goto :goto_0

    .line 3077
    .end local v3    # "directChild":Landroid/view/View;
    .end local v4    # "p":Landroid/view/ViewParent;
    :cond_6
    move-object v5, v2

    invoke-virtual {v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3078
    move-object v5, v0

    move-object v6, v0

    const/4 v7, 0x0

    move-object v10, v6

    move-object v11, v7

    move-object v6, v11

    move-object v7, v10

    move-object v8, v11

    iput-object v8, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3079
    goto :goto_0

    .line 3081
    :cond_7
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not find CoordinatorLayout descendant view with id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    .line 3082
    invoke-virtual {v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to anchor view "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private shouldDodge(Landroid/view/View;I)Z
    .locals 8

    .prologue
    .line 3117
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, p1

    .local v1, "other":Landroid/view/View;
    move v2, p2

    .local v2, "layoutDirection":I
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v3, v5

    .line 3118
    .local v3, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v5, v3

    iget v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    move v6, v2

    invoke-static {v5, v6}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v5

    move v4, v5

    .line 3119
    .local v4, "absInset":I
    move v5, v4

    if-eqz v5, :cond_0

    move v5, v4

    move-object v6, v0

    iget v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    move v7, v2

    .line 3120
    invoke-static {v6, v7}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v6

    and-int/2addr v5, v6

    move v6, v4

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    return v0

    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private verifyAnchorView(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Z
    .locals 11

    .prologue
    .line 3093
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, p1

    .local v1, "forChild":Landroid/view/View;
    move-object v2, p2

    .local v2, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v5, v0

    iget-object v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    if-eq v5, v6, :cond_0

    .line 3094
    const/4 v5, 0x0

    move v0, v5

    .line 3110
    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :goto_0
    return v0

    .line 3097
    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move-object v3, v5

    .line 3098
    .local v3, "directChild":Landroid/view/View;
    move-object v5, v0

    iget-object v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v4, v5

    .line 3099
    .local v4, "p":Landroid/view/ViewParent;
    :goto_1
    move-object v5, v4

    move-object v6, v2

    if-eq v5, v6, :cond_4

    .line 3101
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_2

    .line 3102
    :cond_1
    move-object v5, v0

    move-object v6, v0

    const/4 v7, 0x0

    move-object v9, v6

    move-object v10, v7

    move-object v6, v10

    move-object v7, v9

    move-object v8, v10

    iput-object v8, v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3103
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 3105
    :cond_2
    move-object v5, v4

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_3

    .line 3106
    move-object v5, v4

    check-cast v5, Landroid/view/View;

    move-object v3, v5

    .line 3100
    :cond_3
    move-object v5, v4

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 3109
    :cond_4
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 3110
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method checkAnchorChanged()Z
    .locals 3

    .prologue
    .line 2912
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, v0

    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    return v0

    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .prologue
    .line 3007
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "dependency":Landroid/view/View;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-eq v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v3

    move-object v6, v1

    .line 3008
    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->shouldDodge(Landroid/view/View;I)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    .line 3009
    invoke-virtual {v4, v5, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    return v0

    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method didBlockInteraction()Z
    .locals 3

    .prologue
    .line 2923
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, v0

    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-nez v1, :cond_0

    .line 2924
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2926
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    move v0, v1

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    return v0
.end method

.method findAnchorView(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
    .locals 9

    .prologue
    .line 3032
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "forChild":Landroid/view/View;
    move-object v3, v0

    iget v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 3033
    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    move-object v7, v4

    move-object v8, v5

    move-object v4, v8

    move-object v5, v7

    move-object v6, v8

    iput-object v6, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3034
    const/4 v3, 0x0

    move-object v0, v3

    .line 3040
    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :goto_0
    return-object v0

    .line 3037
    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_1

    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->verifyAnchorView(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3038
    :cond_1
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resolveAnchorView(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 3040
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move-object v0, v3

    goto :goto_0
.end method

.method public getAnchorId()I
    .locals 2
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .prologue
    .line 2835
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, v0

    iget v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    move v0, v1

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    return v0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2861
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, v0

    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-object v0, v1

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    return-object v0
.end method

.method getChangedAfterNestedScroll()Z
    .locals 2

    .prologue
    .line 2987
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    move v0, v1

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    return v0
.end method

.method getLastChildRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 2904
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, v0

    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    move-object v0, v1

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    return-object v0
.end method

.method invalidateAnchor()V
    .locals 7

    .prologue
    .line 3019
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3020
    return-void
.end method

.method isBlockingInteractionBelow(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 10

    .prologue
    .line 2941
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    if-eqz v3, :cond_0

    .line 2942
    const/4 v3, 0x1

    move v0, v3

    .line 2946
    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :goto_0
    return v0

    .line 2945
    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :cond_0
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-boolean v4, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    move-object v5, v0

    iget-object v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-object v6, v1

    move-object v7, v2

    .line 2946
    invoke-virtual {v5, v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->blocksInteractionBelow(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v5

    :goto_1
    or-int/2addr v4, v5

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput-boolean v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method isNestedScrollAccepted(I)Z
    .locals 3

    .prologue
    .line 2977
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move v1, p1

    .local v1, "type":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 2983
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :goto_0
    return v0

    .line 2979
    .restart local v0    # "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    :pswitch_0
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollTouch:Z

    move v0, v2

    goto :goto_0

    .line 2981
    :pswitch_1
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollNonTouch:Z

    move v0, v2

    goto :goto_0

    .line 2977
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method resetChangedAfterNestedScroll()V
    .locals 3

    .prologue
    .line 2995
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 2996
    return-void
.end method

.method resetNestedScroll(I)V
    .locals 5

    .prologue
    .line 2962
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move v1, p1

    .local v1, "type":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    .line 2963
    return-void
.end method

.method resetTouchBehaviorTracking()V
    .locals 3

    .prologue
    .line 2958
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2959
    return-void
.end method

.method public setAnchorId(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 2849
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->invalidateAnchor()V

    .line 2850
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2851
    return-void
.end method

.method public setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V
    .locals 4
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2874
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, p1

    .local v1, "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 2875
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v2, :cond_0

    .line 2877
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDetachedFromLayoutParams()V

    .line 2880
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 2881
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    .line 2882
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2884
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 2886
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    .line 2889
    :cond_1
    return-void
.end method

.method setChangedAfterNestedScroll(Z)V
    .locals 4

    .prologue
    .line 2991
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move v1, p1

    .local v1, "changed":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 2992
    return-void
.end method

.method setLastChildRect(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 2896
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move-object v1, p1

    .local v1, "r":Landroid/graphics/Rect;
    move-object v2, v0

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2897
    return-void
.end method

.method setNestedScrollAccepted(IZ)V
    .locals 5

    .prologue
    .line 2966
    move-object v0, p0

    .local v0, "this":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move v1, p1

    .local v1, "type":I
    move v2, p2

    .local v2, "accept":Z
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 2974
    :goto_0
    return-void

    .line 2968
    :pswitch_0
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollTouch:Z

    .line 2969
    goto :goto_0

    .line 2971
    :pswitch_1
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollNonTouch:Z

    goto :goto_0

    .line 2966
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
