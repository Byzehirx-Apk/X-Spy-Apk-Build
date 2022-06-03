.class public Lcom/google/android/material/appbar/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"


# annotations
.annotation runtime Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;
    value = Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$Behavior;,
        Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;,
        Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field static final PENDING_ACTION_COLLAPSED:I = 0x2

.field static final PENDING_ACTION_EXPANDED:I = 0x1

.field static final PENDING_ACTION_FORCE:I = 0x8

.field static final PENDING_ACTION_NONE:I


# instance fields
.field private downPreScrollRange:I

.field private downScrollRange:I

.field private haveChildWithInterpolator:Z

.field private lastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private liftOnScroll:Z

.field private liftable:Z

.field private liftableOverride:Z

.field private lifted:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private pendingAction:I

.field private tmpStatesArray:[I

.field private totalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    .line 149
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    .line 150
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    .line 154
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    .line 174
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/material/appbar/AppBarLayout;->setOrientation(I)V

    .line 176
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 179
    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 183
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    sget v7, Lcom/google/android/material/R$style;->Widget_Design_AppBarLayout:I

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 187
    :cond_0
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Lcom/google/android/material/R$styleable;->AppBarLayout:[I

    const/4 v7, 0x0

    sget v8, Lcom/google/android/material/R$style;->Widget_Design_AppBarLayout:I

    const/4 v9, 0x0

    new-array v9, v9, [I

    .line 188
    invoke-static/range {v4 .. v9}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 190
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->AppBarLayout_android_background:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 191
    move-object v4, v3

    sget v5, Lcom/google/android/material/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->AppBarLayout_expanded:I

    const/4 v7, 0x0

    .line 193
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 192
    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    .line 197
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    move-object v4, v3

    sget v5, Lcom/google/android/material/R$styleable;->AppBarLayout_elevation:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->AppBarLayout_elevation:I

    const/4 v7, 0x0

    .line 199
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    .line 198
    invoke-static {v4, v5}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 201
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_4

    .line 204
    move-object v4, v3

    sget v5, Lcom/google/android/material/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 205
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    const/4 v7, 0x0

    .line 206
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 205
    invoke-virtual {v4, v5}, Lcom/google/android/material/appbar/AppBarLayout;->setKeyboardNavigationCluster(Z)V

    .line 208
    :cond_3
    move-object v4, v3

    sget v5, Lcom/google/android/material/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 209
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    const/4 v7, 0x0

    .line 210
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 209
    invoke-virtual {v4, v5}, Lcom/google/android/material/appbar/AppBarLayout;->setTouchscreenBlocksFocus(Z)V

    .line 213
    :cond_4
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->AppBarLayout_liftOnScroll:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 214
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    move-object v4, v0

    new-instance v5, Lcom/google/android/material/appbar/AppBarLayout$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/material/appbar/AppBarLayout$1;-><init>(Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 224
    return-void
.end method

.method private hasCollapsibleChild()Z
    .locals 5

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v3

    move v2, v3

    .local v2, "z":I
    :goto_0
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_1

    .line 293
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {v3}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->isCollapsible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    const/4 v3, 0x1

    move v0, v3

    .line 297
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    :goto_1
    return v0

    .line 292
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method private invalidateScrollRanges()V
    .locals 3

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    .line 303
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    .line 304
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    .line 305
    return-void
.end method

.method private setExpanded(ZZZ)V
    .locals 7

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move v1, p1

    .local v1, "expanded":Z
    move v2, p2

    .local v2, "animate":Z
    move v3, p3

    .local v3, "force":Z
    move-object v4, v0

    move v5, v1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v6, v2

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    :goto_1
    or-int/2addr v5, v6

    move v6, v3

    if-eqz v6, :cond_2

    const/16 v6, 0x8

    :goto_2
    or-int/2addr v5, v6

    iput v5, v4, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    .line 351
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/appbar/AppBarLayout;->requestLayout()V

    .line 352
    return-void

    .line 347
    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private setLiftableState(Z)Z
    .locals 4

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move v1, p1

    .local v1, "liftable":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 570
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    .line 571
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->refreshDrawableState()V

    .line 572
    const/4 v2, 0x1

    move v0, v2

    .line 574
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V
    .locals 6

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    if-nez v2, :cond_0

    .line 234
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    .line 236
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 237
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 239
    :cond_1
    return-void
.end method

.method public addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V
    .locals 4

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V

    .line 243
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return v0
.end method

.method dispatchOffsetUpdates(I)V
    .locals 8

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move v1, p1

    .local v1, "offset":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 506
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .local v3, "z":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 507
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;

    move-object v4, v5

    .line 508
    .local v4, "listener":Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 509
    move-object v5, v4

    move-object v6, v0

    move v7, v1

    invoke-interface {v5, v6, v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;->onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V

    .line 506
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 513
    .end local v2    # "i":I
    .end local v3    # "z":I
    .end local v4    # "listener":Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;
    :cond_1
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/appbar/AppBarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/appbar/AppBarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .locals 6

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .locals 7

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    new-instance v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .locals 6

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 372
    new-instance v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    move-object v0, v2

    .line 376
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    :goto_0
    return-object v0

    .line 373
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 374
    new-instance v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    goto :goto_0

    .line 376
    :cond_1
    new-instance v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method getDownNestedPreScrollRange()I
    .locals 12

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 433
    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    move v0, v7

    .line 463
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    .local v1, "range":I
    .local v2, "i":I
    :goto_0
    return v0

    .line 436
    .end local v1    # "range":I
    .end local v2    # "i":I
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_0
    const/4 v7, 0x0

    move v1, v7

    .line 437
    .restart local v1    # "range":I
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v2, v7

    .restart local v2    # "i":I
    :goto_1
    move v7, v2

    if-ltz v7, :cond_5

    .line 438
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 439
    .local v3, "child":Landroid/view/View;
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-object v4, v7

    .line 440
    .local v4, "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    move v5, v7

    .line 441
    .local v5, "childHeight":I
    move-object v7, v4

    iget v7, v7, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    move v6, v7

    .line 443
    .local v6, "flags":I
    move v7, v6

    const/4 v8, 0x5

    and-int/lit8 v7, v7, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    .line 445
    move v7, v1

    move-object v8, v4

    iget v8, v8, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    move-object v9, v4

    iget v9, v9, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    move v1, v7

    .line 447
    move v7, v6

    const/16 v8, 0x8

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_2

    .line 449
    move v7, v1

    move-object v8, v3

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    move v1, v7

    .line 437
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 450
    :cond_2
    move v7, v6

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_3

    .line 452
    move v7, v1

    move v8, v5

    move-object v9, v3

    invoke-static {v9}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    move v1, v7

    goto :goto_2

    .line 455
    :cond_3
    move v7, v1

    move v8, v5

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    move v1, v7

    goto :goto_2

    .line 457
    :cond_4
    move v7, v1

    if-lez v7, :cond_1

    .line 460
    .line 463
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .end local v5    # "childHeight":I
    .end local v6    # "flags":I
    :cond_5
    move-object v7, v0

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    move v0, v7

    goto :goto_0
.end method

.method getDownNestedScrollRange()I
    .locals 13

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 470
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    move v0, v8

    .line 499
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    .local v1, "range":I
    .local v2, "i":I
    .local v3, "z":I
    :goto_0
    return v0

    .line 473
    .end local v1    # "range":I
    .end local v2    # "i":I
    .end local v3    # "z":I
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_0
    const/4 v8, 0x0

    move v1, v8

    .line 474
    .restart local v1    # "range":I
    const/4 v8, 0x0

    move v2, v8

    .restart local v2    # "i":I
    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v8

    move v3, v8

    .restart local v3    # "z":I
    :goto_1
    move v8, v2

    move v9, v3

    if-ge v8, v9, :cond_1

    .line 475
    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v4, v8

    .line 476
    .local v4, "child":Landroid/view/View;
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-object v5, v8

    .line 477
    .local v5, "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move v6, v8

    .line 478
    .local v6, "childHeight":I
    move v8, v6

    move-object v9, v5

    iget v9, v9, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    move-object v10, v5

    iget v10, v10, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v6, v8

    .line 480
    move-object v8, v5

    iget v8, v8, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    move v7, v8

    .line 482
    .local v7, "flags":I
    move v8, v7

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 484
    move v8, v1

    move v9, v6

    add-int/2addr v8, v9

    move v1, v8

    .line 486
    move v8, v7

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    .line 490
    move v8, v1

    move-object v9, v4

    invoke-static {v9}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v1, v8

    .line 499
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .end local v6    # "childHeight":I
    .end local v7    # "flags":I
    :cond_1
    move-object v8, v0

    const/4 v9, 0x0

    move v10, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object v11, v8

    move v12, v9

    move v8, v12

    move-object v9, v11

    move v10, v12

    iput v10, v9, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    move v0, v8

    goto :goto_0

    .line 474
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .restart local v6    # "childHeight":I
    .restart local v7    # "flags":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .locals 8

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v5

    move v1, v5

    .line 517
    .local v1, "topInset":I
    move-object v5, v0

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    move v2, v5

    .line 518
    .local v2, "minHeight":I
    move v5, v2

    if-eqz v5, :cond_0

    .line 520
    move v5, v2

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    move v6, v1

    add-int/2addr v5, v6

    move v0, v5

    .line 533
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    :goto_0
    return v0

    .line 524
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v5

    move v3, v5

    .line 525
    .local v3, "childCount":I
    move v5, v3

    const/4 v6, 0x1

    if-lt v5, v6, :cond_1

    move-object v5, v0

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    .line 526
    invoke-virtual {v5, v6}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    :goto_1
    move v4, v5

    .line 527
    .local v4, "lastChildMinHeight":I
    move v5, v4

    if-eqz v5, :cond_2

    .line 528
    move v5, v4

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    move v6, v1

    add-int/2addr v5, v6

    move v0, v5

    goto :goto_0

    .line 526
    .end local v4    # "lastChildMinHeight":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 533
    .restart local v4    # "lastChildMinHeight":I
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result v5

    const/4 v6, 0x3

    div-int/lit8 v5, v5, 0x3

    move v0, v5

    goto :goto_0
.end method

.method getPendingAction()I
    .locals 2

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return v0
.end method

.method public getTargetElevation()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return v0
.end method

.method final getTopInset()I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getTotalScrollRange()I
    .locals 14

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 390
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    move v0, v8

    .line 417
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    .local v1, "range":I
    .local v2, "i":I
    .local v3, "z":I
    :goto_0
    return v0

    .line 393
    .end local v1    # "range":I
    .end local v2    # "i":I
    .end local v3    # "z":I
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_0
    const/4 v8, 0x0

    move v1, v8

    .line 394
    .restart local v1    # "range":I
    const/4 v8, 0x0

    move v2, v8

    .restart local v2    # "i":I
    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v8

    move v3, v8

    .restart local v3    # "z":I
    :goto_1
    move v8, v2

    move v9, v3

    if-ge v8, v9, :cond_1

    .line 395
    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v4, v8

    .line 396
    .local v4, "child":Landroid/view/View;
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-object v5, v8

    .line 397
    .local v5, "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move v6, v8

    .line 398
    .local v6, "childHeight":I
    move-object v8, v5

    iget v8, v8, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    move v7, v8

    .line 400
    .local v7, "flags":I
    move v8, v7

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 402
    move v8, v1

    move v9, v6

    move-object v10, v5

    iget v10, v10, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    move-object v10, v5

    iget v10, v10, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v1, v8

    .line 404
    move v8, v7

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    .line 408
    move v8, v1

    move-object v9, v4

    invoke-static {v9}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    move v1, v8

    .line 417
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .end local v6    # "childHeight":I
    .end local v7    # "flags":I
    :cond_1
    move-object v8, v0

    const/4 v9, 0x0

    move v10, v1

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    iput v10, v9, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    move v0, v8

    goto :goto_0

    .line 394
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .restart local v6    # "childHeight":I
    .restart local v7    # "flags":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method getUpNestedPreScrollRange()I
    .locals 2

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return v0
.end method

.method hasChildWithInterpolator()Z
    .locals 2

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return v0
.end method

.method hasScrollableChildren()Z
    .locals 2

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLiftOnScroll()Z
    .locals 2

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move v1, p1

    .local v1, "extraSpace":I
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    if-nez v4, :cond_0

    .line 541
    move-object v4, v0

    const/4 v5, 0x4

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    .line 543
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    move-object v2, v4

    .line 544
    .local v2, "extraStates":[I
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    array-length v6, v6

    add-int/2addr v5, v6

    invoke-super {v4, v5}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v4

    move-object v3, v4

    .line 546
    .local v3, "states":[I
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eqz v6, :cond_1

    sget v6, Lcom/google/android/material/R$attr;->state_liftable:I

    :goto_0
    aput v6, v4, v5

    .line 547
    move-object v4, v2

    const/4 v5, 0x1

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    if-eqz v6, :cond_2

    sget v6, Lcom/google/android/material/R$attr;->state_lifted:I

    :goto_1
    aput v6, v4, v5

    .line 551
    move-object v4, v2

    const/4 v5, 0x2

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eqz v6, :cond_3

    sget v6, Lcom/google/android/material/R$attr;->state_collapsible:I

    :goto_2
    aput v6, v4, v5

    .line 552
    move-object v4, v2

    const/4 v5, 0x3

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    if-eqz v6, :cond_4

    sget v6, Lcom/google/android/material/R$attr;->state_collapsed:I

    :goto_3
    aput v6, v4, v5

    .line 554
    move-object v4, v3

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/android/material/appbar/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return-object v0

    .line 546
    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_1
    sget v6, Lcom/google/android/material/R$attr;->state_liftable:I

    neg-int v6, v6

    goto :goto_0

    .line 547
    :cond_2
    sget v6, Lcom/google/android/material/R$attr;->state_lifted:I

    neg-int v6, v6

    goto :goto_1

    .line 551
    :cond_3
    sget v6, Lcom/google/android/material/R$attr;->state_collapsible:I

    neg-int v6, v6

    goto :goto_2

    .line 552
    :cond_4
    sget v6, Lcom/google/android/material/R$attr;->state_collapsed:I

    neg-int v6, v6

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    .prologue
    .line 270
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move/from16 v1, p1

    .local v1, "changed":Z
    move/from16 v2, p2

    .local v2, "l":I
    move/from16 v3, p3

    .local v3, "t":I
    move/from16 v4, p4

    .local v4, "r":I
    move/from16 v5, p5

    .local v5, "b":I
    move-object v11, v0

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    invoke-super/range {v11 .. v16}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 271
    move-object v11, v0

    invoke-direct {v11}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateScrollRanges()V

    .line 273
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    .line 274
    const/4 v11, 0x0

    move v6, v11

    .local v6, "i":I
    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v11

    move v7, v11

    .local v7, "z":I
    :goto_0
    move v11, v6

    move v12, v7

    if-ge v11, v12, :cond_0

    .line 275
    move-object v11, v0

    move v12, v6

    invoke-virtual {v11, v12}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v8, v11

    .line 276
    .local v8, "child":Landroid/view/View;
    move-object v11, v8

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-object v9, v11

    .line 277
    .local v9, "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    move-object v11, v9

    invoke-virtual {v11}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v11

    move-object v10, v11

    .line 279
    .local v10, "interpolator":Landroid/view/animation/Interpolator;
    move-object v11, v10

    if-eqz v11, :cond_3

    .line 280
    move-object v11, v0

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    .line 281
    .line 286
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .end local v10    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_0
    move-object v11, v0

    iget-boolean v11, v11, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    if-nez v11, :cond_2

    .line 287
    move-object v11, v0

    move-object v12, v0

    iget-boolean v12, v12, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    if-nez v12, :cond_1

    move-object v12, v0

    invoke-direct {v12}, Lcom/google/android/material/appbar/AppBarLayout;->hasCollapsibleChild()Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_1
    const/4 v12, 0x1

    :goto_1
    invoke-direct {v11, v12}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftableState(Z)Z

    move-result v11

    .line 289
    :cond_2
    return-void

    .line 274
    .restart local v8    # "child":Landroid/view/View;
    .restart local v9    # "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .restart local v10    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 287
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .end local v10    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_4
    const/4 v12, 0x0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 265
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateScrollRanges()V

    .line 266
    return-void
.end method

.method onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, p1

    .local v1, "insets":Landroidx/core/view/WindowInsetsCompat;
    const/4 v3, 0x0

    move-object v2, v3

    .line 652
    .local v2, "newInsets":Landroidx/core/view/WindowInsetsCompat;
    move-object v3, v0

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 654
    move-object v3, v1

    move-object v2, v3

    .line 658
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    move-object v4, v2

    invoke-static {v3, v4}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 659
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 660
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateScrollRanges()V

    .line 663
    :cond_1
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return-object v0
.end method

.method public removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V
    .locals 4

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 254
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 256
    :cond_0
    return-void
.end method

.method public removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V
    .locals 4

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V

    .line 260
    return-void
.end method

.method resetPendingAction()V
    .locals 3

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    .line 642
    return-void
.end method

.method public setExpanded(Z)V
    .locals 5

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move v1, p1

    .local v1, "expanded":Z
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 329
    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 7

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move v1, p1

    .local v1, "expanded":Z
    move v2, p2

    .local v2, "animate":Z
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    .line 344
    return-void
.end method

.method public setLiftOnScroll(Z)V
    .locals 4

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move v1, p1

    .local v1, "liftOnScroll":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 606
    return-void
.end method

.method public setLiftable(Z)Z
    .locals 4

    .prologue
    .line 563
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move v1, p1

    .local v1, "liftable":Z
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    .line 564
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftableState(Z)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return v0
.end method

.method public setLifted(Z)Z
    .locals 4

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move v1, p1

    .local v1, "lifted":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    return v0
.end method

.method setLiftedState(Z)Z
    .locals 4

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move v1, p1

    .local v1, "lifted":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 589
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    .line 590
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->refreshDrawableState()V

    .line 591
    const/4 v2, 0x1

    move v0, v2

    .line 593
    .end local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 6

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move v1, p1

    .local v1, "orientation":I
    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 310
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 313
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 314
    return-void
.end method

.method public setTargetElevation(F)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 622
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/AppBarLayout;
    move v1, p1

    .local v1, "elevation":F
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 623
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 625
    :cond_0
    return-void
.end method
