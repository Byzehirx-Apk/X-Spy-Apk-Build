.class Lcom/airbnb/lottie/parser/KeyframesParser;
.super Ljava/lang/Object;
.source "KeyframesParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/KeyframesParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/parser/ValueParser",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move/from16 v2, p2

    .local v2, "scale":F
    move-object/from16 v3, p3

    .local v3, "valueParser":Lcom/airbnb/lottie/parser/ValueParser;, "Lcom/airbnb/lottie/parser/ValueParser<TT;>;"
    new-instance v7, Ljava/util/ArrayList;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 23
    .local v4, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<TT;>;>;"
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v7

    sget-object v8, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v7, v8, :cond_0

    .line 24
    move-object v7, v1

    const-string/jumbo v8, "Lottie doesn\'t support expressions."

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 25
    move-object v7, v4

    move-object v0, v7

    .line 55
    .end local v0    # "reader":Landroid/util/JsonReader;
    :goto_0
    return-object v0

    .line 28
    .restart local v0    # "reader":Landroid/util/JsonReader;
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    .line 29
    :goto_1
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 30
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    const/4 v7, -0x1

    move v6, v7

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_1
    :goto_2
    move v7, v6

    packed-switch v7, :pswitch_data_1

    .line 49
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->skipValue()V

    :goto_3
    goto :goto_1

    .line 30
    :pswitch_0
    move-object v7, v5

    const-string/jumbo v8, "k"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    move v6, v7

    goto :goto_2

    .line 32
    :pswitch_1
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v7

    sget-object v8, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v7, v8, :cond_4

    .line 33
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->beginArray()V

    .line 35
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v7

    sget-object v8, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v7, v8, :cond_3

    .line 37
    move-object v7, v4

    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    const/4 v12, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 43
    :cond_2
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->endArray()V

    goto :goto_3

    .line 39
    :cond_3
    :goto_4
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 40
    move-object v7, v4

    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    const/4 v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_4

    .line 45
    :cond_4
    move-object v7, v4

    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    const/4 v12, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Lcom/airbnb/lottie/parser/KeyframeParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 47
    goto :goto_3

    .line 52
    :cond_5
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V

    .line 54
    move-object v7, v4

    invoke-static {v7}, Lcom/airbnb/lottie/parser/KeyframesParser;->setEndFrames(Ljava/util/List;)V

    .line 55
    move-object v7, v4

    move-object v0, v7

    goto/16 :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x6b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static setEndFrames(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "keyframes":Ljava/util/List;, "Ljava/util/List<+Lcom/airbnb/lottie/value/Keyframe<TT;>;>;"
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v1, v5

    .line 64
    .local v1, "size":I
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    .line 66
    move-object v5, v0

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/value/Keyframe;

    move-object v3, v5

    .line 67
    .local v3, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/value/Keyframe;

    move-object v4, v5

    .line 68
    .local v4, "nextKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    move-object v5, v3

    move-object v6, v4

    iget v6, v6, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, v5, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 69
    move-object v5, v3

    iget-object v5, v5, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v5, :cond_0

    move-object v5, v4

    iget-object v5, v5, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 70
    move-object v5, v3

    move-object v6, v4

    iget-object v6, v6, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    iput-object v6, v5, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 71
    move-object v5, v3

    instance-of v5, v5, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    if-eqz v5, :cond_0

    .line 72
    move-object v5, v3

    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->createPath()V

    .line 64
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v3    # "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    .end local v4    # "nextKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    :cond_1
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/value/Keyframe;

    move-object v2, v5

    .line 77
    .local v2, "lastKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<*>;"
    move-object v5, v2

    iget-object v5, v5, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v5, :cond_2

    move-object v5, v2

    iget-object v5, v5, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v5, :cond_3

    :cond_2
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 81
    move-object v5, v0

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 83
    :cond_3
    return-void
.end method
