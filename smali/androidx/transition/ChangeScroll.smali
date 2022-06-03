.class public Landroidx/transition/ChangeScroll;
.super Landroidx/transition/Transition;
.source "ChangeScroll.java"


# static fields
.field private static final PROPERTIES:[Ljava/lang/String;

.field private static final PROPNAME_SCROLL_X:Ljava/lang/String; = "android:changeScroll:x"

.field private static final PROPNAME_SCROLL_Y:Ljava/lang/String; = "android:changeScroll:y"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "android:changeScroll:x"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "android:changeScroll:y"

    aput-object v3, v1, v2

    sput-object v0, Landroidx/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeScroll;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeScroll;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeScroll;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v2, v1

    iget-object v2, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v3, "android:changeScroll:x"

    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 68
    move-object v2, v1

    iget-object v2, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v3, "android:changeScroll:y"

    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeScroll;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/ChangeScroll;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 58
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeScroll;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/ChangeScroll;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 53
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 18
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/transition/ChangeScroll;
    move-object/from16 v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v2, p2

    .local v2, "startValues":Landroidx/transition/TransitionValues;
    move-object/from16 v3, p3

    .local v3, "endValues":Landroidx/transition/TransitionValues;
    move-object v11, v2

    if-eqz v11, :cond_0

    move-object v11, v3

    if-nez v11, :cond_1

    .line 76
    :cond_0
    const/4 v11, 0x0

    move-object v0, v11

    .line 93
    .end local v0    # "this":Landroidx/transition/ChangeScroll;
    :goto_0
    return-object v0

    .line 78
    .restart local v0    # "this":Landroidx/transition/ChangeScroll;
    :cond_1
    move-object v11, v3

    iget-object v11, v11, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v4, v11

    .line 79
    .local v4, "view":Landroid/view/View;
    move-object v11, v2

    iget-object v11, v11, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v12, "android:changeScroll:x"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move v5, v11

    .line 80
    .local v5, "startX":I
    move-object v11, v3

    iget-object v11, v11, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v12, "android:changeScroll:x"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move v6, v11

    .line 81
    .local v6, "endX":I
    move-object v11, v2

    iget-object v11, v11, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v12, "android:changeScroll:y"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move v7, v11

    .line 82
    .local v7, "startY":I
    move-object v11, v3

    iget-object v11, v11, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v12, "android:changeScroll:y"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move v8, v11

    .line 83
    .local v8, "endY":I
    const/4 v11, 0x0

    move-object v9, v11

    .line 84
    .local v9, "scrollXAnimator":Landroid/animation/Animator;
    const/4 v11, 0x0

    move-object v10, v11

    .line 85
    .local v10, "scrollYAnimator":Landroid/animation/Animator;
    move v11, v5

    move v12, v6

    if-eq v11, v12, :cond_2

    .line 86
    move-object v11, v4

    move v12, v5

    invoke-virtual {v11, v12}, Landroid/view/View;->setScrollX(I)V

    .line 87
    move-object v11, v4

    const-string/jumbo v12, "scrollX"

    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move/from16 v16, v5

    aput v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x1

    move/from16 v16, v6

    aput v16, v14, v15

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    move-object v9, v11

    .line 89
    :cond_2
    move v11, v7

    move v12, v8

    if-eq v11, v12, :cond_3

    .line 90
    move-object v11, v4

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/view/View;->setScrollY(I)V

    .line 91
    move-object v11, v4

    const-string/jumbo v12, "scrollY"

    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move/from16 v16, v7

    aput v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x1

    move/from16 v16, v8

    aput v16, v14, v15

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    move-object v10, v11

    .line 93
    :cond_3
    move-object v11, v9

    move-object v12, v10

    invoke-static {v11, v12}, Landroidx/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v11

    move-object v0, v11

    goto/16 :goto_0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ChangeScroll;
    sget-object v1, Landroidx/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/ChangeScroll;
    return-object v0
.end method
