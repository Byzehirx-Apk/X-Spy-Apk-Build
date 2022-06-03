.class public Landroidx/appcompat/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Landroidx/appcompat/widget/DecorContentParent;
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_ANIMATE_DELAY:I = 0x258

.field static final ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private mActionBarHeight:I

.field mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

.field private mActionBarVisibilityCallback:Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private mContent:Landroidx/appcompat/widget/ContentFrameLayout;

.field private final mContentInsets:Landroid/graphics/Rect;

.field mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

.field private mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

.field private mFlingEstimator:Landroid/widget/OverScroller;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastBaseInnerInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field final mTopAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/R$attr;->actionBarSize:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const v3, 0x1010059

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 80
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 81
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 82
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 83
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 84
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/graphics/Rect;

    .line 85
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 86
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 96
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/widget/ActionBarOverlayLayout$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout$1;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 110
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 119
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 142
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 144
    move-object v3, v0

    new-instance v4, Landroidx/core/view/NestedScrollingParentHelper;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 145
    return-void
.end method

.method private addActionBarHideOffset()V
    .locals 2

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 604
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 605
    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 11

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "insets":Landroid/graphics/Rect;
    move v3, p3

    .local v3, "left":Z
    move v4, p4

    .local v4, "top":Z
    move/from16 v5, p5

    .local v5, "bottom":Z
    move/from16 v6, p6

    .local v6, "right":Z
    const/4 v9, 0x0

    move v7, v9

    .line 265
    .local v7, "changed":Z
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    move-object v8, v9

    .line 266
    .local v8, "lp":Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
    move v9, v3

    if-eqz v9, :cond_0

    move-object v9, v8

    iget v9, v9, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-eq v9, v10, :cond_0

    .line 267
    const/4 v9, 0x1

    move v7, v9

    .line 268
    move-object v9, v8

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iput v10, v9, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    .line 270
    :cond_0
    move v9, v4

    if-eqz v9, :cond_1

    move-object v9, v8

    iget v9, v9, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-eq v9, v10, :cond_1

    .line 271
    const/4 v9, 0x1

    move v7, v9

    .line 272
    move-object v9, v8

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iput v10, v9, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    .line 274
    :cond_1
    move v9, v6

    if-eqz v9, :cond_2

    move-object v9, v8

    iget v9, v9, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->right:I

    if-eq v9, v10, :cond_2

    .line 275
    const/4 v9, 0x1

    move v7, v9

    .line 276
    move-object v9, v8

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iput v10, v9, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    .line 278
    :cond_2
    move v9, v5

    if-eqz v9, :cond_3

    move-object v9, v8

    iget v9, v9, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    if-eq v9, v10, :cond_3

    .line 279
    const/4 v9, 0x1

    move v7, v9

    .line 280
    move-object v9, v8

    move-object v10, v2

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iput v10, v9, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    .line 282
    :cond_3
    move v9, v7

    move v0, v9

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return v0
.end method

.method private getDecorToolbar(Landroid/view/View;)Landroidx/appcompat/widget/DecorToolbar;
    .locals 7

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    instance-of v2, v2, Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v2, :cond_0

    .line 545
    move-object v2, v1

    check-cast v2, Landroidx/appcompat/widget/DecorToolbar;

    move-object v0, v2

    .line 547
    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    :goto_0
    return-object v0

    .line 546
    .restart local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroidx/appcompat/widget/Toolbar;

    if-eqz v2, :cond_1

    .line 547
    move-object v2, v1

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/DecorToolbar;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 549
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t make a decor toolbar out of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    .line 550
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v2, v3

    .line 149
    .local v2, "ta":Landroid/content/res/TypedArray;
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 150
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 151
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 152
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 157
    move-object v3, v0

    new-instance v4, Landroid/widget/OverScroller;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    .line 158
    return-void

    .line 151
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 154
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private postAddActionBarHideOffset()V
    .locals 6

    .prologue
    .line 593
    move-object v1, p0

    .local v1, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 594
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v3, v4, v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 595
    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .locals 6

    .prologue
    .line 588
    move-object v1, p0

    .local v1, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 589
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v3, v4, v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 590
    return-void
.end method

.method private removeActionBarHideOffset()V
    .locals 2

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 599
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 600
    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .locals 13

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move v1, p1

    .local v1, "velocityX":F
    move v2, p2

    .local v2, "velocityY":F
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v2

    float-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, -0x80000000

    const v12, 0x7fffffff

    invoke-virtual/range {v4 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 609
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v4

    move v3, v4

    .line 610
    .local v3, "finalY":I
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 2

    .prologue
    .line 684
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 685
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->canShowOverflowMenu()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return v0
.end method

.method public dismissPopups()V
    .locals 2

    .prologue
    .line 738
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 739
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->dismissPopupMenus()V

    .line 740
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "c":Landroid/graphics/Canvas;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 452
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    if-nez v3, :cond_0

    .line 453
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    .line 454
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarContainer;->getBottom()I

    move-result v3

    int-to-float v3, v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarContainer;->getTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    :goto_0
    move v2, v3

    .line 456
    .local v2, "top":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v6

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 457
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 456
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 458
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 460
    .end local v2    # "top":I
    :cond_0
    return-void

    .line 454
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 13

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "insets":Landroid/graphics/Rect;
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 289
    move-object v6, v0

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v6

    move v2, v6

    .line 290
    .local v2, "vis":I
    move v6, v2

    const/16 v7, 0x100

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 291
    .local v3, "stable":Z
    move-object v6, v1

    move-object v4, v6

    .line 294
    .local v4, "systemInsets":Landroid/graphics/Rect;
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    move-object v8, v4

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v6 .. v12}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v6

    move v5, v6

    .line 296
    .local v5, "changed":Z
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 297
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-static {v6, v7, v8}, Landroidx/appcompat/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 298
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/graphics/Rect;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 299
    const/4 v6, 0x1

    move v5, v6

    .line 300
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/graphics/Rect;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 302
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 303
    const/4 v6, 0x1

    move v5, v6

    .line 304
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 307
    :cond_1
    move v6, v5

    if-eqz v6, :cond_2

    .line 308
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 315
    :cond_2
    const/4 v6, 0x1

    move v0, v6

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return v0

    .line 290
    .end local v3    # "stable":Z
    .end local v4    # "systemInsets":Landroid/graphics/Rect;
    .end local v5    # "changed":Z
    .restart local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 6

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    new-instance v1, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 7

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    new-instance v2, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 2

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContainer;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v1}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 628
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return-object v0
.end method

.method haltActionBarHideOffsetAnimations()V
    .locals 3

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 581
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 582
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_0

    .line 583
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 585
    :cond_0
    return-void
.end method

.method public hasIcon()Z
    .locals 2

    .prologue
    .line 654
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 655
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->hasIcon()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return v0
.end method

.method public hasLogo()Z
    .locals 2

    .prologue
    .line 660
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 661
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->hasLogo()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .prologue
    .line 708
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 709
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return v0
.end method

.method public initFeature(I)V
    .locals 4

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move v1, p1

    .local v1, "windowFeature":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 634
    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 645
    :goto_0
    return-void

    .line 636
    :sswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v2}, Landroidx/appcompat/widget/DecorToolbar;->initProgress()V

    .line 637
    goto :goto_0

    .line 639
    :sswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v2}, Landroidx/appcompat/widget/DecorToolbar;->initIndeterminateProgress()V

    .line 640
    goto :goto_0

    .line 642
    :sswitch_2
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_0

    .line 634
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6d -> :sswitch_2
    .end sparse-switch
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 2

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return v0
.end method

.method public isInOverlayMode()Z
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 2

    .prologue
    .line 696
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 697
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 690
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 691
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "newConfig":Landroid/content/res/Configuration;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 225
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 226
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 163
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 164
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 26

    .prologue
    .line 425
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
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

    invoke-virtual/range {v20 .. v20}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v20

    move/from16 v8, v20

    .line 427
    .local v8, "count":I
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v20

    move/from16 v9, v20

    .line 428
    .local v9, "parentLeft":I
    move/from16 v20, v6

    move/from16 v21, v4

    sub-int v20, v20, v21

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v10, v20

    .line 430
    .local v10, "parentRight":I
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v20

    move/from16 v11, v20

    .line 431
    .local v11, "parentTop":I
    move/from16 v20, v7

    move/from16 v21, v5

    sub-int v20, v20, v21

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v12, v20

    .line 433
    .local v12, "parentBottom":I
    const/16 v20, 0x0

    move/from16 v13, v20

    .local v13, "i":I
    :goto_0
    move/from16 v20, v13

    move/from16 v21, v8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 434
    move-object/from16 v20, v2

    move/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v14, v20

    .line 435
    .local v14, "child":Landroid/view/View;
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 436
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    move-object/from16 v15, v20

    .line 438
    .local v15, "lp":Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    move/from16 v16, v20

    .line 439
    .local v16, "width":I
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    move/from16 v17, v20

    .line 441
    .local v17, "height":I
    move/from16 v20, v9

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v18, v20

    .line 442
    .local v18, "childLeft":I
    move/from16 v20, v11

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v19, v20

    .line 444
    .local v19, "childTop":I
    move-object/from16 v20, v14

    move/from16 v21, v18

    move/from16 v22, v19

    move/from16 v23, v18

    move/from16 v24, v16

    add-int v23, v23, v24

    move/from16 v24, v19

    move/from16 v25, v17

    add-int v24, v24, v25

    invoke-virtual/range {v20 .. v24}, Landroid/view/View;->layout(IIII)V

    .line 433
    .end local v15    # "lp":Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v16    # "width":I
    .end local v17    # "height":I
    .end local v18    # "childLeft":I
    .end local v19    # "childTop":I
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 447
    .end local v14    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    .prologue
    .line 340
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move/from16 v1, p1

    .local v1, "widthMeasureSpec":I
    move/from16 v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 342
    const/4 v12, 0x0

    move v3, v12

    .line 343
    .local v3, "maxHeight":I
    const/4 v12, 0x0

    move v4, v12

    .line 344
    .local v4, "maxWidth":I
    const/4 v12, 0x0

    move v5, v12

    .line 346
    .local v5, "childState":I
    const/4 v12, 0x0

    move v6, v12

    .line 347
    .local v6, "topInset":I
    const/4 v12, 0x0

    move v7, v12

    .line 349
    .local v7, "bottomInset":I
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    move v14, v1

    const/4 v15, 0x0

    move/from16 v16, v2

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 350
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v12}, Landroidx/appcompat/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    move-object v8, v12

    .line 351
    .local v8, "lp":Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
    move v12, v4

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    .line 352
    invoke-virtual {v13}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v13

    move-object v14, v8

    iget v14, v14, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    move-object v14, v8

    iget v14, v14, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    .line 351
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v4, v12

    .line 353
    move v12, v3

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    .line 354
    invoke-virtual {v13}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v13

    move-object v14, v8

    iget v14, v14, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v14

    move-object v14, v8

    iget v14, v14, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    .line 353
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v3, v12

    .line 355
    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v13}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredState()I

    move-result v13

    invoke-static {v12, v13}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    move v5, v12

    .line 357
    move-object v12, v0

    invoke-static {v12}, Landroidx/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v12

    move v9, v12

    .line 358
    .local v9, "vis":I
    move v12, v9

    const/16 v13, 0x100

    and-int/lit16 v12, v12, 0x100

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_0
    move v10, v12

    .line 360
    .local v10, "stable":Z
    move v12, v10

    if-eqz v12, :cond_3

    .line 363
    move-object v12, v0

    iget v12, v12, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    move v6, v12

    .line 364
    move-object v12, v0

    iget-boolean v12, v12, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    if-eqz v12, :cond_0

    .line 365
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v12}, Landroidx/appcompat/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v12

    move-object v11, v12

    .line 366
    .local v11, "tabs":Landroid/view/View;
    move-object v12, v11

    if-eqz v12, :cond_0

    .line 368
    move v12, v6

    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v12, v13

    move v6, v12

    .line 370
    .line 381
    .end local v11    # "tabs":Landroid/view/View;
    :cond_0
    :goto_1
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 382
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 383
    move-object v12, v0

    iget-boolean v12, v12, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v12, :cond_4

    move v12, v10

    if-nez v12, :cond_4

    .line 384
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move v14, v6

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->top:I

    .line 385
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    move v14, v7

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    .line 390
    :goto_2
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Landroidx/appcompat/widget/ContentFrameLayout;

    move-object v14, v0

    iget-object v14, v14, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-direct/range {v12 .. v18}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v12

    .line 392
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 396
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 398
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Landroidx/appcompat/widget/ContentFrameLayout;

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/ContentFrameLayout;->dispatchFitSystemWindows(Landroid/graphics/Rect;)V

    .line 401
    :cond_1
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Landroidx/appcompat/widget/ContentFrameLayout;

    move v14, v1

    const/4 v15, 0x0

    move/from16 v16, v2

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 402
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v12}, Landroidx/appcompat/widget/ContentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    move-object v8, v12

    .line 403
    move v12, v4

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 404
    invoke-virtual {v13}, Landroidx/appcompat/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v13

    move-object v14, v8

    iget v14, v14, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    move-object v14, v8

    iget v14, v14, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    .line 403
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v4, v12

    .line 405
    move v12, v3

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 406
    invoke-virtual {v13}, Landroidx/appcompat/widget/ContentFrameLayout;->getMeasuredHeight()I

    move-result v13

    move-object v14, v8

    iget v14, v14, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v14

    move-object v14, v8

    iget v14, v14, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    .line 405
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v3, v12

    .line 407
    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v13}, Landroidx/appcompat/widget/ContentFrameLayout;->getMeasuredState()I

    move-result v13

    invoke-static {v12, v13}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    move v5, v12

    .line 410
    move v12, v4

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v13

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    move v4, v12

    .line 411
    move v12, v3

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v13

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    move v3, v12

    .line 414
    move v12, v3

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v3, v12

    .line 415
    move v12, v4

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v4, v12

    .line 417
    move-object v12, v0

    move v13, v4

    move v14, v1

    move v15, v5

    .line 418
    invoke-static {v13, v14, v15}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v13

    move v14, v3

    move v15, v2

    move/from16 v16, v5

    const/16 v17, 0x10

    shl-int/lit8 v16, v16, 0x10

    .line 419
    invoke-static/range {v14 .. v16}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v14

    .line 417
    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 421
    return-void

    .line 358
    .end local v10    # "stable":Z
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 371
    .restart local v10    # "stable":Z
    :cond_3
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v12}, Landroidx/appcompat/widget/ActionBarContainer;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    .line 374
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v12}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v12

    move v6, v12

    goto/16 :goto_1

    .line 387
    :cond_4
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move v14, v6

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->top:I

    .line 388
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    move v14, v7

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 8

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "velocityX":F
    move v3, p3

    .local v3, "velocityY":F
    move v4, p4

    .local v4, "consumed":Z
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v5, :cond_0

    move v5, v4

    if-nez v5, :cond_1

    .line 509
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 517
    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    :goto_0
    return v0

    .line 511
    .restart local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    :cond_1
    move-object v5, v0

    move v6, v2

    move v7, v3

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 512
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->addActionBarHideOffset()V

    .line 516
    :goto_1
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 517
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 514
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->removeActionBarHideOffset()V

    goto :goto_1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 5

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "velocityX":F
    move v3, p3

    .local v3, "velocityY":F
    const/4 v4, 0x0

    move v0, v4

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 523
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 10

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "dxConsumed":I
    move v3, p3

    .local v3, "dyConsumed":I
    move v4, p4

    .local v4, "dxUnconsumed":I
    move v5, p5

    .local v5, "dyUnconsumed":I
    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    move v8, v3

    add-int/2addr v7, v8

    iput v7, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 489
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 490
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 8

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "target":Landroid/view/View;
    move v3, p3

    .local v3, "axes":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 478
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v5

    iput v5, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 479
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 480
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v4, :cond_0

    .line 481
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    .line 483
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "target":Landroid/view/View;
    move v3, p3

    .local v3, "axes":I
    move v4, v3

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarContainer;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 470
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    .line 472
    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    move v0, v4

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    if-nez v2, :cond_0

    .line 495
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 496
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    .line 501
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v2, :cond_1

    .line 502
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    .line 504
    :cond_1
    return-void

    .line 498
    :cond_2
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->postAddActionBarHideOffset()V

    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 7

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move v1, p1

    .local v1, "visible":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 231
    move-object v5, v0

    move v6, v1

    invoke-super {v5, v6}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 233
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 234
    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    move v6, v1

    xor-int/2addr v5, v6

    move v2, v5

    .line 235
    .local v2, "diff":I
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 236
    move v5, v1

    const/4 v6, 0x4

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 237
    .local v3, "barVisible":Z
    move v5, v1

    const/16 v6, 0x100

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_1
    move v4, v5

    .line 238
    .local v4, "stable":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v5, :cond_2

    .line 242
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    move v6, v4

    if-nez v6, :cond_6

    const/4 v6, 0x1

    :goto_2
    invoke-interface {v5, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    .line 243
    move v5, v3

    if-nez v5, :cond_1

    move v5, v4

    if-nez v5, :cond_7

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    .line 246
    :cond_2
    :goto_3
    move v5, v2

    const/16 v6, 0x100

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_3

    .line 247
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v5, :cond_3

    .line 248
    move-object v5, v0

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 251
    :cond_3
    return-void

    .line 236
    .end local v3    # "barVisible":Z
    .end local v4    # "stable":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 237
    .restart local v3    # "barVisible":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 242
    .restart local v4    # "stable":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 244
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    goto :goto_3
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move v1, p1

    .local v1, "visibility":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 256
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 257
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v2, :cond_0

    .line 258
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 260
    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 5

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Landroidx/appcompat/widget/ContentFrameLayout;

    if-nez v1, :cond_0

    .line 537
    move-object v1, v0

    move-object v2, v0

    sget v3, Landroidx/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ContentFrameLayout;

    iput-object v2, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 538
    move-object v1, v0

    move-object v2, v0

    sget v3, Landroidx/appcompat/R$id;->action_bar_container:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object v2, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    .line 539
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    sget v4, Landroidx/appcompat/R$id;->action_bar:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Landroidx/appcompat/widget/DecorToolbar;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 541
    :cond_0
    return-void
.end method

.method public restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 732
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 733
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 734
    return-void
.end method

.method public saveToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 727
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 728
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 6

    .prologue
    .line 573
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move v1, p1

    .local v1, "offset":I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 574
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v3

    move v2, v3

    .line 575
    .local v2, "topHeight":I
    const/4 v3, 0x0

    move v4, v1

    move v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v3

    .line 576
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    move v4, v1

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 577
    return-void
.end method

.method public setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .locals 5

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "cb":Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 168
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 171
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    invoke-interface {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 172
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v3, :cond_0

    .line 173
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    move v2, v3

    .line 174
    .local v2, "newVis":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 175
    move-object v3, v0

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 178
    .end local v2    # "newVis":I
    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 4

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move v1, p1

    .local v1, "hasNonEmbeddedTabs":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    .line 198
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 4

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move v1, p1

    .local v1, "hideOnContentScroll":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eq v2, v3, :cond_0

    .line 556
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    .line 557
    move v2, v1

    if-nez v2, :cond_0

    .line 558
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 559
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 562
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 4

    .prologue
    .line 666
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 667
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setIcon(I)V

    .line 668
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 673
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 674
    return-void
.end method

.method public setLogo(I)V
    .locals 4

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 679
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setLogo(I)V

    .line 680
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 6

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "menu":Landroid/view/Menu;
    move-object v2, p2

    .local v2, "cb":Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 721
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroidx/appcompat/widget/DecorToolbar;->setMenu(Landroid/view/Menu;Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 722
    return-void
.end method

.method public setMenuPrepared()V
    .locals 2

    .prologue
    .line 714
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 715
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->setMenuPrepared()V

    .line 716
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 5

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move v1, p1

    .local v1, "overlayMode":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 187
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 188
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 190
    return-void

    .line 188
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setShowingForActionMode(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 219
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    .prologue
    .line 650
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 4

    .prologue
    .line 615
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "cb":Landroid/view/Window$Callback;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 616
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 617
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 622
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 623
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 2

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return v0
.end method

.method public showOverflowMenu()Z
    .locals 2

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 703
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActionBarOverlayLayout;
    return v0
.end method
