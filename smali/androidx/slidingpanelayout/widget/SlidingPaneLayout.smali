.class public Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_COLOR:I = -0x33333334

.field private static final DEFAULT_OVERHANG_SIZE:I = 0x20

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SlidingPaneLayout"


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private mDisplayListReflectionLoaded:Z

.field final mDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mGetDisplayList:Ljava/lang/reflect/Method;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mPreservedOpenState:Z

.field private mRecreateDisplayList:Ljava/lang/reflect/Field;

.field private mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

.field mSlideOffset:F

.field mSlideRange:I

.field mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyle":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    move-object v5, v0

    const v6, -0x33333334

    iput v6, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 193
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 195
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 197
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 251
    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    move v4, v5

    .line 252
    .local v4, "density":F
    move-object v5, v0

    const/high16 v6, 0x42000000    # 32.0f

    move v7, v4

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 254
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    .line 256
    move-object v5, v0

    new-instance v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 257
    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 259
    move-object v5, v0

    move-object v6, v0

    const/high16 v7, 0x3f000000    # 0.5f

    new-instance v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    invoke-static {v6, v7, v8}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v6

    iput-object v6, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 260
    move-object v5, v0

    iget-object v5, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/high16 v6, 0x43c80000    # 400.0f

    move v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 261
    return-void
.end method

.method private closePane(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 853
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "pane":Landroid/view/View;
    move v2, p2

    .local v2, "initialVelocity":I
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v3, :cond_0

    move-object v3, v0

    const/4 v4, 0x0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 854
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 855
    const/4 v3, 0x1

    move v0, v3

    .line 857
    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .locals 14

    .prologue
    .line 962
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "mag":F
    move/from16 v3, p3

    .local v3, "fadeColor":I
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object v4, v8

    .line 964
    .local v4, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    move v8, v3

    if-eqz v8, :cond_3

    .line 965
    move v8, v3

    const/high16 v9, -0x1000000

    and-int/2addr v8, v9

    const/16 v9, 0x18

    ushr-int/lit8 v8, v8, 0x18

    move v5, v8

    .line 966
    .local v5, "baseAlpha":I
    move v8, v5

    int-to-float v8, v8

    move v9, v2

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v6, v8

    .line 967
    .local v6, "imag":I
    move v8, v6

    const/16 v9, 0x18

    shl-int/lit8 v8, v8, 0x18

    move v9, v3

    const v10, 0xffffff

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    move v7, v8

    .line 968
    .local v7, "color":I
    move-object v8, v4

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-nez v8, :cond_0

    .line 969
    move-object v8, v4

    new-instance v9, Landroid/graphics/Paint;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 971
    :cond_0
    move-object v8, v4

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move v11, v7

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v8

    .line 972
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLayerType()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 973
    move-object v8, v1

    const/4 v9, 0x2

    move-object v10, v4

    iget-object v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 975
    :cond_1
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    .line 976
    .line 984
    .end local v5    # "baseAlpha":I
    .end local v6    # "imag":I
    .end local v7    # "color":I
    :cond_2
    :goto_0
    return-void

    .line 976
    :cond_3
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLayerType()I

    move-result v8

    if-eqz v8, :cond_2

    .line 977
    move-object v8, v4

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-eqz v8, :cond_4

    .line 978
    move-object v8, v4

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v8

    .line 980
    :cond_4
    new-instance v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v1

    invoke-direct {v9, v10, v11}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)V

    move-object v5, v8

    .line 981
    .local v5, "dlr":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 982
    move-object v8, v0

    move-object v9, v5

    invoke-static {v8, v9}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private openPane(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 861
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "pane":Landroid/view/View;
    move v2, p2

    .local v2, "initialVelocity":I
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v3, :cond_0

    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 862
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 863
    const/4 v3, 0x1

    move v0, v3

    .line 865
    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private parallaxOtherViews(F)V
    .locals 15

    .prologue
    .line 1209
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move/from16 v1, p1

    .local v1, "slideOffset":F
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v11

    move v2, v11

    .line 1210
    .local v2, "isLayoutRtl":Z
    move-object v11, v0

    iget-object v11, v11, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object v3, v11

    .line 1211
    .local v3, "slideLp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object v11, v3

    iget-boolean v11, v11, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v11, :cond_2

    move v11, v2

    if-eqz v11, :cond_1

    move-object v11, v3

    iget v11, v11, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    :goto_0
    if-gtz v11, :cond_2

    const/4 v11, 0x1

    :goto_1
    move v4, v11

    .line 1213
    .local v4, "dimViews":Z
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v11

    move v5, v11

    .line 1214
    .local v5, "childCount":I
    const/4 v11, 0x0

    move v6, v11

    .local v6, "i":I
    :goto_2
    move v11, v6

    move v12, v5

    if-ge v11, v12, :cond_6

    .line 1215
    move-object v11, v0

    move v12, v6

    invoke-virtual {v11, v12}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v7, v11

    .line 1216
    .local v7, "v":Landroid/view/View;
    move-object v11, v7

    move-object v12, v0

    iget-object v12, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v11, v12, :cond_3

    .line 1214
    :cond_0
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1211
    .end local v4    # "dimViews":Z
    .end local v5    # "childCount":I
    .end local v6    # "i":I
    .end local v7    # "v":Landroid/view/View;
    :cond_1
    move-object v11, v3

    iget v11, v11, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 1218
    .restart local v4    # "dimViews":Z
    .restart local v5    # "childCount":I
    .restart local v6    # "i":I
    .restart local v7    # "v":Landroid/view/View;
    :cond_3
    const/high16 v11, 0x3f800000    # 1.0f

    move-object v12, v0

    iget v12, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float/2addr v11, v12

    move-object v12, v0

    iget v12, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    move v8, v11

    .line 1219
    .local v8, "oldOffset":I
    move-object v11, v0

    move v12, v1

    iput v12, v11, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxOffset:F

    .line 1220
    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v1

    sub-float/2addr v11, v12

    move-object v12, v0

    iget v12, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    move v9, v11

    .line 1221
    .local v9, "newOffset":I
    move v11, v8

    move v12, v9

    sub-int/2addr v11, v12

    move v10, v11

    .line 1223
    .local v10, "dx":I
    move-object v11, v7

    move v12, v2

    if-eqz v12, :cond_4

    move v12, v10

    neg-int v12, v12

    :goto_4
    invoke-virtual {v11, v12}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1225
    move v11, v4

    if-eqz v11, :cond_0

    .line 1226
    move-object v11, v0

    move-object v12, v7

    move v13, v2

    if-eqz v13, :cond_5

    move-object v13, v0

    iget v13, v13, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxOffset:F

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    :goto_5
    move-object v14, v0

    iget v14, v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    invoke-direct {v11, v12, v13, v14}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_3

    .line 1223
    :cond_4
    move v12, v10

    goto :goto_4

    .line 1226
    :cond_5
    const/high16 v13, 0x3f800000    # 1.0f

    move-object v14, v0

    iget v14, v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float/2addr v13, v14

    goto :goto_5

    .line 1230
    .end local v7    # "v":Landroid/view/View;
    .end local v8    # "oldOffset":I
    .end local v9    # "newOffset":I
    .end local v10    # "dx":I
    :cond_6
    return-void
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "v":Landroid/view/View;
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    const/4 v2, 0x1

    move v0, v2

    .line 415
    .end local v0    # "v":Landroid/view/View;
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    :goto_0
    return v0

    .line 407
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1

    .line 408
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 411
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 412
    .restart local v1    # "bg":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    if-eqz v2, :cond_3

    .line 413
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 415
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 19

    .prologue
    .line 1244
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object/from16 v1, p1

    .local v1, "v":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "checkV":Z
    move/from16 v3, p3

    .local v3, "dx":I
    move/from16 v4, p4

    .local v4, "x":I
    move/from16 v5, p5

    .local v5, "y":I
    move-object v12, v1

    instance-of v12, v12, Landroid/view/ViewGroup;

    if-eqz v12, :cond_1

    .line 1245
    move-object v12, v1

    check-cast v12, Landroid/view/ViewGroup;

    move-object v6, v12

    .line 1246
    .local v6, "group":Landroid/view/ViewGroup;
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getScrollX()I

    move-result v12

    move v7, v12

    .line 1247
    .local v7, "scrollX":I
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getScrollY()I

    move-result v12

    move v8, v12

    .line 1248
    .local v8, "scrollY":I
    move-object v12, v6

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    move v9, v12

    .line 1250
    .local v9, "count":I
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v10, v12

    .local v10, "i":I
    :goto_0
    move v12, v10

    if-ltz v12, :cond_1

    .line 1253
    move-object v12, v6

    move v13, v10

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v11, v12

    .line 1254
    .local v11, "child":Landroid/view/View;
    move v12, v4

    move v13, v7

    add-int/2addr v12, v13

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    if-lt v12, v13, :cond_0

    move v12, v4

    move v13, v7

    add-int/2addr v12, v13

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v13

    if-ge v12, v13, :cond_0

    move v12, v5

    move v13, v8

    add-int/2addr v12, v13

    move-object v13, v11

    .line 1255
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    if-lt v12, v13, :cond_0

    move v12, v5

    move v13, v8

    add-int/2addr v12, v13

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    if-ge v12, v13, :cond_0

    move-object v12, v0

    move-object v13, v11

    const/4 v14, 0x1

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v7

    add-int v16, v16, v17

    move-object/from16 v17, v11

    .line 1256
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v17, v5

    move/from16 v18, v8

    add-int v17, v17, v18

    move-object/from16 v18, v11

    .line 1257
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    .line 1256
    invoke-virtual/range {v12 .. v17}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1258
    const/4 v12, 0x1

    move v0, v12

    .line 1263
    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v6    # "group":Landroid/view/ViewGroup;
    .end local v7    # "scrollX":I
    .end local v8    # "scrollY":I
    .end local v9    # "count":I
    .end local v10    # "i":I
    .end local v11    # "child":Landroid/view/View;
    :goto_1
    return v0

    .line 1250
    .restart local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .restart local v6    # "group":Landroid/view/ViewGroup;
    .restart local v7    # "scrollX":I
    .restart local v8    # "scrollY":I
    .restart local v9    # "count":I
    .restart local v10    # "i":I
    .restart local v11    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 1263
    .end local v6    # "group":Landroid/view/ViewGroup;
    .end local v7    # "scrollX":I
    .end local v8    # "scrollY":I
    .end local v9    # "count":I
    .end local v10    # "i":I
    .end local v11    # "child":Landroid/view/View;
    :cond_1
    move v12, v2

    if-eqz v12, :cond_3

    move-object v12, v1

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v13

    if-eqz v13, :cond_2

    move v13, v3

    :goto_2
    invoke-virtual {v12, v13}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_3
    move v0, v12

    goto :goto_1

    :cond_2
    move v13, v3

    neg-int v13, v13

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public canSlide()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 920
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    move v0, v1

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 1288
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    return v0

    .restart local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public closePane()Z
    .locals 4

    .prologue
    .line 901
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    return v0
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 1097
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1098
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v1, :cond_0

    .line 1099
    move-object v1, v0

    iget-object v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->abort()V

    .line 1100
    .line 1105
    :goto_0
    return-void

    .line 1103
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1105
    :cond_1
    goto :goto_0
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "panel":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v2, :cond_0

    .line 339
    move-object v2, v0

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    .line 341
    :cond_0
    move-object v2, v0

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 342
    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "panel":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v2, :cond_0

    .line 332
    move-object v2, v0

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    .line 334
    :cond_0
    move-object v2, v0

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 335
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "panel":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v2, :cond_0

    .line 326
    move-object v2, v0

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-interface {v2, v3, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .line 328
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 15

    .prologue
    .line 1175
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object/from16 v1, p1

    .local v1, "c":Landroid/graphics/Canvas;
    move-object v10, v0

    move-object v11, v1

    invoke-super {v10, v11}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1176
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v10

    move v2, v10

    .line 1178
    .local v2, "isLayoutRtl":Z
    move v10, v2

    if-eqz v10, :cond_1

    .line 1179
    move-object v10, v0

    iget-object v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object v3, v10

    .line 1184
    .local v3, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    move-object v10, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    :goto_1
    move-object v4, v10

    .line 1185
    .local v4, "shadowView":Landroid/view/View;
    move-object v10, v4

    if-eqz v10, :cond_0

    move-object v10, v3

    if-nez v10, :cond_3

    .line 1187
    .line 1206
    :cond_0
    :goto_2
    return-void

    .line 1181
    .end local v3    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "shadowView":Landroid/view/View;
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object v3, v10

    .restart local v3    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1184
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 1190
    .restart local v4    # "shadowView":Landroid/view/View;
    :cond_3
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    move v5, v10

    .line 1191
    .local v5, "top":I
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    move v6, v10

    .line 1193
    .local v6, "bottom":I
    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    move v7, v10

    .line 1196
    .local v7, "shadowWidth":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1197
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    move v8, v10

    .line 1198
    .local v8, "left":I
    move v10, v8

    move v11, v7

    add-int/2addr v10, v11

    move v9, v10

    .line 1204
    .local v9, "right":I
    :goto_3
    move-object v10, v3

    move v11, v8

    move v12, v5

    move v13, v9

    move v14, v6

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1205
    move-object v10, v3

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1206
    goto :goto_2

    .line 1200
    .end local v8    # "left":I
    .end local v9    # "right":I
    :cond_4
    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    move v9, v10

    .line 1201
    .restart local v9    # "right":I
    move v10, v9

    move v11, v7

    sub-int/2addr v10, v11

    move v8, v10

    .restart local v8    # "left":I
    goto :goto_3
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 15

    .prologue
    .line 988
    move-object v1, p0

    .local v1, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object/from16 v2, p1

    .local v2, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v3, p2

    .local v3, "child":Landroid/view/View;
    move-wide/from16 v4, p3

    .local v4, "drawingTime":J
    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object v6, v9

    .line 990
    .local v6, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object v9, v2

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v9

    move v8, v9

    .line 992
    .local v8, "save":I
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v9, :cond_0

    move-object v9, v6

    iget-boolean v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v9, :cond_0

    move-object v9, v1

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 994
    move-object v9, v2

    move-object v10, v1

    iget-object v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v9

    .line 995
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 996
    move-object v9, v1

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    move-object v10, v1

    iget-object v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    move-object v11, v1

    iget-object v11, v11, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 1000
    :goto_0
    move-object v9, v2

    move-object v10, v1

    iget-object v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-result v9

    .line 1003
    :cond_0
    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-wide v12, v4

    invoke-super {v9, v10, v11, v12, v13}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    move v7, v9

    .line 1005
    .local v7, "result":Z
    move-object v9, v2

    move v10, v8

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1007
    move v9, v7

    move v1, v9

    .end local v1    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    return v1

    .line 998
    .end local v7    # "result":Z
    .restart local v1    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :cond_1
    move-object v9, v1

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    move-object v10, v1

    iget-object v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    move-object v11, v1

    iget-object v11, v11, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v9, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 1276
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    new-instance v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    .line 1293
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    new-instance v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 1281
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    new-instance v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    return-object v0

    .restart local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :cond_0
    new-instance v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getCoveredFadeColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, v0

    iget v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    move v0, v1

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    return v0
.end method

.method public getParallaxDistance()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, v0

    iget v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    move v0, v1

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    return v0
.end method

.method public getSliderFadeColor()I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, v0

    iget v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move v0, v1

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    return v0
.end method

.method invalidateChildRegion(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 1015
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 1016
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-object v4, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1017
    .line 1060
    :goto_0
    return-void

    .line 1020
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_4

    .line 1027
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDisplayListReflectionLoaded:Z

    if-nez v3, :cond_1

    .line 1029
    move-object v3, v0

    :try_start_0
    const-class v4, Landroid/view/View;

    const-string/jumbo v5, "getDisplayList"

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mGetDisplayList:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    .line 1036
    :goto_1
    move-object v3, v0

    :try_start_1
    const-class v4, Landroid/view/View;

    const-string/jumbo v5, "mRecreateDisplayList"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mRecreateDisplayList:Ljava/lang/reflect/Field;

    .line 1037
    move-object v3, v0

    iget-object v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mRecreateDisplayList:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1041
    .line 1042
    :goto_2
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDisplayListReflectionLoaded:Z

    .line 1044
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mGetDisplayList:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mRecreateDisplayList:Ljava/lang/reflect/Field;

    if-nez v3, :cond_3

    .line 1046
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1047
    goto :goto_0

    .line 1031
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1032
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v3, "SlidingPaneLayout"

    const-string/jumbo v4, "Couldn\'t fetch getDisplayList method; dimming won\'t work right."

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1

    .line 1038
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 1039
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v3, "SlidingPaneLayout"

    const-string/jumbo v4, "Couldn\'t fetch mRecreateDisplayList field; dimming will be slow."

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_2

    .line 1051
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :cond_3
    move-object v3, v0

    :try_start_2
    iget-object v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mRecreateDisplayList:Ljava/lang/reflect/Field;

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 1052
    move-object v3, v0

    iget-object v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mGetDisplayList:Ljava/lang/reflect/Method;

    move-object v4, v1

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 1055
    .line 1058
    :cond_4
    :goto_3
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    move-object v7, v1

    .line 1059
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 1058
    invoke-static {v3, v4, v5, v6, v7}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    .line 1060
    goto/16 :goto_0

    .line 1053
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 1054
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SlidingPaneLayout"

    const-string/jumbo v4, "Error refreshing display list state"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_3
.end method

.method isDimmed(Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 1267
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 1268
    const/4 v3, 0x0

    move v0, v3

    .line 1271
    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :goto_0
    return v0

    .line 1270
    .restart local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object v2, v3

    .line 1271
    .local v2, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-boolean v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method isLayoutRtlSupport()Z
    .locals 3

    .prologue
    .line 1617
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    return v0

    .restart local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 3

    .prologue
    .line 911
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    return v0

    .restart local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSlideable()Z
    .locals 2

    .prologue
    .line 930
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    move v0, v1

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 421
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 422
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v4, v0

    invoke-super {v4}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 427
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 429
    const/4 v4, 0x0

    move v1, v4

    .local v1, "i":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .local v2, "count":I
    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 430
    move-object v4, v0

    iget-object v4, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;

    move-object v3, v4

    .line 431
    .local v3, "dlr":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v3    # "dlr":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 434
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .prologue
    .line 754
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    move v2, v9

    .line 757
    .local v2, "action":I
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v9, :cond_0

    move v9, v2

    if-nez v9, :cond_0

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 759
    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v3, v9

    .line 760
    .local v3, "secondChild":Landroid/view/View;
    move-object v9, v3

    if-eqz v9, :cond_0

    .line 761
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object v11, v3

    move-object v12, v1

    .line 762
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    move-object v13, v1

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    .line 761
    invoke-virtual {v10, v11, v12, v13}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 766
    .end local v3    # "secondChild":Landroid/view/View;
    :cond_0
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v9, :cond_3

    move v9, v2

    if-eqz v9, :cond_3

    .line 767
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 768
    move-object v9, v0

    move-object v10, v1

    invoke-super {v9, v10}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    move v0, v9

    .line 809
    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :goto_1
    return v0

    .line 761
    .restart local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .restart local v3    # "secondChild":Landroid/view/View;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 771
    .end local v3    # "secondChild":Landroid/view/View;
    :cond_3
    move v9, v2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    move v9, v2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 772
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 773
    const/4 v9, 0x0

    move v0, v9

    goto :goto_1

    .line 776
    :cond_5
    const/4 v9, 0x0

    move v3, v9

    .line 778
    .local v3, "interceptTap":Z
    move v9, v2

    packed-switch v9, :pswitch_data_0

    .line 807
    :cond_6
    :goto_2
    :pswitch_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    move v4, v9

    .line 809
    .local v4, "interceptForDrag":Z
    move v9, v4

    if-nez v9, :cond_7

    move v9, v3

    if-eqz v9, :cond_8

    :cond_7
    const/4 v9, 0x1

    :goto_3
    move v0, v9

    goto :goto_1

    .line 780
    .end local v4    # "interceptForDrag":Z
    :pswitch_1
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 781
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    move v4, v9

    .line 782
    .local v4, "x":F
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move v5, v9

    .line 783
    .local v5, "y":F
    move-object v9, v0

    move v10, v4

    iput v10, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 784
    move-object v9, v0

    move v10, v5

    iput v10, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 786
    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object v10, v0

    iget-object v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move v11, v4

    float-to-int v11, v11

    move v12, v5

    float-to-int v12, v12

    invoke-virtual {v9, v10, v11, v12}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 787
    invoke-virtual {v9, v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 788
    const/4 v9, 0x1

    move v3, v9

    goto :goto_2

    .line 794
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_2
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    move v4, v9

    .line 795
    .restart local v4    # "x":F
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move v5, v9

    .line 796
    .restart local v5    # "y":F
    move v9, v4

    move-object v10, v0

    iget v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move v6, v9

    .line 797
    .local v6, "adx":F
    move v9, v5

    move-object v10, v0

    iget v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move v7, v9

    .line 798
    .local v7, "ady":F
    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v9

    move v8, v9

    .line 799
    .local v8, "slop":I
    move v9, v6

    move v10, v8

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    move v9, v7

    move v10, v6

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 800
    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 801
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 802
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_1

    .line 809
    .end local v5    # "y":F
    .end local v6    # "adx":F
    .end local v7    # "ady":F
    .end local v8    # "slop":I
    .local v4, "interceptForDrag":Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 778
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30

    .prologue
    .line 650
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move/from16 v3, p1

    .local v3, "changed":Z
    move/from16 v4, p2

    .local v4, "l":I
    move/from16 v5, p3

    .local v5, "t":I
    move/from16 v6, p4

    .local v6, "r":I
    move/from16 v7, p5

    .local v7, "b":I
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v25

    move/from16 v8, v25

    .line 651
    .local v8, "isLayoutRtl":Z
    move/from16 v25, v8

    if-eqz v25, :cond_1

    .line 652
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 656
    :goto_0
    move/from16 v25, v6

    move/from16 v26, v4

    sub-int v25, v25, v26

    move/from16 v9, v25

    .line 657
    .local v9, "width":I
    move/from16 v25, v8

    if-eqz v25, :cond_2

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v25

    :goto_1
    move/from16 v10, v25

    .line 658
    .local v10, "paddingStart":I
    move/from16 v25, v8

    if-eqz v25, :cond_3

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v25

    :goto_2
    move/from16 v11, v25

    .line 659
    .local v11, "paddingEnd":I
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v25

    move/from16 v12, v25

    .line 661
    .local v12, "paddingTop":I
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v25

    move/from16 v13, v25

    .line 662
    .local v13, "childCount":I
    move/from16 v25, v10

    move/from16 v14, v25

    .line 663
    .local v14, "xStart":I
    move/from16 v25, v14

    move/from16 v15, v25

    .line 665
    .local v15, "nextXStart":I
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 666
    move-object/from16 v25, v2

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    const/high16 v26, 0x3f800000    # 1.0f

    :goto_3
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 669
    :cond_0
    const/16 v25, 0x0

    move/from16 v16, v25

    .local v16, "i":I
    :goto_4
    move/from16 v25, v16

    move/from16 v26, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_b

    .line 670
    move-object/from16 v25, v2

    move/from16 v26, v16

    invoke-virtual/range {v25 .. v26}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v17, v25

    .line 672
    .local v17, "child":Landroid/view/View;
    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 673
    .line 669
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 654
    .end local v9    # "width":I
    .end local v10    # "paddingStart":I
    .end local v11    # "paddingEnd":I
    .end local v12    # "paddingTop":I
    .end local v13    # "childCount":I
    .end local v14    # "xStart":I
    .end local v15    # "nextXStart":I
    .end local v16    # "i":I
    .end local v17    # "child":Landroid/view/View;
    :cond_1
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    goto/16 :goto_0

    .line 657
    .restart local v9    # "width":I
    :cond_2
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v25

    goto/16 :goto_1

    .line 658
    .restart local v10    # "paddingStart":I
    :cond_3
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v25

    goto/16 :goto_2

    .line 666
    .restart local v11    # "paddingEnd":I
    .restart local v12    # "paddingTop":I
    .restart local v13    # "childCount":I
    .restart local v14    # "xStart":I
    .restart local v15    # "nextXStart":I
    :cond_4
    const/16 v26, 0x0

    goto :goto_3

    .line 676
    .restart local v16    # "i":I
    .restart local v17    # "child":Landroid/view/View;
    :cond_5
    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v18, v25

    .line 678
    .local v18, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object/from16 v25, v17

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    move/from16 v19, v25

    .line 679
    .local v19, "childWidth":I
    const/16 v25, 0x0

    move/from16 v20, v25

    .line 681
    .local v20, "offset":I
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 682
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v21, v25

    .line 683
    .local v21, "margin":I
    move/from16 v25, v15

    move/from16 v26, v9

    move/from16 v27, v11

    sub-int v26, v26, v27

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mOverhangSize:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v25

    move/from16 v26, v14

    sub-int v25, v25, v26

    move/from16 v26, v21

    sub-int v25, v25, v26

    move/from16 v22, v25

    .line 685
    .local v22, "range":I
    move-object/from16 v25, v2

    move/from16 v26, v22

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    .line 686
    move/from16 v25, v8

    if-eqz v25, :cond_6

    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v25, v0

    :goto_6
    move/from16 v23, v25

    .line 687
    .local v23, "lpMargin":I
    move-object/from16 v25, v18

    move/from16 v26, v14

    move/from16 v27, v23

    add-int v26, v26, v27

    move/from16 v27, v22

    add-int v26, v26, v27

    move/from16 v27, v19

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    add-int v26, v26, v27

    move/from16 v27, v9

    move/from16 v28, v11

    sub-int v27, v27, v28

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_7

    const/16 v26, 0x1

    :goto_7
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 688
    move/from16 v25, v22

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v24, v25

    .line 689
    .local v24, "pos":I
    move/from16 v25, v14

    move/from16 v26, v24

    move/from16 v27, v23

    add-int v26, v26, v27

    add-int v25, v25, v26

    move/from16 v14, v25

    .line 690
    move-object/from16 v25, v2

    move/from16 v26, v24

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 691
    .line 700
    .end local v21    # "margin":I
    .end local v22    # "range":I
    .end local v23    # "lpMargin":I
    .end local v24    # "pos":I
    :goto_8
    move/from16 v25, v8

    if-eqz v25, :cond_a

    .line 701
    move/from16 v25, v9

    move/from16 v26, v14

    sub-int v25, v25, v26

    move/from16 v26, v20

    add-int v25, v25, v26

    move/from16 v21, v25

    .line 702
    .local v21, "childRight":I
    move/from16 v25, v21

    move/from16 v26, v19

    sub-int v25, v25, v26

    move/from16 v22, v25

    .line 708
    .local v22, "childLeft":I
    :goto_9
    move/from16 v25, v12

    move/from16 v23, v25

    .line 709
    .local v23, "childTop":I
    move/from16 v25, v23

    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v24, v25

    .line 710
    .local v24, "childBottom":I
    move-object/from16 v25, v17

    move/from16 v26, v22

    move/from16 v27, v12

    move/from16 v28, v21

    move/from16 v29, v24

    invoke-virtual/range {v25 .. v29}, Landroid/view/View;->layout(IIII)V

    .line 712
    move/from16 v25, v15

    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v15, v25

    goto/16 :goto_5

    .line 686
    .end local v23    # "childTop":I
    .end local v24    # "childBottom":I
    .local v21, "margin":I
    .local v22, "range":I
    :cond_6
    move-object/from16 v25, v18

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    goto/16 :goto_6

    .line 687
    .local v23, "lpMargin":I
    :cond_7
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 691
    .end local v21    # "margin":I
    .end local v22    # "range":I
    .end local v23    # "lpMargin":I
    :cond_8
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 692
    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v20, v25

    .line 693
    move/from16 v25, v15

    move/from16 v14, v25

    goto/16 :goto_8

    .line 695
    :cond_9
    move/from16 v25, v15

    move/from16 v14, v25

    goto/16 :goto_8

    .line 704
    :cond_a
    move/from16 v25, v14

    move/from16 v26, v20

    sub-int v25, v25, v26

    move/from16 v22, v25

    .line 705
    .local v22, "childLeft":I
    move/from16 v25, v22

    move/from16 v26, v19

    add-int v25, v25, v26

    move/from16 v21, v25

    .local v21, "childRight":I
    goto/16 :goto_9

    .line 715
    .end local v17    # "child":Landroid/view/View;
    .end local v18    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v19    # "childWidth":I
    .end local v20    # "offset":I
    .end local v21    # "childRight":I
    .end local v22    # "childLeft":I
    :cond_b
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 v25, v0

    if-eqz v25, :cond_e

    .line 716
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 717
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 718
    move-object/from16 v25, v2

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 720
    :cond_c
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    .line 721
    move-object/from16 v25, v2

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v27, v0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v28, v0

    invoke-direct/range {v25 .. v28}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 729
    :cond_d
    move-object/from16 v25, v2

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 732
    :cond_e
    move-object/from16 v25, v2

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 733
    return-void

    .line 725
    :cond_f
    const/16 v25, 0x0

    move/from16 v16, v25

    :goto_a
    move/from16 v25, v16

    move/from16 v26, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 726
    move-object/from16 v25, v2

    move-object/from16 v26, v2

    move/from16 v27, v16

    invoke-virtual/range {v26 .. v27}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v28, v0

    invoke-direct/range {v25 .. v28}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 725
    add-int/lit8 v16, v16, 0x1

    goto :goto_a
.end method

.method protected onMeasure(II)V
    .locals 32

    .prologue
    .line 438
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move/from16 v3, p1

    .local v3, "widthMeasureSpec":I
    move/from16 v4, p2

    .local v4, "heightMeasureSpec":I
    move/from16 v26, v3

    invoke-static/range {v26 .. v26}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v26

    move/from16 v5, v26

    .line 439
    .local v5, "widthMode":I
    move/from16 v26, v3

    invoke-static/range {v26 .. v26}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    move/from16 v6, v26

    .line 440
    .local v6, "widthSize":I
    move/from16 v26, v4

    invoke-static/range {v26 .. v26}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v26

    move/from16 v7, v26

    .line 441
    .local v7, "heightMode":I
    move/from16 v26, v4

    invoke-static/range {v26 .. v26}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    move/from16 v8, v26

    .line 443
    .local v8, "heightSize":I
    move/from16 v26, v5

    const/high16 v27, 0x40000000    # 2.0f

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    .line 444
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 449
    move/from16 v26, v5

    const/high16 v27, -0x80000000

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 450
    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v5, v26

    .line 472
    :cond_0
    :goto_0
    const/16 v26, 0x0

    move/from16 v9, v26

    .line 473
    .local v9, "layoutHeight":I
    const/16 v26, 0x0

    move/from16 v10, v26

    .line 474
    .local v10, "maxLayoutHeight":I
    move/from16 v26, v7

    sparse-switch v26, :sswitch_data_0

    .line 483
    :goto_1
    const/16 v26, 0x0

    move/from16 v11, v26

    .line 484
    .local v11, "weightSum":F
    const/16 v26, 0x0

    move/from16 v12, v26

    .line 485
    .local v12, "canSlide":Z
    move/from16 v26, v6

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v13, v26

    .line 486
    .local v13, "widthAvailable":I
    move/from16 v26, v13

    move/from16 v14, v26

    .line 487
    .local v14, "widthRemaining":I
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v26

    move/from16 v15, v26

    .line 489
    .local v15, "childCount":I
    move/from16 v26, v15

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1

    .line 490
    const-string/jumbo v26, "SlidingPaneLayout"

    const-string/jumbo v27, "onMeasure: More than two child views are not supported."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    .line 494
    :cond_1
    move-object/from16 v26, v2

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 498
    const/16 v26, 0x0

    move/from16 v16, v26

    .local v16, "i":I
    :goto_2
    move/from16 v26, v16

    move/from16 v27, v15

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    .line 499
    move-object/from16 v26, v2

    move/from16 v27, v16

    invoke-virtual/range {v26 .. v27}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v17, v26

    .line 500
    .local v17, "child":Landroid/view/View;
    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v18, v26

    .line 502
    .local v18, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 503
    move-object/from16 v26, v18

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 504
    .line 498
    :cond_2
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 451
    .end local v9    # "layoutHeight":I
    .end local v10    # "maxLayoutHeight":I
    .end local v11    # "weightSum":F
    .end local v12    # "canSlide":Z
    .end local v13    # "widthAvailable":I
    .end local v14    # "widthRemaining":I
    .end local v15    # "childCount":I
    .end local v16    # "i":I
    .end local v17    # "child":Landroid/view/View;
    .end local v18    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    :cond_3
    move/from16 v26, v5

    if-nez v26, :cond_0

    .line 452
    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v5, v26

    .line 453
    const/16 v26, 0x12c

    move/from16 v6, v26

    goto/16 :goto_0

    .line 456
    :cond_4
    new-instance v26, Ljava/lang/IllegalStateException;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    const-string/jumbo v28, "Width must have an exact value or MATCH_PARENT"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 458
    :cond_5
    move/from16 v26, v7

    if-nez v26, :cond_0

    .line 459
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 463
    move/from16 v26, v7

    if-nez v26, :cond_0

    .line 464
    const/high16 v26, -0x80000000

    move/from16 v7, v26

    .line 465
    const/16 v26, 0x12c

    move/from16 v8, v26

    goto/16 :goto_0

    .line 468
    :cond_6
    new-instance v26, Ljava/lang/IllegalStateException;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    const-string/jumbo v28, "Height must not be UNSPECIFIED"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 476
    .restart local v9    # "layoutHeight":I
    .restart local v10    # "maxLayoutHeight":I
    :sswitch_0
    move/from16 v26, v8

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v30, v26

    move/from16 v26, v30

    move/from16 v27, v30

    move/from16 v10, v27

    move/from16 v9, v26

    .line 477
    goto/16 :goto_1

    .line 479
    :sswitch_1
    move/from16 v26, v8

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v10, v26

    goto/16 :goto_1

    .line 507
    .restart local v11    # "weightSum":F
    .restart local v12    # "canSlide":Z
    .restart local v13    # "widthAvailable":I
    .restart local v14    # "widthRemaining":I
    .restart local v15    # "childCount":I
    .restart local v16    # "i":I
    .restart local v17    # "child":Landroid/view/View;
    .restart local v18    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    :cond_7
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_8

    .line 508
    move/from16 v26, v11

    move-object/from16 v27, v18

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v11, v26

    .line 512
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    if-nez v26, :cond_8

    goto/16 :goto_3

    .line 516
    :cond_8
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    move-object/from16 v27, v18

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v20, v26

    .line 517
    .local v20, "horizontalMargin":I
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 518
    move/from16 v26, v13

    move/from16 v27, v20

    sub-int v26, v26, v27

    const/high16 v27, -0x80000000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v19, v26

    .line 528
    .local v19, "childWidthSpec":I
    :goto_4
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 529
    move/from16 v26, v10

    const/high16 v27, -0x80000000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v21, v26

    .line 536
    .local v21, "childHeightSpec":I
    :goto_5
    move-object/from16 v26, v17

    move/from16 v27, v19

    move/from16 v28, v21

    invoke-virtual/range {v26 .. v28}, Landroid/view/View;->measure(II)V

    .line 537
    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move/from16 v22, v26

    .line 538
    .local v22, "childWidth":I
    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    move/from16 v23, v26

    .line 540
    .local v23, "childHeight":I
    move/from16 v26, v7

    const/high16 v27, -0x80000000

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    move/from16 v26, v23

    move/from16 v27, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_9

    .line 541
    move/from16 v26, v23

    move/from16 v27, v10

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v26

    move/from16 v9, v26

    .line 544
    :cond_9
    move/from16 v26, v14

    move/from16 v27, v22

    sub-int v26, v26, v27

    move/from16 v14, v26

    .line 545
    move/from16 v26, v12

    move-object/from16 v27, v18

    move/from16 v28, v14

    if-gez v28, :cond_e

    const/16 v28, 0x1

    :goto_6
    move-object/from16 v30, v27

    move/from16 v31, v28

    move/from16 v27, v31

    move-object/from16 v28, v30

    move/from16 v29, v31

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    or-int v26, v26, v27

    move/from16 v12, v26

    .line 546
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 547
    move-object/from16 v26, v2

    move-object/from16 v27, v17

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    goto/16 :goto_3

    .line 520
    .end local v19    # "childWidthSpec":I
    .end local v21    # "childHeightSpec":I
    .end local v22    # "childWidth":I
    .end local v23    # "childHeight":I
    :cond_a
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 521
    move/from16 v26, v13

    move/from16 v27, v20

    sub-int v26, v26, v27

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v19, v26

    .restart local v19    # "childWidthSpec":I
    goto/16 :goto_4

    .line 524
    .end local v19    # "childWidthSpec":I
    :cond_b
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v19, v26

    .restart local v19    # "childWidthSpec":I
    goto/16 :goto_4

    .line 530
    :cond_c
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 531
    move/from16 v26, v10

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v21, v26

    .restart local v21    # "childHeightSpec":I
    goto/16 :goto_5

    .line 533
    .end local v21    # "childHeightSpec":I
    :cond_d
    move-object/from16 v26, v18

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v21, v26

    .restart local v21    # "childHeightSpec":I
    goto/16 :goto_5

    .line 545
    .restart local v22    # "childWidth":I
    .restart local v23    # "childHeight":I
    :cond_e
    const/16 v28, 0x0

    goto/16 :goto_6

    .line 552
    .end local v17    # "child":Landroid/view/View;
    .end local v18    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v19    # "childWidthSpec":I
    .end local v20    # "horizontalMargin":I
    .end local v21    # "childHeightSpec":I
    .end local v22    # "childWidth":I
    .end local v23    # "childHeight":I
    :cond_f
    move/from16 v26, v12

    if-nez v26, :cond_10

    move/from16 v26, v11

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_20

    .line 553
    :cond_10
    move/from16 v26, v13

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mOverhangSize:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v16, v26

    .line 555
    .local v16, "fixedPanelWidthLimit":I
    const/16 v26, 0x0

    move/from16 v17, v26

    .local v17, "i":I
    :goto_7
    move/from16 v26, v17

    move/from16 v27, v15

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_20

    .line 556
    move-object/from16 v26, v2

    move/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v18, v26

    .line 558
    .local v18, "child":Landroid/view/View;
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    .line 559
    .line 555
    :cond_11
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 562
    :cond_12
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v19, v26

    .line 564
    .local v19, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    .line 565
    goto :goto_8

    .line 568
    :cond_13
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    if-nez v26, :cond_15

    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_15

    const/16 v26, 0x1

    :goto_9
    move/from16 v20, v26

    .line 569
    .local v20, "skippedFirstPass":Z
    move/from16 v26, v20

    if-eqz v26, :cond_16

    const/16 v26, 0x0

    :goto_a
    move/from16 v21, v26

    .line 570
    .local v21, "measuredWidth":I
    move/from16 v26, v12

    if-eqz v26, :cond_1a

    move-object/from16 v26, v18

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_1a

    .line 571
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    if-gez v26, :cond_11

    move/from16 v26, v21

    move/from16 v27, v16

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_14

    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_11

    .line 575
    :cond_14
    move/from16 v26, v20

    if-eqz v26, :cond_19

    .line 578
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    .line 579
    move/from16 v26, v10

    const/high16 v27, -0x80000000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v22, v26

    .line 592
    .local v22, "childHeightSpec":I
    :goto_b
    move/from16 v26, v16

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v23, v26

    .line 594
    .local v23, "childWidthSpec":I
    move-object/from16 v26, v18

    move/from16 v27, v23

    move/from16 v28, v22

    invoke-virtual/range {v26 .. v28}, Landroid/view/View;->measure(II)V

    .line 595
    goto/16 :goto_8

    .line 568
    .end local v20    # "skippedFirstPass":Z
    .end local v21    # "measuredWidth":I
    .end local v22    # "childHeightSpec":I
    .end local v23    # "childWidthSpec":I
    :cond_15
    const/16 v26, 0x0

    goto :goto_9

    .line 569
    .restart local v20    # "skippedFirstPass":Z
    :cond_16
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    goto :goto_a

    .line 581
    .restart local v21    # "measuredWidth":I
    :cond_17
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    .line 582
    move/from16 v26, v10

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v22, v26

    .restart local v22    # "childHeightSpec":I
    goto :goto_b

    .line 585
    .end local v22    # "childHeightSpec":I
    :cond_18
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v22, v26

    .restart local v22    # "childHeightSpec":I
    goto :goto_b

    .line 589
    .end local v22    # "childHeightSpec":I
    :cond_19
    move-object/from16 v26, v18

    .line 590
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    const/high16 v27, 0x40000000    # 2.0f

    .line 589
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v22, v26

    .restart local v22    # "childHeightSpec":I
    goto :goto_b

    .line 596
    .end local v22    # "childHeightSpec":I
    :cond_1a
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_11

    .line 598
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    if-nez v26, :cond_1e

    .line 600
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c

    .line 601
    move/from16 v26, v10

    const/high16 v27, -0x80000000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v22, v26

    .line 615
    .restart local v22    # "childHeightSpec":I
    :goto_c
    move/from16 v26, v12

    if-eqz v26, :cond_1f

    .line 617
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v23, v26

    .line 618
    .local v23, "horizontalMargin":I
    move/from16 v26, v13

    move/from16 v27, v23

    sub-int v26, v26, v27

    move/from16 v24, v26

    .line 619
    .local v24, "newWidth":I
    move/from16 v26, v24

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v25, v26

    .line 621
    .local v25, "childWidthSpec":I
    move/from16 v26, v21

    move/from16 v27, v24

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1b

    .line 622
    move-object/from16 v26, v18

    move/from16 v27, v25

    move/from16 v28, v22

    invoke-virtual/range {v26 .. v28}, Landroid/view/View;->measure(II)V

    .line 624
    :cond_1b
    goto/16 :goto_8

    .line 603
    .end local v22    # "childHeightSpec":I
    .end local v23    # "horizontalMargin":I
    .end local v24    # "newWidth":I
    .end local v25    # "childWidthSpec":I
    :cond_1c
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    .line 604
    move/from16 v26, v10

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v22, v26

    .restart local v22    # "childHeightSpec":I
    goto :goto_c

    .line 607
    .end local v22    # "childHeightSpec":I
    :cond_1d
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v22, v26

    .restart local v22    # "childHeightSpec":I
    goto :goto_c

    .line 611
    .end local v22    # "childHeightSpec":I
    :cond_1e
    move-object/from16 v26, v18

    .line 612
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    const/high16 v27, 0x40000000    # 2.0f

    .line 611
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v22, v26

    .restart local v22    # "childHeightSpec":I
    goto :goto_c

    .line 626
    :cond_1f
    const/16 v26, 0x0

    move/from16 v27, v14

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v23, v26

    .line 627
    .local v23, "widthToDistribute":I
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    move/from16 v27, v23

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v27, v11

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v24, v26

    .line 628
    .local v24, "addedWidth":I
    move/from16 v26, v21

    move/from16 v27, v24

    add-int v26, v26, v27

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v25, v26

    .line 630
    .restart local v25    # "childWidthSpec":I
    move-object/from16 v26, v18

    move/from16 v27, v25

    move/from16 v28, v22

    invoke-virtual/range {v26 .. v28}, Landroid/view/View;->measure(II)V

    goto/16 :goto_8

    .line 636
    .end local v16    # "fixedPanelWidthLimit":I
    .end local v17    # "i":I
    .end local v18    # "child":Landroid/view/View;
    .end local v19    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v20    # "skippedFirstPass":Z
    .end local v21    # "measuredWidth":I
    .end local v22    # "childHeightSpec":I
    .end local v23    # "widthToDistribute":I
    .end local v24    # "addedWidth":I
    .end local v25    # "childWidthSpec":I
    :cond_20
    move/from16 v26, v6

    move/from16 v16, v26

    .line 637
    .local v16, "measuredWidth":I
    move/from16 v26, v9

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v27

    add-int v26, v26, v27

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v17, v26

    .line 639
    .local v17, "measuredHeight":I
    move-object/from16 v26, v2

    move/from16 v27, v16

    move/from16 v28, v17

    invoke-virtual/range {v26 .. v28}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    .line 640
    move-object/from16 v26, v2

    move/from16 v27, v12

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 642
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v26

    if-eqz v26, :cond_21

    move/from16 v26, v12

    if-nez v26, :cond_21

    .line 644
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroidx/customview/widget/ViewDragHelper;->abort()V

    .line 646
    :cond_21
    return-void

    .line 474
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method onPanelDragged(I)V
    .locals 13

    .prologue
    .line 934
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move v1, p1

    .local v1, "newLeft":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-nez v9, :cond_0

    .line 936
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 937
    .line 959
    :goto_0
    return-void

    .line 939
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v9

    move v2, v9

    .line 940
    .local v2, "isLayoutRtl":Z
    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object v3, v9

    .line 942
    .local v3, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    move v4, v9

    .line 943
    .local v4, "childWidth":I
    move v9, v2

    if-eqz v9, :cond_3

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v9

    move v10, v1

    sub-int/2addr v9, v10

    move v10, v4

    sub-int/2addr v9, v10

    :goto_1
    move v5, v9

    .line 945
    .local v5, "newStart":I
    move v9, v2

    if-eqz v9, :cond_4

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v9

    :goto_2
    move v6, v9

    .line 946
    .local v6, "paddingStart":I
    move v9, v2

    if-eqz v9, :cond_5

    move-object v9, v3

    iget v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    :goto_3
    move v7, v9

    .line 947
    .local v7, "lpMargin":I
    move v9, v6

    move v10, v7

    add-int/2addr v9, v10

    move v8, v9

    .line 949
    .local v8, "startBound":I
    move-object v9, v0

    move v10, v5

    move v11, v8

    sub-int/2addr v10, v11

    int-to-float v10, v10

    move-object v11, v0

    iget v11, v11, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 951
    move-object v9, v0

    iget v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v9, :cond_1

    .line 952
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {v9, v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 955
    :cond_1
    move-object v9, v3

    iget-boolean v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v9, :cond_2

    .line 956
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object v11, v0

    iget v11, v11, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    move-object v12, v0

    iget v12, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {v9, v10, v11, v12}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 958
    :cond_2
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 959
    goto :goto_0

    .line 943
    .end local v5    # "newStart":I
    .end local v6    # "paddingStart":I
    .end local v7    # "lpMargin":I
    .end local v8    # "startBound":I
    :cond_3
    move v9, v1

    goto :goto_1

    .line 945
    .restart local v5    # "newStart":I
    :cond_4
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v9

    goto :goto_2

    .line 946
    .restart local v6    # "paddingStart":I
    :cond_5
    move-object v9, v3

    iget v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 1308
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v3, v1

    instance-of v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    if-nez v3, :cond_0

    .line 1309
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1310
    .line 1322
    :goto_0
    return-void

    .line 1313
    :cond_0
    move-object v3, v1

    check-cast v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    move-object v2, v3

    .line 1314
    .local v2, "ss":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1316
    move-object v3, v2

    iget-boolean v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v3, :cond_1

    .line 1317
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane()Z

    move-result v3

    .line 1321
    :goto_1
    move-object v3, v0

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v4, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 1322
    goto :goto_0

    .line 1319
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane()Z

    move-result v3

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 1298
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v3, v0

    invoke-super {v3}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 1300
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 1301
    .local v2, "ss":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    move-result v4

    :goto_0
    iput-boolean v4, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    .line 1303
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    return-object v0

    .line 1301
    .restart local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .prologue
    .line 737
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
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

    invoke-super {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 739
    move v5, v1

    move v6, v3

    if-eq v5, v6, :cond_0

    .line 740
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 742
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    .line 814
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v8, :cond_0

    .line 815
    move-object v8, v0

    move-object v9, v1

    invoke-super {v8, v9}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    move v0, v8

    .line 849
    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :goto_0
    return v0

    .line 818
    .restart local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 820
    const/4 v8, 0x1

    move v2, v8

    .line 822
    .local v2, "wantTouchEvents":Z
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 849
    :cond_1
    :goto_1
    move v8, v2

    move v0, v8

    goto :goto_0

    .line 824
    :pswitch_0
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move v3, v8

    .line 825
    .local v3, "x":F
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    move v4, v8

    .line 826
    .local v4, "y":F
    move-object v8, v0

    move v9, v3

    iput v9, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 827
    move-object v8, v0

    move v9, v4

    iput v9, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 828
    goto :goto_1

    .line 832
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_1
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 833
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move v3, v8

    .line 834
    .restart local v3    # "x":F
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    move v4, v8

    .line 835
    .restart local v4    # "y":F
    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float/2addr v8, v9

    move v5, v8

    .line 836
    .local v5, "dx":F
    move v8, v4

    move-object v9, v0

    iget v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float/2addr v8, v9

    move v6, v8

    .line 837
    .local v6, "dy":F
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v8

    move v7, v8

    .line 838
    .local v7, "slop":I
    move v8, v5

    move v9, v5

    mul-float/2addr v8, v9

    move v9, v6

    move v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v9, v7

    move v10, v7

    mul-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move v10, v3

    float-to-int v10, v10

    move v11, v4

    float-to-int v11, v11

    .line 839
    invoke-virtual {v8, v9, v10, v11}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 841
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v8

    .line 842
    goto :goto_1

    .line 822
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public openPane()Z
    .locals 4

    .prologue
    .line 883
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 746
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, p2

    .local v2, "focused":Landroid/view/View;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 747
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v3, :cond_0

    .line 748
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 750
    :cond_0
    return-void

    .line 748
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method setAllChildrenVisible()V
    .locals 6

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    const/4 v4, 0x0

    move v1, v4

    .local v1, "i":I
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v4

    move v2, v4

    .local v2, "childCount":I
    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 392
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 393
    .local v3, "child":Landroid/view/View;
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 394
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 391
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    .line 310
    return-void
.end method

.method public setPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 4
    .param p1    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "listener":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    .line 322
    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move v1, p1

    .local v1, "parallaxBy":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    .line 272
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->requestLayout()V

    .line 273
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1116
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1117
    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1126
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1127
    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1136
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1137
    return-void
.end method

.method public setShadowResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1150
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1151
    return-void
.end method

.method public setShadowResourceLeft(I)V
    .locals 5

    .prologue
    .line 1160
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1161
    return-void
.end method

.method public setShadowResourceRight(I)V
    .locals 5

    .prologue
    .line 1170
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    .line 1171
    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 292
    return-void
.end method

.method public smoothSlideClosed()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 891
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane()Z

    move-result v1

    .line 892
    return-void
.end method

.method public smoothSlideOpen()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane()Z

    move-result v1

    .line 874
    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 12

    .prologue
    .line 1069
    move-object v0, p0

    .local v0, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move v1, p1

    .local v1, "slideOffset":F
    move v2, p2

    .local v2, "velocity":I
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v8, :cond_0

    .line 1071
    const/4 v8, 0x0

    move v0, v8

    .line 1092
    .end local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :goto_0
    return v0

    .line 1074
    .restart local v0    # "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v8

    move v3, v8

    .line 1075
    .local v3, "isLayoutRtl":Z
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object v4, v8

    .line 1078
    .local v4, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move v8, v3

    if-eqz v8, :cond_1

    .line 1079
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    move v6, v8

    .line 1080
    .local v6, "startBound":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move v7, v8

    .line 1081
    .local v7, "childWidth":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v8

    int-to-float v8, v8

    move v9, v6

    int-to-float v9, v9

    move v10, v1

    move-object v11, v0

    iget v11, v11, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v10, v7

    int-to-float v10, v10

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v8, v8

    move v5, v8

    .line 1087
    .end local v7    # "childWidth":I
    .local v5, "x":I
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object v9, v0

    iget-object v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move v10, v5

    move-object v11, v0

    iget-object v11, v11, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1088
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 1089
    move-object v8, v0

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1090
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 1083
    .end local v5    # "x":I
    .end local v6    # "startBound":I
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v8

    move-object v9, v4

    iget v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    move v6, v8

    .line 1084
    .restart local v6    # "startBound":I
    move v8, v6

    int-to-float v8, v8

    move v9, v1

    move-object v10, v0

    iget v10, v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    move v5, v8

    .restart local v5    # "x":I
    goto :goto_1

    .line 1092
    :cond_2
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 24

    .prologue
    .line 345
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object/from16 v3, p1

    .local v3, "panel":Landroid/view/View;
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v21

    move/from16 v4, v21

    .line 346
    .local v4, "isLayoutRtl":Z
    move/from16 v21, v4

    if-eqz v21, :cond_1

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v21

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v22

    sub-int v21, v21, v22

    :goto_0
    move/from16 v5, v21

    .line 347
    .local v5, "startBound":I
    move/from16 v21, v4

    if-eqz v21, :cond_2

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v21

    :goto_1
    move/from16 v6, v21

    .line 348
    .local v6, "endBound":I
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v21

    move/from16 v7, v21

    .line 349
    .local v7, "topBound":I
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getHeight()I

    move-result v21

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v8, v21

    .line 354
    .local v8, "bottomBound":I
    move-object/from16 v21, v3

    if-eqz v21, :cond_3

    move-object/from16 v21, v3

    invoke-static/range {v21 .. v21}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 355
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v21

    move/from16 v9, v21

    .line 356
    .local v9, "left":I
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getRight()I

    move-result v21

    move/from16 v10, v21

    .line 357
    .local v10, "right":I
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v21

    move/from16 v11, v21

    .line 358
    .local v11, "top":I
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getBottom()I

    move-result v21

    move/from16 v12, v21

    .line 363
    .local v12, "bottom":I
    :goto_2
    const/16 v21, 0x0

    move/from16 v13, v21

    .local v13, "i":I
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v21

    move/from16 v14, v21

    .local v14, "childCount":I
    :goto_3
    move/from16 v21, v13

    move/from16 v22, v14

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 364
    move-object/from16 v21, v2

    move/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v15, v21

    .line 366
    .local v15, "child":Landroid/view/View;
    move-object/from16 v21, v15

    move-object/from16 v22, v3

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 368
    .line 388
    .end local v15    # "child":Landroid/view/View;
    :cond_0
    return-void

    .line 346
    .end local v5    # "startBound":I
    .end local v6    # "endBound":I
    .end local v7    # "topBound":I
    .end local v8    # "bottomBound":I
    .end local v9    # "left":I
    .end local v10    # "right":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v13    # "i":I
    .end local v14    # "childCount":I
    :cond_1
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v21

    goto/16 :goto_0

    .line 347
    .restart local v5    # "startBound":I
    :cond_2
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v21

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v22

    sub-int v21, v21, v22

    goto/16 :goto_1

    .line 360
    .restart local v6    # "endBound":I
    .restart local v7    # "topBound":I
    .restart local v8    # "bottomBound":I
    :cond_3
    const/16 v21, 0x0

    move/from16 v23, v21

    move/from16 v21, v23

    move/from16 v22, v23

    move/from16 v12, v22

    .restart local v12    # "bottom":I
    move/from16 v23, v21

    move/from16 v21, v23

    move/from16 v22, v23

    move/from16 v11, v22

    .restart local v11    # "top":I
    move/from16 v23, v21

    move/from16 v21, v23

    move/from16 v22, v23

    move/from16 v10, v22

    .restart local v10    # "right":I
    move/from16 v9, v21

    .restart local v9    # "left":I
    goto :goto_2

    .line 369
    .restart local v13    # "i":I
    .restart local v14    # "childCount":I
    .restart local v15    # "child":Landroid/view/View;
    :cond_4
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 370
    .line 363
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 373
    :cond_5
    move/from16 v21, v4

    if-eqz v21, :cond_6

    move/from16 v21, v6

    :goto_5
    move-object/from16 v22, v15

    .line 374
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v22

    .line 373
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v16, v21

    .line 375
    .local v16, "clampedChildLeft":I
    move/from16 v21, v7

    move-object/from16 v22, v15

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v17, v21

    .line 376
    .local v17, "clampedChildTop":I
    move/from16 v21, v4

    if-eqz v21, :cond_7

    move/from16 v21, v5

    :goto_6
    move-object/from16 v22, v15

    .line 377
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v22

    .line 376
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v18, v21

    .line 378
    .local v18, "clampedChildRight":I
    move/from16 v21, v8

    move-object/from16 v22, v15

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v19, v21

    .line 380
    .local v19, "clampedChildBottom":I
    move/from16 v21, v16

    move/from16 v22, v9

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_8

    move/from16 v21, v17

    move/from16 v22, v11

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_8

    move/from16 v21, v18

    move/from16 v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_8

    move/from16 v21, v19

    move/from16 v22, v12

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_8

    .line 382
    const/16 v21, 0x4

    move/from16 v20, v21

    .line 386
    .local v20, "vis":I
    :goto_7
    move-object/from16 v21, v15

    move/from16 v22, v20

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 373
    .end local v16    # "clampedChildLeft":I
    .end local v17    # "clampedChildTop":I
    .end local v18    # "clampedChildRight":I
    .end local v19    # "clampedChildBottom":I
    .end local v20    # "vis":I
    :cond_6
    move/from16 v21, v5

    goto :goto_5

    .line 376
    .restart local v16    # "clampedChildLeft":I
    .restart local v17    # "clampedChildTop":I
    :cond_7
    move/from16 v21, v6

    goto :goto_6

    .line 384
    .restart local v18    # "clampedChildRight":I
    .restart local v19    # "clampedChildBottom":I
    :cond_8
    const/16 v21, 0x0

    move/from16 v20, v21

    .restart local v20    # "vis":I
    goto :goto_7
.end method
