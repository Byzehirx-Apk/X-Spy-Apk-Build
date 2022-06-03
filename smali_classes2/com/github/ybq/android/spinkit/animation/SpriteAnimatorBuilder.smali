.class public Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
.super Ljava/lang/Object;
.source "SpriteAnimatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FloatFrameData;,
        Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$IntFrameData;,
        Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpriteAnimatorBuilder"


# instance fields
.field private duration:J

.field private fds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;",
            ">;"
        }
    .end annotation
.end field

.field private interpolator:Landroid/view/animation/Interpolator;

.field private repeatCount:I

.field private sprite:Lcom/github/ybq/android/spinkit/sprite/Sprite;

.field private startFrame:I


# direct methods
.method public constructor <init>(Lcom/github/ybq/android/spinkit/sprite/Sprite;)V
    .locals 7

    .prologue
    .line 58
    move-object v1, p0

    .local v1, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v2, p1

    .local v2, "sprite":Lcom/github/ybq/android/spinkit/sprite/Sprite;
    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->repeatCount:I

    .line 27
    move-object v3, v1

    const-wide/16 v4, 0x7d0

    iput-wide v4, v3, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->duration:J

    .line 28
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->startFrame:I

    .line 29
    move-object v3, v1

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->fds:Ljava/util/Map;

    .line 59
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->sprite:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    .line 60
    return-void
.end method

.method private ensurePair(II)V
    .locals 12

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move v1, p1

    .local v1, "fractionsLength":I
    move v2, p2

    .local v2, "valuesLength":I
    move v3, v1

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 135
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    .line 136
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string/jumbo v6, "The fractions.length must equal values.length, fraction.length[%d], values.length[%d]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v1

    .line 139
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move v10, v2

    .line 140
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 135
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 142
    :cond_0
    return-void
.end method

.method private holder([FLandroid/util/Property;[Ljava/lang/Float;)V
    .locals 13

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v1, p1

    .local v1, "fractions":[F
    move-object v2, p2

    .local v2, "property":Landroid/util/Property;
    move-object/from16 v3, p3

    .local v3, "values":[Ljava/lang/Float;
    move-object v4, v0

    move-object v5, v1

    array-length v5, v5

    move-object v6, v3

    array-length v6, v6

    invoke-direct {v4, v5, v6}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->ensurePair(II)V

    .line 124
    move-object v4, v0

    iget-object v4, v4, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->fds:Ljava/util/Map;

    move-object v5, v2

    invoke-virtual {v5}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FloatFrameData;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FloatFrameData;-><init>(Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;[FLandroid/util/Property;[Ljava/lang/Float;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 125
    return-void
.end method

.method private holder([FLandroid/util/Property;[Ljava/lang/Integer;)V
    .locals 13

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v1, p1

    .local v1, "fractions":[F
    move-object v2, p2

    .local v2, "property":Landroid/util/Property;
    move-object/from16 v3, p3

    .local v3, "values":[Ljava/lang/Integer;
    move-object v4, v0

    move-object v5, v1

    array-length v5, v5

    move-object v6, v3

    array-length v6, v6

    invoke-direct {v4, v5, v6}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->ensurePair(II)V

    .line 130
    move-object v4, v0

    iget-object v4, v4, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->fds:Ljava/util/Map;

    move-object v5, v2

    invoke-virtual {v5}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$IntFrameData;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$IntFrameData;-><init>(Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;[FLandroid/util/Property;[Ljava/lang/Integer;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 131
    return-void
.end method


# virtual methods
.method public varargs alpha([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v1, p1

    .local v1, "fractions":[F
    move-object v2, p2

    .local v2, "alpha":[Ljava/lang/Integer;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/github/ybq/android/spinkit/sprite/Sprite;->ALPHA:Landroid/util/Property;

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Integer;)V

    .line 69
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    return-object v0
.end method

.method public build()Landroid/animation/ObjectAnimator;
    .locals 20

    .prologue
    .line 180
    move-object/from16 v2, p0

    .local v2, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v15, v2

    iget-object v15, v15, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->fds:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v15

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    move-object v3, v15

    .line 181
    .local v3, "holders":[Landroid/animation/PropertyValuesHolder;
    const/4 v15, 0x0

    move v4, v15

    .line 182
    .local v4, "i":I
    move-object v15, v2

    iget-object v15, v15, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->fds:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object v5, v15

    :goto_0
    move-object v15, v5

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v15, v5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    move-object v6, v15

    .line 183
    .local v6, "fd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;>;"
    move-object v15, v6

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;

    move-object v7, v15

    .line 184
    .local v7, "data":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;
    move-object v15, v7

    iget-object v15, v15, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;->fractions:[F

    array-length v15, v15

    new-array v15, v15, [Landroid/animation/Keyframe;

    move-object v8, v15

    .line 185
    .local v8, "keyframes":[Landroid/animation/Keyframe;
    move-object v15, v7

    iget-object v15, v15, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;->fractions:[F

    move-object v9, v15

    .line 186
    .local v9, "fractions":[F
    move-object v15, v9

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->startFrame:I

    move/from16 v16, v0

    aget v15, v15, v16

    move v10, v15

    .line 187
    .local v10, "startF":F
    move-object v15, v2

    iget v15, v15, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->startFrame:I

    move v11, v15

    .local v11, "j":I
    :goto_1
    move v15, v11

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->startFrame:I

    move/from16 v16, v0

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;->values:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 188
    move v15, v11

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->startFrame:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move v12, v15

    .line 189
    .local v12, "key":I
    move v15, v11

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;->values:[Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    rem-int v15, v15, v16

    move v13, v15

    .line 190
    .local v13, "vk":I
    move-object v15, v9

    move/from16 v16, v13

    aget v15, v15, v16

    move/from16 v16, v10

    sub-float v15, v15, v16

    move v14, v15

    .line 191
    .local v14, "fraction":F
    move v15, v14

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_0

    .line 192
    move-object v15, v9

    move-object/from16 v16, v9

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    aget v15, v15, v16

    move/from16 v16, v14

    add-float v15, v15, v16

    move v14, v15

    .line 194
    :cond_0
    move-object v15, v7

    instance-of v15, v15, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$IntFrameData;

    if-eqz v15, :cond_1

    .line 195
    move-object v15, v8

    move/from16 v16, v12

    move/from16 v17, v14

    move-object/from16 v18, v7

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;->values:[Ljava/lang/Object;

    move-object/from16 v18, v0

    move/from16 v19, v13

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v17

    aput-object v17, v15, v16

    .line 187
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 196
    :cond_1
    move-object v15, v7

    instance-of v15, v15, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FloatFrameData;

    if-eqz v15, :cond_2

    .line 197
    move-object v15, v8

    move/from16 v16, v12

    move/from16 v17, v14

    move-object/from16 v18, v7

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;->values:[Ljava/lang/Object;

    move-object/from16 v18, v0

    move/from16 v19, v13

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v17

    aput-object v17, v15, v16

    goto :goto_2

    .line 199
    :cond_2
    move-object v15, v8

    move/from16 v16, v12

    move/from16 v17, v14

    move-object/from16 v18, v7

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;->values:[Ljava/lang/Object;

    move-object/from16 v18, v0

    move/from16 v19, v13

    aget-object v18, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v17

    aput-object v17, v15, v16

    goto :goto_2

    .line 202
    .end local v12    # "key":I
    .end local v13    # "vk":I
    .end local v14    # "fraction":F
    :cond_3
    move-object v15, v3

    move/from16 v16, v4

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;->property:Landroid/util/Property;

    move-object/from16 v17, v0

    move-object/from16 v18, v8

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    aput-object v17, v15, v16

    .line 203
    add-int/lit8 v4, v4, 0x1

    .line 204
    goto/16 :goto_0

    .line 206
    .end local v6    # "fd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;>;"
    .end local v7    # "data":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder$FrameData;
    .end local v8    # "keyframes":[Landroid/animation/Keyframe;
    .end local v9    # "fractions":[F
    .end local v10    # "startF":F
    .end local v11    # "j":I
    :cond_4
    move-object v15, v2

    iget-object v15, v15, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->sprite:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-object/from16 v16, v3

    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    move-object v5, v15

    .line 208
    .local v5, "animator":Landroid/animation/ObjectAnimator;
    move-object v15, v5

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->duration:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 209
    move-object v15, v5

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->repeatCount:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 210
    move-object v15, v5

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 211
    move-object v15, v5

    move-object v2, v15

    .end local v2    # "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    return-object v2
.end method

.method public duration(J)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-wide v1, p1

    .local v1, "duration":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->duration:J

    .line 160
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    return-object v0
.end method

.method public varargs easeInOut([F)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v1, p1

    .local v1, "fractions":[F
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->easeInOut([F)Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->interpolator(Landroid/view/animation/Interpolator;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v2

    .line 154
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    return-object v0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v1, p1

    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->interpolator:Landroid/view/animation/Interpolator;

    .line 147
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    return-object v0
.end method

.method public repeatCount(I)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    .locals 4

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move v1, p1

    .local v1, "repeatCount":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->repeatCount:I

    .line 166
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    return-object v0
.end method

.method public varargs rotate([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    .locals 7

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v1, p1

    .local v1, "fractions":[F
    move-object v2, p2

    .local v2, "rotate":[Ljava/lang/Integer;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/github/ybq/android/spinkit/sprite/Sprite;->ROTATE:Landroid/util/Property;

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Integer;)V

    .line 109
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    return-object v0
.end method

.method public varargs rotateX([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    .locals 7

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v1, p1

    .local v1, "fractions":[F
    move-object v2, p2

    .local v2, "rotateX":[Ljava/lang/Integer;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/github/ybq/android/spinkit/sprite/Sprite;->ROTATE_X:Landroid/util/Property;

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Integer;)V

    .line 85
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    return-object v0
.end method

.method public varargs rotateY([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v1, p1

    .local v1, "fractions":[F
    move-object v2, p2

    .local v2, "rotateY":[Ljava/lang/Integer;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/github/ybq/android/spinkit/sprite/Sprite;->ROTATE_Y:Landroid/util/Property;

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Integer;)V

    .line 90
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    return-object v0
.end method

.method public varargs scale([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v1, p1

    .local v1, "fractions":[F
    move-object v2, p2

    .local v2, "scale":[Ljava/lang/Float;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/github/ybq/android/spinkit/sprite/Sprite;->SCALE:Landroid/util/Property;

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Float;)V

    .line 64
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    return-object v0
.end method

.method public varargs scaleX([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    .locals 7

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v1, p1

    .local v1, "fractions":[F
    move-object v2, p2

    .local v2, "scaleX":[Ljava/lang/Float;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/github/ybq/android/spinkit/sprite/Sprite;->SCALE:Landroid/util/Property;

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Float;)V

    .line 75
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    return-object v0
.end method

.method public varargs scaleY([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    .locals 7

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v1, p1

    .local v1, "fractions":[F
    move-object v2, p2

    .local v2, "scaleY":[Ljava/lang/Float;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/github/ybq/android/spinkit/sprite/Sprite;->SCALE_Y:Landroid/util/Property;

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Float;)V

    .line 80
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    return-object v0
.end method

.method public startFrame(I)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    .locals 4

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move v1, p1

    .local v1, "startFrame":I
    move v2, v1

    if-gez v2, :cond_0

    .line 171
    const-string/jumbo v2, "SpriteAnimatorBuilder"

    const-string/jumbo v3, "startFrame should always be non-negative"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 172
    const/4 v2, 0x0

    move v1, v2

    .line 174
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->startFrame:I

    .line 175
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    return-object v0
.end method

.method public varargs translateX([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    .locals 7

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v1, p1

    .local v1, "fractions":[F
    move-object v2, p2

    .local v2, "translateX":[Ljava/lang/Integer;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/github/ybq/android/spinkit/sprite/Sprite;->TRANSLATE_X:Landroid/util/Property;

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Integer;)V

    .line 96
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    return-object v0
.end method

.method public varargs translateXPercentage([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    .locals 7

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v1, p1

    .local v1, "fractions":[F
    move-object v2, p2

    .local v2, "translateXPercentage":[Ljava/lang/Float;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/github/ybq/android/spinkit/sprite/Sprite;->TRANSLATE_X_PERCENTAGE:Landroid/util/Property;

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Float;)V

    .line 114
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    return-object v0
.end method

.method public varargs translateY([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    .locals 7

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v1, p1

    .local v1, "fractions":[F
    move-object v2, p2

    .local v2, "translateY":[Ljava/lang/Integer;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/github/ybq/android/spinkit/sprite/Sprite;->TRANSLATE_Y:Landroid/util/Property;

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Integer;)V

    .line 103
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    return-object v0
.end method

.method public varargs translateYPercentage([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    .locals 7

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    move-object v1, p1

    .local v1, "fractions":[F
    move-object v2, p2

    .local v2, "translateYPercentage":[Ljava/lang/Float;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/github/ybq/android/spinkit/sprite/Sprite;->TRANSLATE_Y_PERCENTAGE:Landroid/util/Property;

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->holder([FLandroid/util/Property;[Ljava/lang/Float;)V

    .line 119
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;
    return-object v0
.end method
