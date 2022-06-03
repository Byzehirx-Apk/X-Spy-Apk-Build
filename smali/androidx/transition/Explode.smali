.class public Landroidx/transition/Explode;
.super Landroidx/transition/Visibility;
.source "Explode.java"


# static fields
.field private static final PROPNAME_SCREEN_BOUNDS:Ljava/lang/String; = "android:explode:screenBounds"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mTempLoc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 45
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Explode;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/Visibility;-><init>()V

    .line 48
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Landroidx/transition/Explode;->mTempLoc:[I

    .line 51
    move-object v1, v0

    new-instance v2, Landroidx/transition/CircularPropagation;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/transition/CircularPropagation;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/transition/Explode;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Explode;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, v3, Landroidx/transition/Explode;->mTempLoc:[I

    .line 56
    move-object v3, v0

    new-instance v4, Landroidx/transition/CircularPropagation;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroidx/transition/CircularPropagation;-><init>()V

    invoke-virtual {v3, v4}, Landroidx/transition/Explode;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    .line 57
    return-void
.end method

.method private static calculateDistance(FF)F
    .locals 5

    .prologue
    .line 173
    move v0, p0

    .local v0, "x":F
    move v1, p1

    .local v1, "y":F
    move v2, v0

    move v3, v0

    mul-float/2addr v2, v3

    move v3, v1

    move v4, v1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    move v0, v2

    .end local v0    # "x":F
    return v0
.end method

.method private static calculateMaxDistance(Landroid/view/View;II)F
    .locals 8

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "sceneRoot":Landroid/view/View;
    move v1, p1

    .local v1, "focalX":I
    move v2, p2

    .local v2, "focalY":I
    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    move v7, v1

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v3, v5

    .line 168
    .local v3, "maxX":I
    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    move v7, v2

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v4, v5

    .line 169
    .local v4, "maxY":I
    move v5, v3

    int-to-float v5, v5

    move v6, v4

    int-to-float v6, v6

    invoke-static {v5, v6}, Landroidx/transition/Explode;->calculateDistance(FF)F

    move-result v5

    move v0, v5

    .end local v0    # "sceneRoot":Landroid/view/View;
    return v0
.end method

.method private calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V
    .locals 22

    .prologue
    .line 128
    move-object/from16 v3, p0

    .local v3, "this":Landroidx/transition/Explode;
    move-object/from16 v4, p1

    .local v4, "sceneRoot":Landroid/view/View;
    move-object/from16 v5, p2

    .local v5, "bounds":Landroid/graphics/Rect;
    move-object/from16 v6, p3

    .local v6, "outVector":[I
    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/transition/Explode;->mTempLoc:[I

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 129
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/transition/Explode;->mTempLoc:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v7, v18

    .line 130
    .local v7, "sceneRootX":I
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/transition/Explode;->mTempLoc:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v8, v18

    .line 134
    .local v8, "sceneRootY":I
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroidx/transition/Explode;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v11, v18

    .line 135
    .local v11, "epicenter":Landroid/graphics/Rect;
    move-object/from16 v18, v11

    if-nez v18, :cond_1

    .line 136
    move/from16 v18, v7

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v19

    const/16 v20, 0x2

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move-object/from16 v19, v4

    .line 137
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTranslationX()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v9, v18

    .line 138
    .local v9, "focalX":I
    move/from16 v18, v8

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v19

    const/16 v20, 0x2

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move-object/from16 v19, v4

    .line 139
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTranslationY()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v10, v18

    .line 145
    .local v10, "focalY":I
    :goto_0
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->centerX()I

    move-result v18

    move/from16 v12, v18

    .line 146
    .local v12, "centerX":I
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    move/from16 v13, v18

    .line 147
    .local v13, "centerY":I
    move/from16 v18, v12

    move/from16 v19, v9

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v14, v18

    .line 148
    .local v14, "xVector":F
    move/from16 v18, v13

    move/from16 v19, v10

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    .line 150
    .local v15, "yVector":F
    move/from16 v18, v14

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_0

    move/from16 v18, v15

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_0

    .line 152
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v18, v19

    move/from16 v14, v18

    .line 153
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v18, v19

    move/from16 v15, v18

    .line 155
    :cond_0
    move/from16 v18, v14

    move/from16 v19, v15

    invoke-static/range {v18 .. v19}, Landroidx/transition/Explode;->calculateDistance(FF)F

    move-result v18

    move/from16 v16, v18

    .line 156
    .local v16, "vectorSize":F
    move/from16 v18, v14

    move/from16 v19, v16

    div-float v18, v18, v19

    move/from16 v14, v18

    .line 157
    move/from16 v18, v15

    move/from16 v19, v16

    div-float v18, v18, v19

    move/from16 v15, v18

    .line 159
    move-object/from16 v18, v4

    move/from16 v19, v9

    move/from16 v20, v7

    sub-int v19, v19, v20

    move/from16 v20, v10

    move/from16 v21, v8

    sub-int v20, v20, v21

    .line 160
    invoke-static/range {v18 .. v20}, Landroidx/transition/Explode;->calculateMaxDistance(Landroid/view/View;II)F

    move-result v18

    move/from16 v17, v18

    .line 162
    .local v17, "maxDistance":F
    move-object/from16 v18, v6

    const/16 v19, 0x0

    move/from16 v20, v17

    move/from16 v21, v14

    mul-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    aput v20, v18, v19

    .line 163
    move-object/from16 v18, v6

    const/16 v19, 0x1

    move/from16 v20, v17

    move/from16 v21, v15

    mul-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    aput v20, v18, v19

    .line 164
    return-void

    .line 141
    .end local v9    # "focalX":I
    .end local v10    # "focalY":I
    .end local v12    # "centerX":I
    .end local v13    # "centerY":I
    .end local v14    # "xVector":F
    .end local v15    # "yVector":F
    .end local v16    # "vectorSize":F
    .end local v17    # "maxDistance":F
    :cond_1
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->centerX()I

    move-result v18

    move/from16 v9, v18

    .line 142
    .restart local v9    # "focalX":I
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    move/from16 v10, v18

    .restart local v10    # "focalY":I
    goto/16 :goto_0
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 16

    .prologue
    .line 60
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/transition/Explode;
    move-object/from16 v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v2, v7

    .line 61
    .local v2, "view":Landroid/view/View;
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/Explode;->mTempLoc:[I

    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 62
    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/Explode;->mTempLoc:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move v3, v7

    .line 63
    .local v3, "left":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/Explode;->mTempLoc:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    move v4, v7

    .line 64
    .local v4, "top":I
    move v7, v3

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    move v5, v7

    .line 65
    .local v5, "right":I
    move v7, v4

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    move v6, v7

    .line 66
    .local v6, "bottom":I
    move-object v7, v1

    iget-object v7, v7, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v8, "android:explode:screenBounds"

    new-instance v9, Landroid/graphics/Rect;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 67
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
    .line 77
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Explode;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/transition/Visibility;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 78
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/Explode;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 79
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Explode;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 72
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/transition/Explode;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 73
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 19

    .prologue
    .line 84
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/transition/Explode;
    move-object/from16 v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v2, p2

    .local v2, "view":Landroid/view/View;
    move-object/from16 v3, p3

    .local v3, "startValues":Landroidx/transition/TransitionValues;
    move-object/from16 v4, p4

    .local v4, "endValues":Landroidx/transition/TransitionValues;
    move-object v10, v4

    if-nez v10, :cond_0

    .line 85
    const/4 v10, 0x0

    move-object v0, v10

    .line 94
    .end local v0    # "this":Landroidx/transition/Explode;
    :goto_0
    return-object v0

    .line 87
    .restart local v0    # "this":Landroidx/transition/Explode;
    :cond_0
    move-object v10, v4

    iget-object v10, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:explode:screenBounds"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    move-object v5, v10

    .line 88
    .local v5, "bounds":Landroid/graphics/Rect;
    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v10

    move v6, v10

    .line 89
    .local v6, "endX":F
    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getTranslationY()F

    move-result v10

    move v7, v10

    .line 90
    .local v7, "endY":F
    move-object v10, v0

    move-object v11, v1

    move-object v12, v5

    move-object v13, v0

    iget-object v13, v13, Landroidx/transition/Explode;->mTempLoc:[I

    invoke-direct {v10, v11, v12, v13}, Landroidx/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 91
    move v10, v6

    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/Explode;->mTempLoc:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    int-to-float v11, v11

    add-float/2addr v10, v11

    move v8, v10

    .line 92
    .local v8, "startX":F
    move v10, v7

    move-object v11, v0

    iget-object v11, v11, Landroidx/transition/Explode;->mTempLoc:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    int-to-float v11, v11

    add-float/2addr v10, v11

    move v9, v10

    .line 94
    .local v9, "startY":F
    move-object v10, v2

    move-object v11, v4

    move-object v12, v5

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move-object v13, v5

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move v14, v8

    move v15, v9

    move/from16 v16, v6

    move/from16 v17, v7

    sget-object v18, Landroidx/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    invoke-static/range {v10 .. v18}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v10

    move-object v0, v10

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 23

    .prologue
    .line 101
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/transition/Explode;
    move-object/from16 v2, p1

    .local v2, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v3, p2

    .local v3, "view":Landroid/view/View;
    move-object/from16 v4, p3

    .local v4, "startValues":Landroidx/transition/TransitionValues;
    move-object/from16 v5, p4

    .local v5, "endValues":Landroidx/transition/TransitionValues;
    move-object v14, v4

    if-nez v14, :cond_0

    .line 102
    const/4 v14, 0x0

    move-object v1, v14

    .line 123
    .end local v1    # "this":Landroidx/transition/Explode;
    :goto_0
    return-object v1

    .line 104
    .restart local v1    # "this":Landroidx/transition/Explode;
    :cond_0
    move-object v14, v4

    iget-object v14, v14, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v15, "android:explode:screenBounds"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    move-object v6, v14

    .line 105
    .local v6, "bounds":Landroid/graphics/Rect;
    move-object v14, v6

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move v7, v14

    .line 106
    .local v7, "viewPosX":I
    move-object v14, v6

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move v8, v14

    .line 107
    .local v8, "viewPosY":I
    move-object v14, v3

    invoke-virtual {v14}, Landroid/view/View;->getTranslationX()F

    move-result v14

    move v9, v14

    .line 108
    .local v9, "startX":F
    move-object v14, v3

    invoke-virtual {v14}, Landroid/view/View;->getTranslationY()F

    move-result v14

    move v10, v14

    .line 109
    .local v10, "startY":F
    move v14, v9

    move v11, v14

    .line 110
    .local v11, "endX":F
    move v14, v10

    move v12, v14

    .line 111
    .local v12, "endY":F
    move-object v14, v4

    iget-object v14, v14, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v15, Landroidx/transition/R$id;->transition_position:I

    invoke-virtual {v14, v15}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    check-cast v14, [I

    move-object v13, v14

    .line 112
    .local v13, "interruptedPosition":[I
    move-object v14, v13

    if-eqz v14, :cond_1

    .line 115
    move v14, v11

    move-object v15, v13

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v15, v15

    add-float/2addr v14, v15

    move v11, v14

    .line 116
    move v14, v12

    move-object v15, v13

    const/16 v16, 0x1

    aget v15, v15, v16

    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v15, v15

    add-float/2addr v14, v15

    move v12, v14

    .line 117
    move-object v14, v6

    move-object v15, v13

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v16, v13

    const/16 v17, 0x1

    aget v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 119
    :cond_1
    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v6

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/transition/Explode;->mTempLoc:[I

    move-object/from16 v17, v0

    invoke-direct/range {v14 .. v17}, Landroidx/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 120
    move v14, v11

    move-object v15, v1

    iget-object v15, v15, Landroidx/transition/Explode;->mTempLoc:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    int-to-float v15, v15

    add-float/2addr v14, v15

    move v11, v14

    .line 121
    move v14, v12

    move-object v15, v1

    iget-object v15, v15, Landroidx/transition/Explode;->mTempLoc:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    int-to-float v15, v15

    add-float/2addr v14, v15

    move v12, v14

    .line 123
    move-object v14, v3

    move-object v15, v4

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v12

    sget-object v22, Landroidx/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    invoke-static/range {v14 .. v22}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v14

    move-object v1, v14

    goto/16 :goto_0
.end method
