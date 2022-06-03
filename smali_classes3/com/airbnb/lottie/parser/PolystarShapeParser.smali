.class Lcom/airbnb/lottie/parser/PolystarShapeParser;
.super Ljava/lang/Object;
.source "PolystarShapeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/PolystarShapeParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/PolystarShape;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    move-object/from16 v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object/from16 v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    const/4 v14, 0x0

    move-object v2, v14

    .line 20
    .local v2, "name":Ljava/lang/String;
    const/4 v14, 0x0

    move-object v3, v14

    .line 21
    .local v3, "type":Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    const/4 v14, 0x0

    move-object v4, v14

    .line 22
    .local v4, "points":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v14, 0x0

    move-object v5, v14

    .line 23
    .local v5, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v14, 0x0

    move-object v6, v14

    .line 24
    .local v6, "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v14, 0x0

    move-object v7, v14

    .line 25
    .local v7, "outerRadius":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v14, 0x0

    move-object v8, v14

    .line 26
    .local v8, "outerRoundedness":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v14, 0x0

    move-object v9, v14

    .line 27
    .local v9, "innerRadius":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v14, 0x0

    move-object v10, v14

    .line 28
    .local v10, "innerRoundedness":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v14, 0x0

    move v11, v14

    .line 30
    .local v11, "hidden":Z
    :goto_0
    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 31
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

    :cond_0
    :goto_1
    move v14, v13

    packed-switch v14, :pswitch_data_0

    .line 63
    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 31
    :sswitch_0
    move-object v14, v12

    const-string/jumbo v15, "nm"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    move v13, v14

    goto :goto_1

    :sswitch_1
    move-object v14, v12

    const-string/jumbo v15, "sy"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x1

    move v13, v14

    goto :goto_1

    :sswitch_2
    move-object v14, v12

    const-string/jumbo v15, "pt"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x2

    move v13, v14

    goto :goto_1

    :sswitch_3
    move-object v14, v12

    const-string/jumbo v15, "p"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x3

    move v13, v14

    goto :goto_1

    :sswitch_4
    move-object v14, v12

    const-string/jumbo v15, "r"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x4

    move v13, v14

    goto :goto_1

    :sswitch_5
    move-object v14, v12

    const-string/jumbo v15, "or"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x5

    move v13, v14

    goto :goto_1

    :sswitch_6
    move-object v14, v12

    const-string/jumbo v15, "os"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x6

    move v13, v14

    goto :goto_1

    :sswitch_7
    move-object v14, v12

    const-string/jumbo v15, "ir"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x7

    move v13, v14

    goto :goto_1

    :sswitch_8
    move-object v14, v12

    const-string/jumbo v15, "is"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x8

    move v13, v14

    goto :goto_1

    :sswitch_9
    move-object v14, v12

    const-string/jumbo v15, "hd"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x9

    move v13, v14

    goto/16 :goto_1

    .line 33
    :pswitch_0
    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v14

    move-object v2, v14

    .line 34
    goto/16 :goto_2

    .line 36
    :pswitch_1
    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/JsonReader;->nextInt()I

    move-result v14

    invoke-static {v14}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->forValue(I)Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-result-object v14

    move-object v3, v14

    .line 37
    goto/16 :goto_2

    .line 39
    :pswitch_2
    move-object v14, v0

    move-object v15, v1

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v14

    move-object v4, v14

    .line 40
    goto/16 :goto_2

    .line 42
    :pswitch_3
    move-object v14, v0

    move-object v15, v1

    invoke-static {v14, v15}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v14

    move-object v5, v14

    .line 43
    goto/16 :goto_2

    .line 45
    :pswitch_4
    move-object v14, v0

    move-object v15, v1

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v14

    move-object v6, v14

    .line 46
    goto/16 :goto_2

    .line 48
    :pswitch_5
    move-object v14, v0

    move-object v15, v1

    invoke-static {v14, v15}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v14

    move-object v7, v14

    .line 49
    goto/16 :goto_2

    .line 51
    :pswitch_6
    move-object v14, v0

    move-object v15, v1

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v14

    move-object v8, v14

    .line 52
    goto/16 :goto_2

    .line 54
    :pswitch_7
    move-object v14, v0

    move-object v15, v1

    invoke-static {v14, v15}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v14

    move-object v9, v14

    .line 55
    goto/16 :goto_2

    .line 57
    :pswitch_8
    move-object v14, v0

    move-object v15, v1

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v14

    move-object v10, v14

    .line 58
    goto/16 :goto_2

    .line 60
    :pswitch_9
    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v14

    move v11, v14

    .line 61
    goto/16 :goto_2

    .line 67
    :cond_1
    new-instance v14, Lcom/airbnb/lottie/model/content/PolystarShape;

    move-object/from16 v26, v14

    move-object/from16 v14, v26

    move-object/from16 v15, v26

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v9

    move-object/from16 v22, v7

    move-object/from16 v23, v10

    move-object/from16 v24, v8

    move/from16 v25, v11

    invoke-direct/range {v15 .. v25}, Lcom/airbnb/lottie/model/content/PolystarShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    move-object v0, v14

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0

    .line 31
    nop

    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_3
        0x72 -> :sswitch_4
        0xcfc -> :sswitch_9
        0xd29 -> :sswitch_7
        0xd2a -> :sswitch_8
        0xdbf -> :sswitch_0
        0xde3 -> :sswitch_5
        0xde4 -> :sswitch_6
        0xe04 -> :sswitch_2
        0xe66 -> :sswitch_1
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
