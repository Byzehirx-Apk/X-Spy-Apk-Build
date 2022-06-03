.class public Lcom/airbnb/lottie/parser/AnimatablePathValueParser;
.super Ljava/lang/Object;
.source "AnimatablePathValueParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/AnimatablePathValueParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    new-instance v3, Ljava/util/ArrayList;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 26
    .local v2, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Landroid/graphics/PointF;>;>;"
    move-object v3, v0

    invoke-virtual {v3}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v3, v4, :cond_1

    .line 27
    move-object v3, v0

    invoke-virtual {v3}, Landroid/util/JsonReader;->beginArray()V

    .line 28
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/airbnb/lottie/parser/PathKeyframeParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 31
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/util/JsonReader;->endArray()V

    .line 32
    move-object v3, v2

    invoke-static {v3}, Lcom/airbnb/lottie/parser/KeyframesParser;->setEndFrames(Ljava/util/List;)V

    .line 36
    :goto_1
    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>(Ljava/util/List;)V

    move-object v0, v3

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0

    .line 34
    .restart local v0    # "reader":Landroid/util/JsonReader;
    :cond_1
    move-object v3, v2

    new-instance v4, Lcom/airbnb/lottie/value/Keyframe;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v7

    invoke-static {v6, v7}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1
.end method

.method static parseSplitPath(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            ")",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    const/4 v8, 0x0

    move-object v2, v8

    .line 46
    .local v2, "pathAnimation":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    const/4 v8, 0x0

    move-object v3, v8

    .line 47
    .local v3, "xAnimation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v8, 0x0

    move-object v4, v8

    .line 49
    .local v4, "yAnimation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v8, 0x0

    move v5, v8

    .line 51
    .local v5, "hasExpressions":Z
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->beginObject()V

    .line 52
    :goto_0
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v8

    sget-object v9, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    if-eq v8, v9, :cond_3

    .line 53
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    const/4 v8, -0x1

    move v7, v8

    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_1
    move v8, v7

    packed-switch v8, :pswitch_data_0

    .line 74
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 53
    :sswitch_0
    move-object v8, v6

    const-string/jumbo v9, "k"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    move v7, v8

    goto :goto_1

    :sswitch_1
    move-object v8, v6

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    move v7, v8

    goto :goto_1

    :sswitch_2
    move-object v8, v6

    const-string/jumbo v9, "y"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    move v7, v8

    goto :goto_1

    .line 55
    :pswitch_0
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    move-result-object v8

    move-object v2, v8

    .line 56
    goto :goto_2

    .line 58
    :pswitch_1
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v8

    sget-object v9, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v8, v9, :cond_1

    .line 59
    const/4 v8, 0x1

    move v5, v8

    .line 60
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2

    .line 62
    :cond_1
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v8

    move-object v3, v8

    .line 64
    goto :goto_2

    .line 66
    :pswitch_2
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v8

    sget-object v9, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v8, v9, :cond_2

    .line 67
    const/4 v8, 0x1

    move v5, v8

    .line 68
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2

    .line 70
    :cond_2
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v8

    move-object v4, v8

    .line 72
    goto :goto_2

    .line 77
    :cond_3
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->endObject()V

    .line 79
    move v8, v5

    if-eqz v8, :cond_4

    .line 80
    move-object v8, v1

    const-string/jumbo v9, "Lottie doesn\'t support expressions."

    invoke-virtual {v8, v9}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 83
    :cond_4
    move-object v8, v2

    if-eqz v8, :cond_5

    .line 84
    move-object v8, v2

    move-object v0, v8

    .line 86
    .end local v0    # "reader":Landroid/util/JsonReader;
    :goto_3
    return-object v0

    .restart local v0    # "reader":Landroid/util/JsonReader;
    :cond_5
    new-instance v8, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v3

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    move-object v0, v8

    goto :goto_3

    .line 53
    nop

    :sswitch_data_0
    .sparse-switch
        0x6b -> :sswitch_0
        0x78 -> :sswitch_1
        0x79 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
