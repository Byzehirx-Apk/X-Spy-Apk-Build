.class Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
.source "FloatingActionButtonImplLollipop.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop$AlwaysStatefulGradientDrawable;
    }
.end annotation


# instance fields
.field private insetDrawable:Landroid/graphics/drawable/InsetDrawable;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/VisibilityAwareImageButton;Lcom/google/android/material/shadow/ShadowViewDelegate;)V
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    move-object v1, p1

    .local v1, "view":Lcom/google/android/material/internal/VisibilityAwareImageButton;
    move-object v2, p2

    .local v2, "shadowViewDelegate":Lcom/google/android/material/shadow/ShadowViewDelegate;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;-><init>(Lcom/google/android/material/internal/VisibilityAwareImageButton;Lcom/google/android/material/shadow/ShadowViewDelegate;)V

    .line 54
    return-void
.end method

.method private createElevationAnimator(FF)Landroid/animation/Animator;
    .locals 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    move v1, p1

    .local v1, "elevation":F
    move v2, p2

    .local v2, "translationZ":F
    new-instance v4, Landroid/animation/AnimatorSet;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v3, v4

    .line 156
    .local v3, "set":Landroid/animation/AnimatorSet;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const-string/jumbo v6, "elevation"

    const/4 v7, 0x1

    new-array v7, v7, [F

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v1

    aput v10, v8, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    sget-object v6, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v2

    aput v10, v8, v9

    .line 158
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x64

    .line 159
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 157
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 160
    move-object v4, v3

    sget-object v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    return-object v0
.end method


# virtual methods
.method public getElevation()F
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getElevation()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    return v0
.end method

.method getPadding(Landroid/graphics/Rect;)V
    .locals 11

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    move-object v1, p1

    .local v1, "rect":Landroid/graphics/Rect;
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    invoke-interface {v6}, Lcom/google/android/material/shadow/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 229
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    invoke-interface {v6}, Lcom/google/android/material/shadow/ShadowViewDelegate;->getRadius()F

    move-result v6

    move v2, v6

    .line 230
    .local v2, "radius":F
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->getElevation()F

    move-result v6

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->pressedTranslationZ:F

    add-float/2addr v6, v7

    move v3, v6

    .line 231
    .local v3, "maxShadowSize":F
    move v6, v3

    move v7, v2

    const/4 v8, 0x0

    .line 234
    invoke-static {v6, v7, v8}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->calculateHorizontalPadding(FFZ)F

    move-result v6

    float-to-double v6, v6

    .line 233
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v4, v6

    .line 235
    .local v4, "hPadding":I
    move v6, v3

    move v7, v2

    const/4 v8, 0x0

    .line 238
    invoke-static {v6, v7, v8}, Lcom/google/android/material/shadow/ShadowDrawableWrapper;->calculateVerticalPadding(FFZ)F

    move-result v6

    float-to-double v6, v6

    .line 237
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v5, v6

    .line 239
    .local v5, "vPadding":I
    move-object v6, v1

    move v7, v4

    move v8, v5

    move v9, v4

    move v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 240
    .line 243
    .end local v2    # "radius":F
    .end local v3    # "maxShadowSize":F
    .end local v4    # "hPadding":I
    .end local v5    # "vPadding":I
    :goto_0
    return-void

    .line 241
    :cond_0
    move-object v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method jumpDrawableToCurrentState()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method newCircularDrawable()Lcom/google/android/material/internal/CircularBorderDrawable;
    .locals 4

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    new-instance v1, Lcom/google/android/material/internal/CircularBorderDrawableLollipop;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/google/android/material/internal/CircularBorderDrawableLollipop;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    return-object v0
.end method

.method newGradientDrawableForShape()Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop$AlwaysStatefulGradientDrawable;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop$AlwaysStatefulGradientDrawable;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    return-object v0
.end method

.method onCompatShadowChanged()V
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->updatePadding()V

    .line 172
    return-void
.end method

.method onDrawableStateChanged([I)V
    .locals 4

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    move-object v1, p1

    .local v1, "state":[I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_0

    .line 189
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->elevation:F

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setElevation(F)V

    .line 191
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->pressedTranslationZ:F

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setTranslationZ(F)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->isFocused()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    move-object v3, v0

    iget v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->hoveredFocusedTranslationZ:F

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setTranslationZ(F)V

    goto :goto_0

    .line 196
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setTranslationZ(F)V

    goto :goto_0

    .line 199
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setElevation(F)V

    .line 200
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setTranslationZ(F)V

    goto :goto_0
.end method

.method onElevationsChanged(FFF)V
    .locals 16

    .prologue
    .line 102
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    move/from16 v2, p1

    .local v2, "elevation":F
    move/from16 v3, p2

    .local v3, "hoveredFocusedTranslationZ":F
    move/from16 v4, p3

    .local v4, "pressedTranslationZ":F
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-ne v8, v9, :cond_1

    .line 105
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v8}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->refreshDrawableState()V

    .line 148
    :goto_0
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    invoke-interface {v8}, Lcom/google/android/material/shadow/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 149
    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->updatePadding()V

    .line 151
    :cond_0
    return-void

    .line 107
    :cond_1
    new-instance v8, Landroid/animation/StateListAnimator;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Landroid/animation/StateListAnimator;-><init>()V

    move-object v5, v8

    .line 110
    .local v5, "stateListAnimator":Landroid/animation/StateListAnimator;
    move-object v8, v5

    sget-object v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->PRESSED_ENABLED_STATE_SET:[I

    move-object v10, v1

    move v11, v2

    move v12, v4

    .line 111
    invoke-direct {v10, v11, v12}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    move-result-object v10

    .line 110
    invoke-virtual {v8, v9, v10}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 112
    move-object v8, v5

    sget-object v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    move-object v10, v1

    move v11, v2

    move v12, v3

    .line 114
    invoke-direct {v10, v11, v12}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    move-result-object v10

    .line 112
    invoke-virtual {v8, v9, v10}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 115
    move-object v8, v5

    sget-object v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->FOCUSED_ENABLED_STATE_SET:[I

    move-object v10, v1

    move v11, v2

    move v12, v3

    .line 117
    invoke-direct {v10, v11, v12}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    move-result-object v10

    .line 115
    invoke-virtual {v8, v9, v10}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 118
    move-object v8, v5

    sget-object v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->HOVERED_ENABLED_STATE_SET:[I

    move-object v10, v1

    move v11, v2

    move v12, v3

    .line 120
    invoke-direct {v10, v11, v12}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    move-result-object v10

    .line 118
    invoke-virtual {v8, v9, v10}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 123
    new-instance v8, Landroid/animation/AnimatorSet;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v6, v8

    .line 124
    .local v6, "set":Landroid/animation/AnimatorSet;
    new-instance v8, Ljava/util/ArrayList;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v8

    .line 125
    .local v7, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object v8, v7

    move-object v9, v1

    iget-object v9, v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const-string/jumbo v10, "elevation"

    const/4 v11, 0x1

    new-array v11, v11, [F

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move v14, v2

    aput v14, v12, v13

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 126
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x16

    if-lt v8, v9, :cond_2

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    if-gt v8, v9, :cond_2

    .line 131
    move-object v8, v7

    move-object v9, v1

    iget-object v9, v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    sget-object v10, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v1

    iget-object v14, v14, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    .line 132
    invoke-virtual {v14}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->getTranslationZ()F

    move-result v14

    aput v14, v12, v13

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x64

    .line 133
    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 131
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 135
    :cond_2
    move-object v8, v7

    move-object v9, v1

    iget-object v9, v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    sget-object v10, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 136
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x64

    .line 137
    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 135
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 138
    move-object v8, v6

    move-object v9, v7

    const/4 v10, 0x0

    new-array v10, v10, [Landroid/animation/Animator;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/animation/Animator;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 139
    move-object v8, v6

    sget-object v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 140
    move-object v8, v5

    sget-object v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->ENABLED_STATE_SET:[I

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 143
    move-object v8, v5

    sget-object v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->EMPTY_STATE_SET:[I

    move-object v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 145
    move-object v8, v1

    iget-object v8, v8, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    move-object v9, v5

    invoke-virtual {v8, v9}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto/16 :goto_0
.end method

.method onPaddingUpdated(Landroid/graphics/Rect;)V
    .locals 11

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    move-object v1, p1

    .local v1, "padding":Landroid/graphics/Rect;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    invoke-interface {v2}, Lcom/google/android/material/shadow/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object v7, v1

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object v8, v1

    iget v8, v8, Landroid/graphics/Rect;->right:I

    move-object v9, v1

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->insetDrawable:Landroid/graphics/drawable/InsetDrawable;

    .line 180
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->insetDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-interface {v2, v3}, Lcom/google/android/material/shadow/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, v3}, Lcom/google/android/material/shadow/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method requirePreDrawListener()Z
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    return v0
.end method

.method setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 13

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    move-object v1, p1

    .local v1, "backgroundTint":Landroid/content/res/ColorStateList;
    move-object v2, p2

    .local v2, "backgroundTintMode":Landroid/graphics/PorterDuff$Mode;
    move-object/from16 v3, p3

    .local v3, "rippleColor":Landroid/content/res/ColorStateList;
    move/from16 v4, p4

    .local v4, "borderWidth":I
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v7, v1

    invoke-static {v6, v7}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 65
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 66
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v7, v2

    invoke-static {v6, v7}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 70
    :cond_0
    move v6, v4

    if-lez v6, :cond_1

    .line 71
    move-object v6, v0

    move-object v7, v0

    move v8, v4

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Lcom/google/android/material/internal/CircularBorderDrawable;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->borderDrawable:Lcom/google/android/material/internal/CircularBorderDrawable;

    .line 72
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->borderDrawable:Lcom/google/android/material/internal/CircularBorderDrawable;

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v11, v9, v10

    invoke-direct {v7, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v5, v6

    .line 78
    .local v5, "rippleContent":Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object v6, v0

    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v3

    .line 80
    invoke-static {v9}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v9

    move-object v10, v5

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v7, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v7, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->contentBackground:Landroid/graphics/drawable/Drawable;

    .line 84
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shadowViewDelegate:Lcom/google/android/material/shadow/ShadowViewDelegate;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v6, v7}, Lcom/google/android/material/shadow/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void

    .line 74
    .end local v5    # "rippleContent":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->borderDrawable:Lcom/google/android/material/internal/CircularBorderDrawable;

    .line 75
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v6

    .restart local v5    # "rippleContent":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
    move-object v1, p1

    .local v1, "rippleColor":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    .line 90
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    move-object v3, v1

    .line 91
    invoke-static {v3}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setRippleColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
