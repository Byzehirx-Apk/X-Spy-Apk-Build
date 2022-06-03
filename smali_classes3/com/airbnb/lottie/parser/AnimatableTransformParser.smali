.class public Lcom/airbnb/lottie/parser/AnimatableTransformParser;
.super Ljava/lang/Object;
.source "AnimatableTransformParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/AnimatableTransformParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static isAnchorPointIdentity(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;)Z
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "anchorPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "anchorPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    return v0

    .restart local v0    # "anchorPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isPositionIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableValue;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;

    if-nez v1, :cond_1

    move-object v1, v0

    .line 130
    invoke-interface {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-interface {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 128
    :goto_0
    move v0, v1

    .end local v0    # "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    return v0

    .line 130
    .restart local v0    # "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isRotationIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z
    .locals 3

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    return v0

    .restart local v0    # "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isScaleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;)Z
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "scale":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/value/ScaleXY;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/lottie/value/ScaleXY;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "scale":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    return v0

    .restart local v0    # "scale":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSkewAngleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z
    .locals 3

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "skewAngle":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "skewAngle":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    return v0

    .restart local v0    # "skewAngle":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSkewIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "skew":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "skew":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    return v0

    .restart local v0    # "skew":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    move-object/from16 v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object/from16 v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    const/4 v14, 0x0

    move-object v2, v14

    .line 26
    .local v2, "anchorPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    const/4 v14, 0x0

    move-object v3, v14

    .line 27
    .local v3, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v14, 0x0

    move-object v4, v14

    .line 28
    .local v4, "scale":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    const/4 v14, 0x0

    move-object v5, v14

    .line 29
    .local v5, "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v14, 0x0

    move-object v6, v14

    .line 30
    .local v6, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    const/4 v14, 0x0

    move-object v7, v14

    .line 31
    .local v7, "startOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v14, 0x0

    move-object v8, v14

    .line 32
    .local v8, "endOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v14, 0x0

    move-object v9, v14

    .line 33
    .local v9, "skew":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v14, 0x0

    move-object v10, v14

    .line 35
    .local v10, "skewAngle":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v14

    sget-object v15, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v14, v15, :cond_3

    const/4 v14, 0x1

    :goto_0
    move v11, v14

    .line 36
    .local v11, "isObject":Z
    move v14, v11

    if-eqz v14, :cond_0

    .line 37
    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/JsonReader;->beginObject()V

    .line 39
    :cond_0
    :goto_1
    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 40
    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    const/4 v14, -0x1

    move v13, v14

    move-object v14, v12

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :cond_1
    :goto_2
    move v14, v13

    packed-switch v14, :pswitch_data_0

    .line 95
    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/JsonReader;->skipValue()V

    :cond_2
    :goto_3
    goto :goto_1

    .line 35
    .end local v11    # "isObject":Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 40
    .restart local v11    # "isObject":Z
    :sswitch_0
    move-object v14, v12

    const-string/jumbo v15, "a"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    move v13, v14

    goto :goto_2

    :sswitch_1
    move-object v14, v12

    const-string/jumbo v15, "p"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    move v13, v14

    goto :goto_2

    :sswitch_2
    move-object v14, v12

    const-string/jumbo v15, "s"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x2

    move v13, v14

    goto :goto_2

    :sswitch_3
    move-object v14, v12

    const-string/jumbo v15, "rz"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x3

    move v13, v14

    goto :goto_2

    :sswitch_4
    move-object v14, v12

    const-string/jumbo v15, "r"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x4

    move v13, v14

    goto :goto_2

    :sswitch_5
    move-object v14, v12

    const-string/jumbo v15, "o"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x5

    move v13, v14

    goto :goto_2

    :sswitch_6
    move-object v14, v12

    const-string/jumbo v15, "so"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x6

    move v13, v14

    goto :goto_2

    :sswitch_7
    move-object v14, v12

    const-string/jumbo v15, "eo"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x7

    move v13, v14

    goto :goto_2

    :sswitch_8
    move-object v14, v12

    const-string/jumbo v15, "sk"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/16 v14, 0x8

    move v13, v14

    goto :goto_2

    :sswitch_9
    move-object v14, v12

    const-string/jumbo v15, "sa"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/16 v14, 0x9

    move v13, v14

    goto/16 :goto_2

    .line 42
    :pswitch_0
    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/JsonReader;->beginObject()V

    .line 43
    :goto_4
    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 44
    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "k"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 45
    move-object v14, v0

    move-object v15, v1

    invoke-static {v14, v15}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    move-result-object v14

    move-object v2, v14

    goto :goto_4

    .line 47
    :cond_4
    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    .line 50
    :cond_5
    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/JsonReader;->endObject()V

    .line 51
    goto/16 :goto_3

    .line 53
    :pswitch_1
    move-object v14, v0

    move-object v15, v1

    .line 54
    invoke-static {v14, v15}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v14

    move-object v3, v14

    .line 55
    goto/16 :goto_3

    .line 57
    :pswitch_2
    move-object v14, v0

    move-object v15, v1

    invoke-static {v14, v15}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseScale(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    move-result-object v14

    move-object v4, v14

    .line 58
    goto/16 :goto_3

    .line 60
    :pswitch_3
    move-object v14, v1

    const-string/jumbo v15, "Lottie doesn\'t support 3D layers."

    invoke-virtual {v14, v15}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 72
    :pswitch_4
    move-object v14, v0

    move-object v15, v1

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v14

    move-object v5, v14

    .line 73
    move-object v14, v5

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 74
    move-object v14, v5

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v14

    new-instance v15, Lcom/airbnb/lottie/value/Keyframe;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    move-object/from16 v17, v1

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-direct/range {v16 .. v22}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v14

    goto/16 :goto_3

    .line 75
    :cond_6
    move-object v14, v5

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v14, v14, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-nez v14, :cond_2

    .line 76
    move-object v14, v5

    invoke-virtual {v14}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->getKeyframes()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    new-instance v16, Lcom/airbnb/lottie/value/Keyframe;

    move-object/from16 v25, v16

    move-object/from16 v16, v25

    move-object/from16 v17, v25

    move-object/from16 v18, v1

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v1

    invoke-virtual/range {v23 .. v23}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    invoke-direct/range {v17 .. v23}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface/range {v14 .. v16}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_3

    .line 80
    :pswitch_5
    move-object v14, v0

    move-object v15, v1

    invoke-static {v14, v15}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v14

    move-object v6, v14

    .line 81
    goto/16 :goto_3

    .line 83
    :pswitch_6
    move-object v14, v0

    move-object v15, v1

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v14

    move-object v7, v14

    .line 84
    goto/16 :goto_3

    .line 86
    :pswitch_7
    move-object v14, v0

    move-object v15, v1

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v14

    move-object v8, v14

    .line 87
    goto/16 :goto_3

    .line 89
    :pswitch_8
    move-object v14, v0

    move-object v15, v1

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v14

    move-object v9, v14

    .line 90
    goto/16 :goto_3

    .line 92
    :pswitch_9
    move-object v14, v0

    move-object v15, v1

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v14

    move-object v10, v14

    .line 93
    goto/16 :goto_3

    .line 98
    :cond_7
    move v14, v11

    if-eqz v14, :cond_8

    .line 99
    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/JsonReader;->endObject()V

    .line 102
    :cond_8
    move-object v14, v2

    invoke-static {v14}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isAnchorPointIdentity(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 103
    const/4 v14, 0x0

    move-object v2, v14

    .line 105
    :cond_9
    move-object v14, v3

    invoke-static {v14}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isPositionIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableValue;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 106
    const/4 v14, 0x0

    move-object v3, v14

    .line 108
    :cond_a
    move-object v14, v5

    invoke-static {v14}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isRotationIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 109
    const/4 v14, 0x0

    move-object v5, v14

    .line 111
    :cond_b
    move-object v14, v4

    invoke-static {v14}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isScaleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 112
    const/4 v14, 0x0

    move-object v4, v14

    .line 114
    :cond_c
    move-object v14, v9

    invoke-static {v14}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isSkewIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 115
    const/4 v14, 0x0

    move-object v9, v14

    .line 117
    :cond_d
    move-object v14, v10

    invoke-static {v14}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->isSkewAngleIdentity(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 118
    const/4 v14, 0x0

    move-object v10, v14

    .line 120
    :cond_e
    new-instance v14, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    invoke-direct/range {v15 .. v24}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    move-object v0, v14

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x6f -> :sswitch_5
        0x70 -> :sswitch_1
        0x72 -> :sswitch_4
        0x73 -> :sswitch_2
        0xcaa -> :sswitch_7
        0xe48 -> :sswitch_3
        0xe4e -> :sswitch_9
        0xe58 -> :sswitch_8
        0xe5c -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
