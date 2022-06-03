.class public Landroidx/transition/Fade;
.super Landroidx/transition/Visibility;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Fade$FadeAnimatorListener;
    }
.end annotation


# static fields
.field public static final IN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Fade"

.field public static final OUT:I = 0x2

.field private static final PROPNAME_TRANSITION_ALPHA:Ljava/lang/String; = "android:fade:transitionAlpha"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Fade;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/Visibility;-><init>()V

    .line 98
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Fade;
    move v1, p1

    .local v1, "fadingMode":I
    move-object v2, v0

    invoke-direct {v2}, Landroidx/transition/Visibility;-><init>()V

    .line 91
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/Fade;->setMode(I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Fade;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroidx/transition/Styleable;->FADE:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v3, v5

    .line 104
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v5, v3

    move-object v6, v2

    check-cast v6, Landroid/content/res/XmlResourceParser;

    const-string/jumbo v7, "fadingMode"

    const/4 v8, 0x0

    move-object v9, v0

    .line 105
    invoke-virtual {v9}, Landroidx/transition/Fade;->getMode()I

    move-result v9

    .line 104
    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    move v4, v5

    .line 106
    .local v4, "fadingMode":I
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/transition/Fade;->setMode(I)V

    .line 107
    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    return-void
.end method

.method private createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 13

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Fade;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move v2, p2

    .local v2, "startAlpha":F
    move/from16 v3, p3

    .local v3, "endAlpha":F
    move v6, v2

    move v7, v3

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 122
    const/4 v6, 0x0

    move-object v0, v6

    .line 140
    .end local v0    # "this":Landroidx/transition/Fade;
    :goto_0
    return-object v0

    .line 124
    .restart local v0    # "this":Landroidx/transition/Fade;
    :cond_0
    move-object v6, v1

    move v7, v2

    invoke-static {v6, v7}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 125
    move-object v6, v1

    sget-object v7, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroid/util/Property;

    const/4 v8, 0x1

    new-array v8, v8, [F

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v3

    aput v11, v9, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move-object v4, v6

    .line 130
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    new-instance v6, Landroidx/transition/Fade$FadeAnimatorListener;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    invoke-direct {v7, v8}, Landroidx/transition/Fade$FadeAnimatorListener;-><init>(Landroid/view/View;)V

    move-object v5, v6

    .line 131
    .local v5, "listener":Landroidx/transition/Fade$FadeAnimatorListener;
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 132
    move-object v6, v0

    new-instance v7, Landroidx/transition/Fade$1;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Landroidx/transition/Fade$1;-><init>(Landroidx/transition/Fade;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroidx/transition/Fade;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v6

    .line 140
    move-object v6, v4

    move-object v0, v6

    goto :goto_0
.end method

.method private static getStartAlpha(Landroidx/transition/TransitionValues;F)F
    .locals 6

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "startValues":Landroidx/transition/TransitionValues;
    move v1, p1

    .local v1, "fallbackValue":F
    move v4, v1

    move v2, v4

    .line 169
    .local v2, "startAlpha":F
    move-object v4, v0

    if-eqz v4, :cond_0

    .line 170
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:fade:transitionAlpha"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    move-object v3, v4

    .line 171
    .local v3, "startAlphaFloat":Ljava/lang/Float;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 172
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move v2, v4

    .line 175
    .end local v3    # "startAlphaFloat":Ljava/lang/Float;
    :cond_0
    move v4, v2

    move v0, v4

    .end local v0    # "startValues":Landroidx/transition/TransitionValues;
    return v0
.end method


# virtual methods
.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 5
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Fade;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 113
    move-object v2, v1

    iget-object v2, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v3, "android:fade:transitionAlpha"

    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 114
    invoke-static {v4}, Landroidx/transition/ViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 113
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 115
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Fade;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v3, p3

    .local v3, "startValues":Landroidx/transition/TransitionValues;
    move-object v4, p4

    .local v4, "endValues":Landroidx/transition/TransitionValues;
    move-object v6, v3

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroidx/transition/Fade;->getStartAlpha(Landroidx/transition/TransitionValues;F)F

    move-result v6

    move v5, v6

    .line 153
    .local v5, "startAlpha":F
    move v6, v5

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 154
    const/4 v6, 0x0

    move v5, v6

    .line 156
    :cond_0
    move-object v6, v0

    move-object v7, v2

    move v8, v5

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9}, Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Landroidx/transition/Fade;
    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Fade;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v3, p3

    .local v3, "startValues":Landroidx/transition/TransitionValues;
    move-object v4, p4

    .local v4, "endValues":Landroidx/transition/TransitionValues;
    move-object v6, v2

    invoke-static {v6}, Landroidx/transition/ViewUtils;->saveNonTransitionAlpha(Landroid/view/View;)V

    .line 163
    move-object v6, v3

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Landroidx/transition/Fade;->getStartAlpha(Landroidx/transition/TransitionValues;F)F

    move-result v6

    move v5, v6

    .line 164
    .local v5, "startAlpha":F
    move-object v6, v0

    move-object v7, v2

    move v8, v5

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Landroidx/transition/Fade;
    return-object v0
.end method
