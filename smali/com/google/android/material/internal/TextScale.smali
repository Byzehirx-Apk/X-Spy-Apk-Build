.class public Lcom/google/android/material/internal/TextScale;
.super Landroidx/transition/Transition;
.source "TextScale.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final PROPNAME_SCALE:Ljava/lang/String; = "android:textscale:scale"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/TextScale;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/Transition;-><init>()V

    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/TextScale;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v3, v1

    iget-object v3, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 47
    move-object v3, v1

    iget-object v3, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    move-object v2, v3

    .line 48
    .local v2, "textview":Landroid/widget/TextView;
    move-object v3, v1

    iget-object v3, v3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v4, "android:textscale:scale"

    move-object v5, v2

    invoke-virtual {v5}, Landroid/widget/TextView;->getScaleX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 50
    .end local v2    # "textview":Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/TextScale;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/internal/TextScale;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 43
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/TextScale;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/internal/TextScale;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 38
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 16

    .prologue
    .line 55
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/android/material/internal/TextScale;
    move-object/from16 v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v2, p2

    .local v2, "startValues":Landroidx/transition/TransitionValues;
    move-object/from16 v3, p3

    .local v3, "endValues":Landroidx/transition/TransitionValues;
    move-object v10, v2

    if-eqz v10, :cond_0

    move-object v10, v3

    if-eqz v10, :cond_0

    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v10, v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v10, v10, Landroid/widget/TextView;

    if-nez v10, :cond_1

    .line 59
    :cond_0
    const/4 v10, 0x0

    move-object v0, v10

    .line 83
    .end local v0    # "this":Lcom/google/android/material/internal/TextScale;
    :goto_0
    return-object v0

    .line 61
    .restart local v0    # "this":Lcom/google/android/material/internal/TextScale;
    :cond_1
    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v10, Landroid/widget/TextView;

    move-object v4, v10

    .line 62
    .local v4, "view":Landroid/widget/TextView;
    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object v5, v10

    .line 63
    .local v5, "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object v6, v10

    .line 64
    .local v6, "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v10, v5

    const-string/jumbo v11, "android:textscale:scale"

    .line 65
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    move-object v10, v5

    const-string/jumbo v11, "android:textscale:scale"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    :goto_1
    move v7, v10

    .line 66
    .local v7, "startSize":F
    move-object v10, v6

    const-string/jumbo v11, "android:textscale:scale"

    .line 67
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    move-object v10, v6

    const-string/jumbo v11, "android:textscale:scale"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    :goto_2
    move v8, v10

    .line 68
    .local v8, "endSize":F
    move v10, v7

    move v11, v8

    cmpl-float v10, v10, v11

    if-nez v10, :cond_4

    .line 69
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 65
    .end local v7    # "startSize":F
    .end local v8    # "endSize":F
    :cond_2
    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_1

    .line 67
    .restart local v7    # "startSize":F
    :cond_3
    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_2

    .line 72
    .restart local v8    # "endSize":F
    :cond_4
    const/4 v10, 0x2

    new-array v10, v10, [F

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move v13, v7

    aput v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x1

    move v13, v8

    aput v13, v11, v12

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    move-object v9, v10

    .line 74
    .local v9, "animator":Landroid/animation/ValueAnimator;
    move-object v10, v9

    new-instance v11, Lcom/google/android/material/internal/TextScale$1;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    move-object v14, v4

    invoke-direct {v12, v13, v14}, Lcom/google/android/material/internal/TextScale$1;-><init>(Lcom/google/android/material/internal/TextScale;Landroid/widget/TextView;)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 83
    move-object v10, v9

    move-object v0, v10

    goto :goto_0
.end method
