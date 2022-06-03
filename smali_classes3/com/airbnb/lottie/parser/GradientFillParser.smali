.class Lcom/airbnb/lottie/parser/GradientFillParser;
.super Ljava/lang/Object;
.source "GradientFillParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/GradientFillParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientFill;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    move-object/from16 v2, p0

    .local v2, "reader":Landroid/util/JsonReader;
    move-object/from16 v3, p1

    .local v3, "composition":Lcom/airbnb/lottie/LottieComposition;
    const/16 v17, 0x0

    move-object/from16 v4, v17

    .line 22
    .local v4, "name":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v5, v17

    .line 23
    .local v5, "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    const/16 v17, 0x0

    move-object/from16 v6, v17

    .line 24
    .local v6, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    const/16 v17, 0x0

    move-object/from16 v7, v17

    .line 25
    .local v7, "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    const/16 v17, 0x0

    move-object/from16 v8, v17

    .line 26
    .local v8, "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    const/16 v17, 0x0

    move-object/from16 v9, v17

    .line 27
    .local v9, "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    sget-object v17, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    move-object/from16 v10, v17

    .line 28
    .local v10, "fillType":Landroid/graphics/Path$FillType;
    const/16 v17, 0x0

    move/from16 v11, v17

    .line 30
    .local v11, "hidden":Z
    :goto_0
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/util/JsonReader;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 31
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v12, v17

    const/16 v17, -0x1

    move/from16 v13, v17

    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :cond_0
    :goto_1
    move/from16 v17, v13

    packed-switch v17, :pswitch_data_0

    .line 71
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 31
    :sswitch_0
    move-object/from16 v17, v12

    const-string/jumbo v18, "nm"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x0

    move/from16 v13, v17

    goto :goto_1

    :sswitch_1
    move-object/from16 v17, v12

    const-string/jumbo v18, "g"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x1

    move/from16 v13, v17

    goto :goto_1

    :sswitch_2
    move-object/from16 v17, v12

    const-string/jumbo v18, "o"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x2

    move/from16 v13, v17

    goto :goto_1

    :sswitch_3
    move-object/from16 v17, v12

    const-string/jumbo v18, "t"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x3

    move/from16 v13, v17

    goto :goto_1

    :sswitch_4
    move-object/from16 v17, v12

    const-string/jumbo v18, "s"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x4

    move/from16 v13, v17

    goto :goto_1

    :sswitch_5
    move-object/from16 v17, v12

    const-string/jumbo v18, "e"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x5

    move/from16 v13, v17

    goto :goto_1

    :sswitch_6
    move-object/from16 v17, v12

    const-string/jumbo v18, "r"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x6

    move/from16 v13, v17

    goto :goto_1

    :sswitch_7
    move-object/from16 v17, v12

    const-string/jumbo v18, "hd"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x7

    move/from16 v13, v17

    goto/16 :goto_1

    .line 33
    :pswitch_0
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v4, v17

    .line 34
    goto/16 :goto_2

    .line 36
    :pswitch_1
    const/16 v17, -0x1

    move/from16 v14, v17

    .line 37
    .local v14, "points":I
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/util/JsonReader;->beginObject()V

    .line 38
    :goto_3
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/util/JsonReader;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 39
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v15, v17

    const/16 v17, -0x1

    move/from16 v16, v17

    move-object/from16 v17, v15

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_1

    :cond_1
    :goto_4
    move/from16 v17, v16

    packed-switch v17, :pswitch_data_1

    .line 47
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/util/JsonReader;->skipValue()V

    :goto_5
    goto :goto_3

    .line 39
    :sswitch_8
    move-object/from16 v17, v15

    const-string/jumbo v18, "p"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x0

    move/from16 v16, v17

    goto :goto_4

    :sswitch_9
    move-object/from16 v17, v15

    const-string/jumbo v18, "k"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x1

    move/from16 v16, v17

    goto :goto_4

    .line 41
    :pswitch_2
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/util/JsonReader;->nextInt()I

    move-result v17

    move/from16 v14, v17

    .line 42
    goto :goto_5

    .line 44
    :pswitch_3
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v14

    invoke-static/range {v17 .. v19}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseGradientColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v17

    move-object/from16 v5, v17

    .line 45
    goto :goto_5

    .line 50
    :cond_2
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/util/JsonReader;->endObject()V

    .line 51
    goto/16 :goto_2

    .line 53
    .end local v14    # "points":I
    :pswitch_4
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-static/range {v17 .. v18}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v17

    move-object/from16 v6, v17

    .line 54
    goto/16 :goto_2

    .line 56
    :pswitch_5
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/util/JsonReader;->nextInt()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    sget-object v17, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    :goto_6
    move-object/from16 v7, v17

    .line 57
    goto/16 :goto_2

    .line 56
    :cond_3
    sget-object v17, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    goto :goto_6

    .line 59
    :pswitch_6
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-static/range {v17 .. v18}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v17

    move-object/from16 v8, v17

    .line 60
    goto/16 :goto_2

    .line 62
    :pswitch_7
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-static/range {v17 .. v18}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v17

    move-object/from16 v9, v17

    .line 63
    goto/16 :goto_2

    .line 65
    :pswitch_8
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/util/JsonReader;->nextInt()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    sget-object v17, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_7
    move-object/from16 v10, v17

    .line 66
    goto/16 :goto_2

    .line 65
    :cond_4
    sget-object v17, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_7

    .line 68
    :pswitch_9
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v17

    move/from16 v11, v17

    .line 69
    goto/16 :goto_2

    .line 75
    :cond_5
    new-instance v17, Lcom/airbnb/lottie/model/content/GradientFill;

    move-object/from16 v29, v17

    move-object/from16 v17, v29

    move-object/from16 v18, v29

    move-object/from16 v19, v4

    move-object/from16 v20, v7

    move-object/from16 v21, v10

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v28, v11

    invoke-direct/range {v18 .. v28}, Lcom/airbnb/lottie/model/content/GradientFill;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    move-object/from16 v2, v17

    .end local v2    # "reader":Landroid/util/JsonReader;
    return-object v2

    .line 31
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_5
        0x67 -> :sswitch_1
        0x6f -> :sswitch_2
        0x72 -> :sswitch_6
        0x73 -> :sswitch_4
        0x74 -> :sswitch_3
        0xcfc -> :sswitch_7
        0xdbf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 39
    :sswitch_data_1
    .sparse-switch
        0x6b -> :sswitch_9
        0x70 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
