.class public Landroidx/transition/ChangeClipBounds;
.super Landroidx/transition/Transition;
.source "ChangeClipBounds.java"


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:clipBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:clipBounds:clip"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "android:clipBounds:clip"

    aput-object v3, v1, v2

    sput-object v0, Landroidx/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeClipBounds;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/Transition;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeClipBounds;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 12

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeClipBounds;
    move-object v1, p1

    .local v1, "values":Landroidx/transition/TransitionValues;
    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v2, v5

    .line 60
    .local v2, "view":Landroid/view/View;
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 61
    .line 70
    :goto_0
    return-void

    .line 64
    :cond_0
    move-object v5, v2

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    move-object v3, v5

    .line 65
    .local v3, "clip":Landroid/graphics/Rect;
    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v6, "android:clipBounds:clip"

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 66
    move-object v5, v3

    if-nez v5, :cond_1

    .line 67
    new-instance v5, Landroid/graphics/Rect;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v5

    .line 68
    .local v4, "bounds":Landroid/graphics/Rect;
    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v6, "android:clipBounds:bounds"

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 70
    .end local v4    # "bounds":Landroid/graphics/Rect;
    :cond_1
    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeClipBounds;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/ChangeClipBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 80
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeClipBounds;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/ChangeClipBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 75
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 18
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/transition/ChangeClipBounds;
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

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:clipBounds:clip"

    .line 86
    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:clipBounds:clip"

    .line 87
    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 88
    :cond_0
    const/4 v10, 0x0

    move-object v0, v10

    .line 119
    .end local v0    # "this":Landroidx/transition/ChangeClipBounds;
    :goto_0
    return-object v0

    .line 90
    .restart local v0    # "this":Landroidx/transition/ChangeClipBounds;
    :cond_1
    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:clipBounds:clip"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    move-object v4, v10

    .line 91
    .local v4, "start":Landroid/graphics/Rect;
    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:clipBounds:clip"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    move-object v5, v10

    .line 92
    .local v5, "end":Landroid/graphics/Rect;
    move-object v10, v5

    if-nez v10, :cond_2

    const/4 v10, 0x1

    :goto_1
    move v6, v10

    .line 93
    .local v6, "endIsNull":Z
    move-object v10, v4

    if-nez v10, :cond_3

    move-object v10, v5

    if-nez v10, :cond_3

    .line 94
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 92
    .end local v6    # "endIsNull":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 97
    .restart local v6    # "endIsNull":Z
    :cond_3
    move-object v10, v4

    if-nez v10, :cond_5

    .line 98
    move-object v10, v2

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:clipBounds:bounds"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    move-object v4, v10

    .line 102
    :cond_4
    :goto_2
    move-object v10, v4

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 103
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 99
    :cond_5
    move-object v10, v5

    if-nez v10, :cond_4

    .line 100
    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:clipBounds:bounds"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    move-object v5, v10

    goto :goto_2

    .line 106
    :cond_6
    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v11, v4

    invoke-static {v10, v11}, Landroidx/core/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 107
    new-instance v10, Landroidx/transition/RectEvaluator;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v11, v12}, Landroidx/transition/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    move-object v7, v10

    .line 108
    .local v7, "evaluator":Landroidx/transition/RectEvaluator;
    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget-object v11, Landroidx/transition/ViewUtils;->CLIP_BOUNDS:Landroid/util/Property;

    move-object v12, v7

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/graphics/Rect;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move-object/from16 v16, v4

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x1

    move-object/from16 v16, v5

    aput-object v16, v14, v15

    invoke-static {v10, v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    move-object v8, v10

    .line 110
    .local v8, "animator":Landroid/animation/ObjectAnimator;
    move v10, v6

    if-eqz v10, :cond_7

    .line 111
    move-object v10, v3

    iget-object v10, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v9, v10

    .line 112
    .local v9, "endView":Landroid/view/View;
    move-object v10, v8

    new-instance v11, Landroidx/transition/ChangeClipBounds$1;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v0

    move-object v14, v9

    invoke-direct {v12, v13, v14}, Landroidx/transition/ChangeClipBounds$1;-><init>(Landroidx/transition/ChangeClipBounds;Landroid/view/View;)V

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    .end local v9    # "endView":Landroid/view/View;
    :cond_7
    move-object v10, v8

    move-object v0, v10

    goto/16 :goto_0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeClipBounds;
    sget-object v1, Landroidx/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/ChangeClipBounds;
    return-object v0
.end method
