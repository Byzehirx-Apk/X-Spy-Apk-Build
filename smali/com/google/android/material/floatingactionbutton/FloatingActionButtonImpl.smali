.class Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$DisabledElevationAnimation;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ResetElevationAnimation;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    }
.end annotation


# static fields
.field static final ANIM_STATE_HIDING:I = 0x1

.field static final ANIM_STATE_NONE:I = 0x0

.field static final ANIM_STATE_SHOWING:I = 0x2

.field static final ELEVATION_ANIM_DELAY:J = 0x64L

.field static final ELEVATION_ANIM_DURATION:J = 0x64L

.field static final ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field static final EMPTY_STATE_SET:[I

.field static final ENABLED_STATE_SET:[I

.field static final FOCUSED_ENABLED_STATE_SET:[I

.field private static final HIDE_ICON_SCALE:F = 0.0f

.field private static final HIDE_OPACITY:F = 0.0f

.field private static final HIDE_SCALE:F = 0.0f

.field static final HOVERED_ENABLED_STATE_SET:[I

.field static final HOVERED_FOCUSED_ENABLED_STATE_SET:[I

.field static final PRESSED_ENABLED_STATE_SET:[I

.field private static final SHOW_ICON_SCALE:F = 1.0f

.field private static final SHOW_OPACITY:F = 1.0f

.field private static final SHOW_SCALE:F = 1.0f


# instance fields
.field animState:I

.field borderDrawable:Lcom/google/android/material/internal/CircularBorderDrawable;

.field contentBackground:Landroid/graphics/drawable/Drawable;

.field currentAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private defaultHideMotionSpec:Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private defaultShowMotionSpec:Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field elevation:F

.field private hideListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field hoveredFocusedTranslationZ:F

.field imageMatrixScale:F

.field maxImageSize:I

.field private preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field pressedTranslationZ:F

.field rippleDrawable:Landroid/graphics/drawable/Drawable;

.field private rotation:F

.field shadowDrawable:Lcom/google/android/material/shadow/ShadowDrawableWrapper;

.field final shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

.field shapeDrawable:Landroid/graphics/drawable/Drawable;

.field private showListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field showMotionSpec:Lcom/google/android/material/animation/MotionSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

.field private final tmpMatrix:Landroid/graphics/Matrix;

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF1:Landroid/graphics/RectF;

.field private final tmpRectF2:Landroid/graphics/RectF;

.field final view:Lcom/google/android/material/internal/VisibilityAwareImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 62
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    .line 116
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->HOVERED_ENABLED_STATE_SET:[I

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101009e

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ENABLED_STATE_SET:[I

    .line 126
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    return-void

    .line 113
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 116
    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    .line 119
    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    .line 122
    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method constructor <init>(Lcom/google/android/material/internal/VisibilityAwareImageButton;Lcom/google/android/material/shadow/ShadowViewDelegate;)V
    .locals 10

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, p1

    .local v1, "view":Lcom/google/android/material/internal/VisibilityAwareImageButton;
    move-object v2, p2

    .local v2, "shadowViewDelegate":Lcom/google/android/material/shadow/ShadowViewDelegate;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 78
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    .line 102
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->imageMatrixScale:F

    .line 131
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRect:Landroid/graphics/Rect;

    .line 132
    move-object v3, v0

    new-instance v4, Landroid/graphics/RectF;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRectF1:Landroid/graphics/RectF;

    .line 133
    move-object v3, v0

    new-instance v4, Landroid/graphics/RectF;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRectF2:Landroid/graphics/RectF;

    .line 134
    move-object v3, v0

    new-instance v4, Landroid/graphics/Matrix;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpMatrix:Landroid/graphics/Matrix;

    .line 139
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    .line 140
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    .line 142
    move-object v3, v0

    new-instance v4, Lcom/google/android/material/internal/StateListAnimator;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Lcom/google/android/material/internal/StateListAnimator;-><init>()V

    iput-object v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    .line 145
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    sget-object v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    move-object v5, v0

    new-instance v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 147
    invoke-direct {v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 145
    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 148
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    sget-object v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    move-object v5, v0

    new-instance v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 150
    invoke-direct {v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 148
    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 151
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    sget-object v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    move-object v5, v0

    new-instance v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 153
    invoke-direct {v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 151
    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 154
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    sget-object v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->HOVERED_ENABLED_STATE_SET:[I

    move-object v5, v0

    new-instance v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 156
    invoke-direct {v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 154
    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 158
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    sget-object v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ENABLED_STATE_SET:[I

    move-object v5, v0

    new-instance v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ResetElevationAnimation;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ResetElevationAnimation;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 159
    invoke-direct {v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 158
    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 161
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    sget-object v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    move-object v5, v0

    new-instance v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$DisabledElevationAnimation;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$DisabledElevationAnimation;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    .line 162
    invoke-direct {v5, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createElevationAnimator(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 161
    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/internal/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 164
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v4}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getRotation()F

    move-result v4

    iput v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    .line 165
    return-void
.end method

.method private calculateImageMatrixFromScale(FLandroid/graphics/Matrix;)V
    .locals 12

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move v1, p1

    .local v1, "scale":F
    move-object v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object v6, v2

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 292
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v6}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v3, v6

    .line 293
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    if-eqz v6, :cond_0

    .line 295
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRectF1:Landroid/graphics/RectF;

    move-object v4, v6

    .line 296
    .local v4, "drawableBounds":Landroid/graphics/RectF;
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRectF2:Landroid/graphics/RectF;

    move-object v5, v6

    .line 297
    .local v5, "imageBounds":Landroid/graphics/RectF;
    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v3

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 298
    move-object v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    int-to-float v9, v9

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 299
    move-object v6, v2

    move-object v7, v4

    move-object v8, v5

    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v6

    .line 302
    move-object v6, v2

    move v7, v1

    move v8, v1

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    move-result v6

    .line 304
    .end local v4    # "drawableBounds":Landroid/graphics/RectF;
    .end local v5    # "imageBounds":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private createAnimator(Lcom/google/android/material/animation/MotionSpec;FFF)Landroid/animation/AnimatorSet;
    .locals 19
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 515
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object/from16 v2, p1

    .local v2, "spec":Lcom/google/android/material/animation/MotionSpec;
    move/from16 v3, p2

    .local v3, "opacity":F
    move/from16 v4, p3

    .local v4, "scale":F
    move/from16 v5, p4

    .local v5, "iconScale":F
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v9

    .line 518
    .local v6, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object v9, v1

    iget-object v9, v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    move v14, v3

    aput v14, v12, v13

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    move-object v7, v9

    .line 519
    .local v7, "animator":Landroid/animation/Animator;
    move-object v9, v2

    const-string/jumbo v10, "opacity"

    invoke-virtual {v9, v10}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 520
    move-object v9, v6

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 522
    move-object v9, v1

    iget-object v9, v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    move v14, v4

    aput v14, v12, v13

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    move-object v7, v9

    .line 523
    move-object v9, v2

    const-string/jumbo v10, "scale"

    invoke-virtual {v9, v10}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 524
    move-object v9, v6

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 526
    move-object v9, v1

    iget-object v9, v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    move v14, v4

    aput v14, v12, v13

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    move-object v7, v9

    .line 527
    move-object v9, v2

    const-string/jumbo v10, "scale"

    invoke-virtual {v9, v10}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 528
    move-object v9, v6

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 530
    move-object v9, v1

    move v10, v5

    move-object v11, v1

    iget-object v11, v11, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-direct {v9, v10, v11}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->calculateImageMatrixFromScale(FLandroid/graphics/Matrix;)V

    .line 531
    move-object v9, v1

    iget-object v9, v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    new-instance v10, Lcom/google/android/material/animation/ImageMatrixProperty;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Lcom/google/android/material/animation/ImageMatrixProperty;-><init>()V

    new-instance v11, Lcom/google/android/material/animation/MatrixEvaluator;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Lcom/google/android/material/animation/MatrixEvaluator;-><init>()V

    const/4 v12, 0x1

    new-array v12, v12, [Landroid/graphics/Matrix;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/Matrix;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v15, v13, v14

    .line 532
    invoke-static {v9, v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    move-object v7, v9

    .line 534
    move-object v9, v2

    const-string/jumbo v10, "iconScale"

    invoke-virtual {v9, v10}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 535
    move-object v9, v6

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 537
    new-instance v9, Landroid/animation/AnimatorSet;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v8, v9

    .line 538
    .local v8, "set":Landroid/animation/AnimatorSet;
    move-object v9, v8

    move-object v10, v6

    invoke-static {v9, v10}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 539
    move-object v9, v8

    move-object v1, v9

    .end local v1    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    return-object v1
.end method

.method private createElevationAnimator(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;
    .locals 9
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, p1

    .local v1, "impl":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl;
    new-instance v3, Landroid/animation/ValueAnimator;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    move-object v2, v3

    .line 652
    .local v2, "animator":Landroid/animation/ValueAnimator;
    move-object v3, v2

    sget-object v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 653
    move-object v3, v2

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 654
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 655
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 656
    move-object v3, v2

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 657
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    return-object v0

    .line 656
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private ensurePreDrawListener()V
    .locals 6

    .prologue
    .line 607
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v1, :cond_0

    .line 608
    move-object v1, v0

    new-instance v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$3;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V

    iput-object v2, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 617
    :cond_0
    return-void
.end method

.method private getDefaultHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 4

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultHideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-nez v1, :cond_0

    .line 506
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    .line 507
    invoke-virtual {v2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$animator;->design_fab_hide_motion_spec:I

    invoke-static {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultHideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 509
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultHideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    return-object v0
.end method

.method private getDefaultShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 4

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultShowMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-nez v1, :cond_0

    .line 498
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    .line 499
    invoke-virtual {v2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$animator;->design_fab_show_motion_spec:I

    invoke-static {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultShowMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 501
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->defaultShowMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    return-object v0
.end method

.method private shouldAnimateVisibilityChange()Z
    .locals 2

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateFromViewRotation()V
    .locals 4

    .prologue
    .line 729
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    .line 732
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    const/high16 v2, 0x42b40000    # 90.0f

    rem-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 733
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getLayerType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 734
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 744
    :cond_0
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowDrawable:Lcom/google/android/material/shadow/ShadowDrawableWrapper;

    if-eqz v1, :cond_1

    .line 745
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowDrawable:Lcom/google/android/material/shadow/ShadowDrawableWrapper;

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    neg-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->setRotation(F)V

    .line 747
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lcom/google/android/material/internal/CircularBorderDrawable;

    if-eqz v1, :cond_2

    .line 748
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lcom/google/android/material/internal/CircularBorderDrawable;

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    neg-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/CircularBorderDrawable;->setRotation(F)V

    .line 750
    :cond_2
    return-void

    .line 737
    :cond_3
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getLayerType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 6
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 357
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    .line 359
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 360
    return-void
.end method

.method addOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 6
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 342
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    .line 344
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 345
    return-void
.end method

.method createBorderDrawable(ILandroid/content/res/ColorStateList;)Lcom/google/android/material/internal/CircularBorderDrawable;
    .locals 11

    .prologue
    .line 582
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move v1, p1

    .local v1, "borderWidth":I
    move-object v2, p2

    .local v2, "backgroundTint":Landroid/content/res/ColorStateList;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v5}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v3, v5

    .line 583
    .local v3, "context":Landroid/content/Context;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->newCircularDrawable()Lcom/google/android/material/internal/CircularBorderDrawable;

    move-result-object v5

    move-object v4, v5

    .line 584
    .local v4, "borderDrawable":Lcom/google/android/material/internal/CircularBorderDrawable;
    move-object v5, v4

    move-object v6, v3

    sget v7, Lcom/google/android/material/R$color;->design_fab_stroke_top_outer_color:I

    .line 585
    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    move-object v7, v3

    sget v8, Lcom/google/android/material/R$color;->design_fab_stroke_top_inner_color:I

    .line 586
    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    move-object v8, v3

    sget v9, Lcom/google/android/material/R$color;->design_fab_stroke_end_inner_color:I

    .line 587
    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    move-object v9, v3

    sget v10, Lcom/google/android/material/R$color;->design_fab_stroke_end_outer_color:I

    .line 588
    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    .line 584
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/material/internal/CircularBorderDrawable;->setGradientColors(IIII)V

    .line 589
    move-object v5, v4

    move v6, v1

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/CircularBorderDrawable;->setBorderWidth(F)V

    .line 590
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/google/android/material/internal/CircularBorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    .line 591
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    return-object v0
.end method

.method createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    .prologue
    .line 620
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->newGradientDrawableForShape()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    move-object v1, v2

    .line 621
    .local v1, "d":Landroid/graphics/drawable/GradientDrawable;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 622
    move-object v2, v1

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 623
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    return-object v0
.end method

.method final getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->contentBackground:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    return-object v0
.end method

.method getElevation()F
    .locals 2

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    return v0
.end method

.method final getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    return-object v0
.end method

.method getHoveredFocusedTranslationZ()F
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    return v0
.end method

.method getPadding(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, p1

    .local v1, "rect":Landroid/graphics/Rect;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowDrawable:Lcom/google/android/material/shadow/ShadowDrawableWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    .line 559
    return-void
.end method

.method getPressedTranslationZ()F
    .locals 2

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    return v0
.end method

.method final getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    return-object v0
.end method

.method hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 13
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    move v2, p2

    .local v2, "fromUser":Z
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->isOrWillBeHidden()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 373
    .line 431
    :goto_0
    return-void

    .line 376
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    if-eqz v6, :cond_1

    .line 377
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    .line 380
    :cond_1
    move-object v6, v0

    invoke-direct {v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shouldAnimateVisibilityChange()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 381
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 383
    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 382
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createAnimator(Lcom/google/android/material/animation/MotionSpec;FFF)Landroid/animation/AnimatorSet;

    move-result-object v6

    move-object v3, v6

    .line 387
    .local v3, "set":Landroid/animation/AnimatorSet;
    move-object v6, v3

    new-instance v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move v10, v2

    move-object v11, v1

    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;ZLcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 418
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 419
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_2
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator$AnimatorListener;

    move-object v5, v6

    .line 420
    .local v5, "l":Landroid/animation/Animator$AnimatorListener;
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 421
    goto :goto_2

    .line 381
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    .end local v5    # "l":Landroid/animation/Animator$AnimatorListener;
    :cond_2
    move-object v7, v0

    .line 383
    invoke-direct {v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getDefaultHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object v7

    goto :goto_1

    .line 423
    .restart local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_3
    move-object v6, v3

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 424
    .line 431
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_4
    :goto_3
    goto :goto_0

    .line 426
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    move v7, v2

    if-eqz v7, :cond_6

    const/16 v7, 0x8

    :goto_4
    move v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 427
    move-object v6, v1

    if-eqz v6, :cond_4

    .line 428
    move-object v6, v1

    invoke-interface {v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    goto :goto_3

    .line 426
    :cond_6
    const/4 v7, 0x4

    goto :goto_4
.end method

.method isOrWillBeHidden()Z
    .locals 3

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 643
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .line 646
    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    :goto_1
    return v0

    .line 643
    .restart local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 646
    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method isOrWillBeShown()Z
    .locals 3

    .prologue
    .line 631
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .line 636
    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    :goto_1
    return v0

    .line 633
    .restart local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 636
    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method jumpDrawableToCurrentState()V
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    invoke-virtual {v1}, Lcom/google/android/material/internal/StateListAnimator;->jumpToCurrentState()V

    .line 338
    return-void
.end method

.method newCircularDrawable()Lcom/google/android/material/internal/CircularBorderDrawable;
    .locals 4

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    new-instance v1, Lcom/google/android/material/internal/CircularBorderDrawable;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/google/android/material/internal/CircularBorderDrawable;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    return-object v0
.end method

.method newGradientDrawableForShape()Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    return-object v0
.end method

.method onAttachedToWindow()V
    .locals 3

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->requirePreDrawListener()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ensurePreDrawListener()V

    .line 566
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 568
    :cond_0
    return-void
.end method

.method onCompatShadowChanged()V
    .locals 0

    .prologue
    .line 548
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 571
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v1, :cond_0

    .line 572
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 573
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 575
    :cond_0
    return-void
.end method

.method onDrawableStateChanged([I)V
    .locals 4

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, p1

    .local v1, "state":[I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->stateListAnimator:Lcom/google/android/material/internal/StateListAnimator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/StateListAnimator;->setState([I)V

    .line 334
    return-void
.end method

.method onElevationsChanged(FFF)V
    .locals 8

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move v1, p1

    .local v1, "elevation":F
    move v2, p2

    .local v2, "hoveredFocusedTranslationZ":F
    move v3, p3

    .local v3, "pressedTranslationZ":F
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowDrawable:Lcom/google/android/material/shadow/ShadowDrawableWrapper;

    if-eqz v4, :cond_0

    .line 327
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowDrawable:Lcom/google/android/material/shadow/ShadowDrawableWrapper;

    move v5, v1

    move v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 328
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updatePadding()V

    .line 330
    :cond_0
    return-void
.end method

.method onPaddingUpdated(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 561
    return-void
.end method

.method onPreDraw()V
    .locals 4

    .prologue
    .line 599
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getRotation()F

    move-result v2

    move v1, v2

    .line 600
    .local v1, "rotation":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 601
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    .line 602
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updateFromViewRotation()V

    .line 604
    :cond_0
    return-void
.end method

.method public removeOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 365
    .line 368
    :goto_0
    return-void

    .line 367
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 368
    goto :goto_0
.end method

.method removeOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 350
    .line 353
    :goto_0
    return-void

    .line 352
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 353
    goto :goto_0
.end method

.method requirePreDrawListener()Z
    .locals 2

    .prologue
    .line 578
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    return v0
.end method

.method setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 17

    .prologue
    .line 174
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object/from16 v1, p1

    .local v1, "backgroundTint":Landroid/content/res/ColorStateList;
    move-object/from16 v2, p2

    .local v2, "backgroundTintMode":Landroid/graphics/PorterDuff$Mode;
    move-object/from16 v3, p3

    .local v3, "rippleColor":Landroid/content/res/ColorStateList;
    move/from16 v4, p4

    .local v4, "borderWidth":I
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v8

    invoke-static {v8}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 175
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v8, v1

    invoke-static {v7, v8}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 176
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 177
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v8, v2

    invoke-static {v7, v8}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 181
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    move-object v5, v7

    .line 185
    .local v5, "touchFeedbackShape":Landroid/graphics/drawable/GradientDrawable;
    move-object v7, v0

    move-object v8, v5

    invoke-static {v8}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 186
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    move-object v8, v3

    .line 187
    invoke-static {v8}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 186
    invoke-static {v7, v8}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 190
    move v7, v4

    if-lez v7, :cond_1

    .line 191
    move-object v7, v0

    move-object v8, v0

    move v9, v4

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Lcom/google/android/material/internal/CircularBorderDrawable;

    move-result-object v8

    iput-object v8, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lcom/google/android/material/internal/CircularBorderDrawable;

    .line 192
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lcom/google/android/material/internal/CircularBorderDrawable;

    aput-object v10, v8, v9

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v10, v8, v9

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x2

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v10, v8, v9

    move-object v6, v7

    .line 198
    .local v6, "layers":[Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object v7, v0

    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v6

    invoke-direct {v9, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v8, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->contentBackground:Landroid/graphics/drawable/Drawable;

    .line 200
    move-object v7, v0

    new-instance v8, Lcom/google/android/material/shadow/ShadowDrawableWrapper;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    .line 202
    invoke-virtual {v10}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->contentBackground:Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    .line 204
    invoke-interface {v12}, Lcom/google/android/material/shadow/ShadowViewDelegate;->getRadius()F

    move-result v12

    move-object v13, v0

    iget v13, v13, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    move-object v14, v0

    iget v14, v14, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    move-object v15, v0

    iget v15, v15, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    add-float/2addr v14, v15

    invoke-direct/range {v9 .. v14}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object v8, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowDrawable:Lcom/google/android/material/shadow/ShadowDrawableWrapper;

    .line 207
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowDrawable:Lcom/google/android/material/shadow/ShadowDrawableWrapper;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->setAddPaddingForCorners(Z)V

    .line 208
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowDrawable:Lcom/google/android/material/shadow/ShadowDrawableWrapper;

    invoke-interface {v7, v8}, Lcom/google/android/material/shadow/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    return-void

    .line 194
    .end local v6    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lcom/google/android/material/internal/CircularBorderDrawable;

    .line 195
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v10, v8, v9

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v10, v8, v9

    move-object v6, v7

    .restart local v6    # "layers":[Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 213
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 215
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lcom/google/android/material/internal/CircularBorderDrawable;

    if-eqz v2, :cond_1

    .line 216
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->borderDrawable:Lcom/google/android/material/internal/CircularBorderDrawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CircularBorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    .line 218
    :cond_1
    return-void
.end method

.method setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 222
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 224
    :cond_0
    return-void
.end method

.method final setElevation(F)V
    .locals 6

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move v1, p1

    .local v1, "elevation":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 235
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    .line 236
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onElevationsChanged(FFF)V

    .line 238
    :cond_0
    return-void
.end method

.method final setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 4
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, p1

    .local v1, "spec":Lcom/google/android/material/animation/MotionSpec;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 322
    return-void
.end method

.method final setHoveredFocusedTranslationZ(F)V
    .locals 6

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move v1, p1

    .local v1, "translationZ":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 254
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    .line 255
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onElevationsChanged(FFF)V

    .line 257
    :cond_0
    return-void
.end method

.method final setImageMatrixScale(F)V
    .locals 6

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move v1, p1

    .local v1, "scale":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->imageMatrixScale:F

    .line 284
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpMatrix:Landroid/graphics/Matrix;

    move-object v2, v3

    .line 285
    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->calculateImageMatrixFromScale(FLandroid/graphics/Matrix;)V

    .line 286
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 287
    return-void
.end method

.method final setMaxImageSize(I)V
    .locals 4

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move v1, p1

    .local v1, "maxImageSize":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 268
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->maxImageSize:I

    .line 269
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updateImageMatrixScale()V

    .line 271
    :cond_0
    return-void
.end method

.method final setPressedTranslationZ(F)V
    .locals 6

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move v1, p1

    .local v1, "translationZ":F
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 261
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    .line 262
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hoveredFocusedTranslationZ:F

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onElevationsChanged(FFF)V

    .line 264
    :cond_0
    return-void
.end method

.method setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, p1

    .local v1, "rippleColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 228
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    .line 229
    invoke-static {v3}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 228
    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 231
    :cond_0
    return-void
.end method

.method final setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 4
    .param p1    # Lcom/google/android/material/animation/MotionSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, p1

    .local v1, "spec":Lcom/google/android/material/animation/MotionSpec;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 313
    return-void
.end method

.method show(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 13
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, p1

    .local v1, "listener":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    move v2, p2

    .local v2, "fromUser":Z
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->isOrWillBeShown()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 436
    .line 494
    :goto_0
    return-void

    .line 439
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    if-eqz v6, :cond_1

    .line 440
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    .line 443
    :cond_1
    move-object v6, v0

    invoke-direct {v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shouldAnimateVisibilityChange()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 444
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v6}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 446
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setAlpha(F)V

    .line 447
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setScaleY(F)V

    .line 448
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setScaleX(F)V

    .line 449
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setImageMatrixScale(F)V

    .line 452
    :cond_2
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 454
    :goto_1
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 453
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createAnimator(Lcom/google/android/material/animation/MotionSpec;FFF)Landroid/animation/AnimatorSet;

    move-result-object v6

    move-object v3, v6

    .line 458
    .local v3, "set":Landroid/animation/AnimatorSet;
    move-object v6, v3

    new-instance v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move v10, v2

    move-object v11, v1

    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;ZLcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 478
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 479
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->showListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_2
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator$AnimatorListener;

    move-object v5, v6

    .line 480
    .local v5, "l":Landroid/animation/Animator$AnimatorListener;
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 481
    goto :goto_2

    .line 452
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    .end local v5    # "l":Landroid/animation/Animator$AnimatorListener;
    :cond_3
    move-object v7, v0

    .line 454
    invoke-direct {v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getDefaultShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object v7

    goto :goto_1

    .line 483
    .restart local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_4
    move-object v6, v3

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 484
    .line 494
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_5
    :goto_3
    goto/16 :goto_0

    .line 485
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/4 v7, 0x0

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 486
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setAlpha(F)V

    .line 487
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setScaleY(F)V

    .line 488
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setScaleX(F)V

    .line 489
    move-object v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setImageMatrixScale(F)V

    .line 490
    move-object v6, v1

    if-eqz v6, :cond_5

    .line 491
    move-object v6, v1

    invoke-interface {v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onShown()V

    goto :goto_3
.end method

.method final updateImageMatrixScale()V
    .locals 3

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->imageMatrixScale:F

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setImageMatrixScale(F)V

    .line 279
    return-void
.end method

.method final updatePadding()V
    .locals 7

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->tmpRect:Landroid/graphics/Rect;

    move-object v1, v2

    .line 552
    .local v1, "rect":Landroid/graphics/Rect;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getPadding(Landroid/graphics/Rect;)V

    .line 553
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onPaddingUpdated(Landroid/graphics/Rect;)V

    .line 554
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    move-object v3, v1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/google/android/material/shadow/ShadowViewDelegate;->setShadowPadding(IIII)V

    .line 555
    return-void
.end method
