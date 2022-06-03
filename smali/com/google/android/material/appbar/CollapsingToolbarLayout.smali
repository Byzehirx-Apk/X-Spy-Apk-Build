.class public Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;,
        Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_ANIMATION_DURATION:I = 0x258


# instance fields
.field final collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

.field private collapsingTitleEnabled:Z

.field private contentScrim:Landroid/graphics/drawable/Drawable;

.field currentOffset:I

.field private drawCollapsingTitle:Z

.field private dummyView:Landroid/view/View;

.field private expandedMarginBottom:I

.field private expandedMarginEnd:I

.field private expandedMarginStart:I

.field private expandedMarginTop:I

.field lastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field private refreshToolbar:Z

.field private scrimAlpha:I

.field private scrimAnimationDuration:J

.field private scrimAnimator:Landroid/animation/ValueAnimator;

.field private scrimVisibleHeightTrigger:I

.field private scrimsAreShown:Z

.field statusBarScrim:Landroid/graphics/drawable/Drawable;

.field private final tmpRect:Landroid/graphics/Rect;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private toolbarDirectChild:Landroid/view/View;

.field private toolbarId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 14

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move/from16 v3, p3

    .local v3, "defStyleAttr":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->refreshToolbar:Z

    .line 127
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    .line 138
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 157
    move-object v5, v0

    new-instance v6, Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 158
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    sget-object v6, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 160
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout:[I

    move v8, v3

    sget v9, Lcom/google/android/material/R$style;->Widget_Design_CollapsingToolbar:I

    const/4 v10, 0x0

    new-array v10, v10, [I

    .line 161
    invoke-static/range {v5 .. v10}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 168
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleGravity:I

    const v8, 0x800053

    .line 169
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 168
    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 172
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_collapsedTitleGravity:I

    const v8, 0x800013

    .line 173
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 172
    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 177
    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    move-object v8, v0

    move-object v9, v4

    sget v10, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMargin:I

    const/4 v11, 0x0

    .line 181
    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    iput v10, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    move-object v12, v7

    move v13, v8

    move v7, v13

    move-object v8, v12

    move v9, v13

    iput v9, v8, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    move-object v12, v6

    move v13, v7

    move v6, v13

    move-object v7, v12

    move v8, v13

    iput v8, v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    iput v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 184
    move-object v5, v4

    sget v6, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 185
    move-object v5, v0

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    const/4 v8, 0x0

    .line 186
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 188
    :cond_0
    move-object v5, v4

    sget v6, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 189
    move-object v5, v0

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    const/4 v8, 0x0

    .line 190
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    .line 192
    :cond_1
    move-object v5, v4

    sget v6, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 193
    move-object v5, v0

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    const/4 v8, 0x0

    .line 194
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    .line 196
    :cond_2
    move-object v5, v4

    sget v6, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 197
    move-object v5, v0

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    const/4 v8, 0x0

    .line 198
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    .line 201
    :cond_3
    move-object v5, v0

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_titleEnabled:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 202
    move-object v5, v0

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_title:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    sget v6, Lcom/google/android/material/R$style;->TextAppearance_Design_CollapsingToolbar_Expanded:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 207
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    sget v6, Landroidx/appcompat/R$style;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 211
    move-object v5, v4

    sget v6, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 212
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    const/4 v8, 0x0

    .line 213
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 212
    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 215
    :cond_4
    move-object v5, v4

    sget v6, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 216
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    const/4 v8, 0x0

    .line 217
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 216
    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 220
    :cond_5
    move-object v5, v0

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_scrimVisibleHeightTrigger:I

    const/4 v8, -0x1

    .line 221
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 223
    move-object v5, v0

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_scrimAnimationDuration:I

    const/16 v8, 0x258

    .line 224
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    .line 228
    move-object v5, v0

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_contentScrim:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 229
    move-object v5, v0

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_statusBarScrim:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 231
    move-object v5, v0

    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_toolbarId:I

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarId:I

    .line 233
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setWillNotDraw(Z)V

    .line 237
    move-object v5, v0

    new-instance v6, Lcom/google/android/material/appbar/CollapsingToolbarLayout$1;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$1;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 245
    return-void
.end method

.method private animateScrim(I)V
    .locals 9

    .prologue
    .line 609
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v2, p1

    .local v2, "targetAlpha":I
    move-object v3, v1

    invoke-direct {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->ensureToolbar()V

    .line 610
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_2

    .line 611
    move-object v3, v1

    new-instance v4, Landroid/animation/ValueAnimator;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    .line 612
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    move-object v4, v1

    iget-wide v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 613
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    move v4, v2

    move-object v5, v1

    iget v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    if-le v4, v5, :cond_1

    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    :goto_0
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 617
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$2;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 628
    :cond_0
    :goto_1
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    iget v7, v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    aput v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move v7, v2

    aput v7, v5, v6

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 629
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 630
    return-void

    .line 613
    :cond_1
    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 624
    :cond_2
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 625
    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1
.end method

.method private ensureToolbar()V
    .locals 8

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->refreshToolbar:Z

    if-nez v5, :cond_0

    .line 349
    .line 380
    :goto_0
    return-void

    .line 353
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 354
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    .line 356
    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 358
    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarId:I

    invoke-virtual {v6, v7}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/Toolbar;

    iput-object v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 359
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v5, :cond_1

    .line 360
    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {v6, v7}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->findDirectChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    .line 364
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-nez v5, :cond_3

    .line 367
    const/4 v5, 0x0

    move-object v1, v5

    .line 368
    .local v1, "toolbar":Landroidx/appcompat/widget/Toolbar;
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    move-result v5

    move v3, v5

    .local v3, "count":I
    :goto_1
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 369
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 370
    .local v4, "child":Landroid/view/View;
    move-object v5, v4

    instance-of v5, v5, Landroidx/appcompat/widget/Toolbar;

    if-eqz v5, :cond_4

    .line 371
    move-object v5, v4

    check-cast v5, Landroidx/appcompat/widget/Toolbar;

    move-object v1, v5

    .line 375
    .end local v4    # "child":Landroid/view/View;
    :cond_2
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 378
    .end local v1    # "toolbar":Landroidx/appcompat/widget/Toolbar;
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_3
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateDummyView()V

    .line 379
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->refreshToolbar:Z

    .line 380
    goto :goto_0

    .line 368
    .restart local v1    # "toolbar":Landroidx/appcompat/widget/Toolbar;
    .restart local v2    # "i":I
    .restart local v3    # "count":I
    .restart local v4    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private findDirectChild(Landroid/view/View;)Landroid/view/View;
    .locals 6

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "descendant":Landroid/view/View;
    move-object v4, v1

    move-object v2, v4

    .line 391
    .local v2, "directChild":Landroid/view/View;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v3, v4

    .local v3, "p":Landroid/view/ViewParent;
    :goto_0
    move-object v4, v3

    move-object v5, v0

    if-eq v4, v5, :cond_1

    move-object v4, v3

    if-eqz v4, :cond_1

    .line 392
    move-object v4, v3

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 393
    move-object v4, v3

    check-cast v4, Landroid/view/View;

    move-object v2, v4

    .line 391
    :cond_0
    move-object v4, v3

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 396
    :cond_1
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return-object v0
.end method

.method private static getHeightWithMargins(Landroid/view/View;)I
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v1, v3

    .line 508
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v1

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    .line 509
    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v3

    .line 510
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    move v0, v3

    .line 512
    .end local v0    # "view":Landroid/view/View;
    .end local v2    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method static getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;
    .locals 6

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v2, v0

    sget v3, Lcom/google/android/material/R$id;->view_offset_helper:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-object v1, v2

    .line 517
    .local v1, "offsetHelper":Lcom/google/android/material/appbar/ViewOffsetHelper;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 518
    new-instance v2, Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/android/material/appbar/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    move-object v1, v2

    .line 519
    move-object v2, v0

    sget v3, Lcom/google/android/material/R$id;->view_offset_helper:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 521
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "view":Landroid/view/View;
    return-object v0
.end method

.method private isToolbarChild(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    move-object v3, v0

    if-ne v2, v3, :cond_2

    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateContentDescriptionFromTitle()V
    .locals 3

    .prologue
    .line 1241
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1242
    return-void
.end method

.method private updateDummyView()V
    .locals 7

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 402
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    .line 403
    .local v1, "parent":Landroid/view/ViewParent;
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 404
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 407
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v2, :cond_2

    .line 408
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 409
    move-object v2, v0

    new-instance v3, Landroid/view/View;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    .line 411
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 412
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;II)V

    .line 415
    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .prologue
    .line 1100
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 303
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->ensureToolbar()V

    .line 304
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    if-lez v3, :cond_0

    .line 305
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 306
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->drawCollapsingTitle:Z

    if-eqz v3, :cond_1

    .line 311
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 315
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    if-lez v3, :cond_2

    .line 316
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    :goto_0
    move v2, v3

    .line 317
    .local v2, "topInset":I
    move v3, v2

    if-lez v3, :cond_2

    .line 318
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    neg-int v5, v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getWidth()I

    move-result v6

    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 319
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 320
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 323
    .end local v2    # "topInset":I
    :cond_2
    return-void

    .line 316
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 13

    .prologue
    .line 330
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v2, p1

    .local v2, "canvas":Landroid/graphics/Canvas;
    move-object v3, p2

    .local v3, "child":Landroid/view/View;
    move-wide/from16 v4, p3

    .local v4, "drawingTime":J
    const/4 v7, 0x0

    move v6, v7

    .line 331
    .local v6, "invalidated":Z
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    move-object v7, v1

    iget v7, v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    if-lez v7, :cond_0

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->isToolbarChild(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 332
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v8, v1

    iget v8, v8, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 333
    move-object v7, v1

    iget-object v7, v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 334
    const/4 v7, 0x1

    move v6, v7

    .line 336
    :cond_0
    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-wide v10, v4

    invoke-super {v7, v8, v9, v10, v11}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v6

    if-eqz v7, :cond_2

    :cond_1
    const/4 v7, 0x1

    :goto_0
    move v1, v7

    .end local v1    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return v1

    .restart local v1    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 7

    .prologue
    .line 734
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v4, v0

    invoke-super {v4}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 736
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v4

    move-object v1, v4

    .line 737
    .local v1, "state":[I
    const/4 v4, 0x0

    move v2, v4

    .line 739
    .local v2, "changed":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v4

    .line 740
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 741
    move v4, v2

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    or-int/2addr v4, v5

    move v2, v4

    .line 743
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v4

    .line 744
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 745
    move v4, v2

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    or-int/2addr v4, v5

    move v2, v4

    .line 747
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    if-eqz v4, :cond_2

    .line 748
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->setState([I)Z

    move-result v5

    or-int/2addr v4, v5

    move v2, v4

    .line 751
    :cond_2
    move v4, v2

    if-eqz v4, :cond_3

    .line 752
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->invalidate()V

    .line 754
    :cond_3
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    .locals 6

    .prologue
    .line 1105
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    new-instance v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 7

    .prologue
    .line 1110
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    new-instance v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 6

    .prologue
    .line 1115
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 2

    .prologue
    .line 854
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextGravity()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return v0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 916
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return-object v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .locals 2

    .prologue
    .line 901
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpandedTextGravity()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return v0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 2

    .prologue
    .line 1024
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return v0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 2

    .prologue
    .line 1003
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return v0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 2

    .prologue
    .line 961
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return v0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 2

    .prologue
    .line 982
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return v0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 931
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpandedTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return-object v0
.end method

.method final getMaxOffsetForPinChild(Landroid/view/View;)I
    .locals 6

    .prologue
    .line 1234
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v4, v1

    invoke-static {v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v4

    move-object v2, v4

    .line 1235
    .local v2, "offsetHelper":Lcom/google/android/material/appbar/ViewOffsetHelper;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    move-object v3, v4

    .line 1236
    .local v3, "lp":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/android/material/appbar/ViewOffsetHelper;->getLayoutTop()I

    move-result v5

    sub-int/2addr v4, v5

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    move-object v5, v3

    iget v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return v0
.end method

.method getScrimAlpha()I
    .locals 2

    .prologue
    .line 644
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return v0
.end method

.method public getScrimAnimationDuration()J
    .locals 3

    .prologue
    .line 1095
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    iget-wide v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 5

    .prologue
    .line 1064
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    if-ltz v3, :cond_0

    .line 1066
    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    move v0, v3

    .line 1080
    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    .local v1, "insetTop":I
    .local v2, "minHeight":I
    :goto_0
    return v0

    .line 1070
    .end local v1    # "insetTop":I
    .end local v2    # "minHeight":I
    .restart local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    :goto_1
    move v1, v3

    .line 1072
    .restart local v1    # "insetTop":I
    move-object v3, v0

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    move v2, v3

    .line 1073
    .restart local v2    # "minHeight":I
    move v3, v2

    if-lez v3, :cond_2

    .line 1075
    move v3, v2

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    move v4, v1

    add-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 1070
    .end local v1    # "insetTop":I
    .end local v2    # "minHeight":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1080
    .restart local v1    # "insetTop":I
    .restart local v2    # "minHeight":I
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v3

    const/4 v4, 0x3

    div-int/lit8 v3, v3, 0x3

    move v0, v3

    goto :goto_0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 806
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTitleEnabled()Z
    .locals 2

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v2, v0

    invoke-super {v2}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 252
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    .line 253
    .local v1, "parent":Landroid/view/ViewParent;
    move-object v2, v1

    instance-of v2, v2, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_1

    .line 255
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 257
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-nez v2, :cond_0

    .line 258
    move-object v2, v0

    new-instance v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iput-object v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    .line 260
    :cond_0
    move-object v2, v1

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 263
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 265
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    .line 271
    .local v1, "parent":Landroid/view/ViewParent;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_0

    .line 272
    move-object v2, v1

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 275
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 276
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    .prologue
    .line 435
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move/from16 v1, p1

    .local v1, "changed":Z
    move/from16 v2, p2

    .local v2, "left":I
    move/from16 v3, p3

    .local v3, "top":I
    move/from16 v4, p4

    .local v4, "right":I
    move/from16 v5, p5

    .local v5, "bottom":I
    move-object v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    invoke-super/range {v10 .. v15}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 437
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v10, :cond_1

    .line 439
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v10}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v10

    move v6, v10

    .line 440
    .local v6, "insetTop":I
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    move-result v10

    move v8, v10

    .local v8, "z":I
    :goto_0
    move v10, v7

    move v11, v8

    if-ge v10, v11, :cond_1

    .line 441
    move-object v10, v0

    move v11, v7

    invoke-virtual {v10, v11}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v9, v10

    .line 442
    .local v9, "child":Landroid/view/View;
    move-object v10, v9

    invoke-static {v10}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 443
    move-object v10, v9

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    move v11, v6

    if-ge v10, v11, :cond_0

    .line 446
    move-object v10, v9

    move v11, v6

    invoke-static {v10, v11}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 440
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 453
    .end local v6    # "insetTop":I
    .end local v7    # "i":I
    .end local v8    # "z":I
    .end local v9    # "child":Landroid/view/View;
    :cond_1
    move-object v10, v0

    iget-boolean v10, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    if-eqz v10, :cond_2

    .line 456
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    .line 457
    invoke-static {v11}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->drawCollapsingTitle:Z

    .line 459
    move-object v10, v0

    iget-boolean v10, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->drawCollapsingTitle:Z

    if-eqz v10, :cond_2

    .line 460
    move-object v10, v0

    .line 461
    invoke-static {v10}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    :goto_2
    move v6, v10

    .line 464
    .local v6, "isRtl":Z
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-eqz v11, :cond_5

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    .line 465
    :goto_3
    invoke-virtual {v10, v11}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v10

    move v7, v10

    .line 466
    .local v7, "maxOffset":I
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    invoke-static {v10, v11, v12}, Lcom/google/android/material/internal/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 467
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    move v12, v6

    if-eqz v12, :cond_6

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 468
    invoke-virtual {v12}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginEnd()I

    move-result v12

    :goto_4
    add-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    move v13, v7

    add-int/2addr v12, v13

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 469
    invoke-virtual {v13}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginTop()I

    move-result v13

    add-int/2addr v12, v13

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move v14, v6

    if-eqz v14, :cond_7

    move-object v14, v0

    iget-object v14, v14, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 470
    invoke-virtual {v14}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginStart()I

    move-result v14

    :goto_5
    add-int/2addr v13, v14

    move-object v14, v0

    iget-object v14, v14, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    move v15, v7

    add-int/2addr v14, v15

    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 471
    invoke-virtual {v15}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginBottom()I

    move-result v15

    sub-int/2addr v14, v15

    .line 467
    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 474
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move v11, v6

    if-eqz v11, :cond_8

    move-object v11, v0

    iget v11, v11, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    :goto_6
    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    move-object v13, v0

    iget v13, v13, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    add-int/2addr v12, v13

    move v13, v4

    move v14, v2

    sub-int/2addr v13, v14

    move v14, v6

    if-eqz v14, :cond_9

    move-object v14, v0

    iget v14, v14, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    :goto_7
    sub-int/2addr v13, v14

    move v14, v5

    move v15, v3

    sub-int/2addr v14, v15

    move-object v15, v0

    iget v15, v15, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    sub-int/2addr v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 480
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v10}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 486
    .end local v6    # "isRtl":Z
    .end local v7    # "maxOffset":I
    :cond_2
    const/4 v10, 0x0

    move v6, v10

    .local v6, "i":I
    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    move-result v10

    move v7, v10

    .local v7, "z":I
    :goto_8
    move v10, v6

    move v11, v7

    if-ge v10, v11, :cond_a

    .line 487
    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/material/appbar/ViewOffsetHelper;->onViewLayout()V

    .line 486
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 457
    .end local v6    # "i":I
    .end local v7    # "z":I
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 461
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 464
    .local v6, "isRtl":Z
    :cond_5
    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_3

    .line 468
    .local v7, "maxOffset":I
    :cond_6
    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v12}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginStart()I

    move-result v12

    goto/16 :goto_4

    .line 470
    :cond_7
    move-object v14, v0

    iget-object v14, v14, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v14}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginEnd()I

    move-result v14

    goto :goto_5

    .line 474
    :cond_8
    move-object v11, v0

    iget v11, v11, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    goto :goto_6

    :cond_9
    move-object v14, v0

    iget v14, v14, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    goto :goto_7

    .line 491
    .local v6, "i":I
    .local v7, "z":I
    :cond_a
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v10, :cond_d

    .line 492
    move-object v10, v0

    iget-boolean v10, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v10, :cond_b

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v10}, Lcom/google/android/material/internal/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 494
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v11}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 496
    :cond_b
    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-eqz v10, :cond_c

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    move-object v11, v0

    if-ne v10, v11, :cond_e

    .line 497
    :cond_c
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v11}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setMinimumHeight(I)V

    .line 503
    :cond_d
    :goto_9
    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 504
    return-void

    .line 499
    :cond_e
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    invoke-static {v11}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setMinimumHeight(I)V

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->ensureToolbar()V

    .line 420
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-super {v5, v6, v7}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 422
    move v5, v2

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    move v3, v5

    .line 423
    .local v3, "mode":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v5}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v5

    :goto_0
    move v4, v5

    .line 424
    .local v4, "topInset":I
    move v5, v3

    if-nez v5, :cond_0

    move v5, v4

    if-lez v5, :cond_0

    .line 427
    move-object v5, v0

    .line 428
    invoke-virtual {v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMeasuredHeight()I

    move-result v5

    move v6, v4

    add-int/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move v2, v5

    .line 429
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-super {v5, v6, v7}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 431
    :cond_0
    return-void

    .line 423
    .end local v4    # "topInset":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move v3, p3

    .local v3, "oldw":I
    move v4, p4

    .local v4, "oldh":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 342
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 343
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v1

    move v9, v2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 345
    :cond_0
    return-void
.end method

.method onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "insets":Landroidx/core/view/WindowInsetsCompat;
    const/4 v3, 0x0

    move-object v2, v3

    .line 281
    .local v2, "newInsets":Landroidx/core/view/WindowInsetsCompat;
    move-object v3, v0

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    move-object v3, v1

    move-object v2, v3

    .line 287
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    move-object v4, v2

    invoke-static {v3, v4}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 288
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 289
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    .line 294
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return-object v0
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 4

    .prologue
    .line 845
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "gravity":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 846
    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 817
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 818
    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 826
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 827
    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 835
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "colors":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 836
    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 4
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 910
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "typeface":Landroid/graphics/Typeface;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTypeface(Landroid/graphics/Typeface;)V

    .line 911
    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    if-eq v2, v3, :cond_2

    .line 657
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 658
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 660
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_3

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 661
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 662
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getWidth()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 663
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 664
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 666
    :cond_1
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 668
    :cond_2
    return-void

    .line 660
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setContentScrimColor(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 679
    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 690
    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 874
    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 4

    .prologue
    .line 892
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "gravity":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 893
    return-void
.end method

.method public setExpandedTitleMargin(IIII)V
    .locals 7

    .prologue
    .line 948
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "end":I
    move v4, p4

    .local v4, "bottom":I
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 949
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    .line 950
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    .line 951
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    .line 952
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    .line 953
    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 4

    .prologue
    .line 1035
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "margin":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    .line 1036
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    .line 1037
    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 4

    .prologue
    .line 1014
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "margin":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    .line 1015
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    .line 1016
    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 4

    .prologue
    .line 972
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "margin":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 973
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    .line 974
    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 4

    .prologue
    .line 993
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "margin":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    .line 994
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    .line 995
    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 864
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 865
    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "colors":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 883
    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 4
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 925
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "typeface":Landroid/graphics/Typeface;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTypeface(Landroid/graphics/Typeface;)V

    .line 926
    return-void
.end method

.method setScrimAlpha(I)V
    .locals 5

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "alpha":I
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    if-eq v3, v4, :cond_1

    .line 634
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    move-object v2, v3

    .line 635
    .local v2, "contentScrim":Landroid/graphics/drawable/Drawable;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v3, :cond_0

    .line 636
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 638
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    .line 639
    move-object v3, v0

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 641
    .end local v2    # "contentScrim":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .locals 7
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 1090
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-wide v1, p1

    .local v1, "duration":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    .line 1091
    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 1050
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "height":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 1051
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 1053
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1055
    :cond_0
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 5

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "shown":Z
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimsShown(ZZ)V

    .line 586
    return-void

    .line 585
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setScrimsShown(ZZ)V
    .locals 5

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "shown":Z
    move v2, p2

    .local v2, "animate":Z
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimsAreShown:Z

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 599
    move v3, v2

    if-eqz v3, :cond_2

    .line 600
    move-object v3, v0

    move v4, v1

    if-eqz v4, :cond_1

    const/16 v4, 0xff

    :goto_0
    invoke-direct {v3, v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->animateScrim(I)V

    .line 604
    :goto_1
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimsAreShown:Z

    .line 606
    :cond_0
    return-void

    .line 600
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 602
    :cond_2
    move-object v3, v0

    move v4, v1

    if-eqz v4, :cond_3

    const/16 v4, 0xff

    :goto_2
    invoke-virtual {v3, v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimAlpha(I)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 714
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    if-eq v2, v3, :cond_3

    .line 715
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 716
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 718
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_4

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 719
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 720
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 721
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 723
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v2

    .line 724
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v2

    .line 725
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 726
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 728
    :cond_2
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 730
    :cond_3
    return-void

    .line 718
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 724
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setStatusBarScrimColor(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 784
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 785
    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 795
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 796
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 533
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateContentDescriptionFromTitle()V

    .line 534
    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 4

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "enabled":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eq v2, v3, :cond_0

    .line 558
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 559
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateContentDescriptionFromTitle()V

    .line 560
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateDummyView()V

    .line 561
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    .line 563
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 6

    .prologue
    .line 763
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move v1, p1

    .local v1, "visibility":I
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 765
    move v3, v1

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 766
    .local v2, "visible":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v3

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 767
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    move v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    .line 769
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v3

    move v4, v2

    if-eq v3, v4, :cond_1

    .line 770
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    move v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    .line 772
    :cond_1
    return-void

    .line 765
    .end local v2    # "visible":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method final updateScrimVisibility()V
    .locals 4

    .prologue
    .line 1228
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1229
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    add-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimsShown(Z)V

    .line 1231
    :cond_1
    return-void

    .line 1229
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
