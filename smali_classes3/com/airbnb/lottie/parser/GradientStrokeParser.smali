.class Lcom/airbnb/lottie/parser/GradientStrokeParser;
.super Ljava/lang/Object;
.source "GradientStrokeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/GradientStrokeParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientStroke;
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    move-object/from16 v2, p0

    .local v2, "reader":Landroid/util/JsonReader;
    move-object/from16 v3, p1

    .local v3, "composition":Lcom/airbnb/lottie/LottieComposition;
    const/16 v24, 0x0

    move-object/from16 v4, v24

    .line 25
    .local v4, "name":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v5, v24

    .line 26
    .local v5, "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    const/16 v24, 0x0

    move-object/from16 v6, v24

    .line 27
    .local v6, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    const/16 v24, 0x0

    move-object/from16 v7, v24

    .line 28
    .local v7, "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    const/16 v24, 0x0

    move-object/from16 v8, v24

    .line 29
    .local v8, "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    const/16 v24, 0x0

    move-object/from16 v9, v24

    .line 30
    .local v9, "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    const/16 v24, 0x0

    move-object/from16 v10, v24

    .line 31
    .local v10, "width":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/16 v24, 0x0

    move-object/from16 v11, v24

    .line 32
    .local v11, "capType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    const/16 v24, 0x0

    move-object/from16 v12, v24

    .line 33
    .local v12, "joinType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    const/16 v24, 0x0

    move-object/from16 v13, v24

    .line 34
    .local v13, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/16 v24, 0x0

    move/from16 v14, v24

    .line 35
    .local v14, "miterLimit":F
    const/16 v24, 0x0

    move/from16 v15, v24

    .line 38
    .local v15, "hidden":Z
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v39, v24

    move-object/from16 v24, v39

    move-object/from16 v25, v39

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v24

    .line 40
    .local v16, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    :goto_0
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 41
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v17, v24

    const/16 v24, -0x1

    move/from16 v18, v24

    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_0

    :cond_0
    :goto_1
    move/from16 v24, v18

    packed-switch v24, :pswitch_data_0

    .line 123
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->skipValue()V

    :cond_1
    :goto_2
    goto :goto_0

    .line 41
    :sswitch_0
    move-object/from16 v24, v17

    const-string/jumbo v25, "nm"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x0

    move/from16 v18, v24

    goto :goto_1

    :sswitch_1
    move-object/from16 v24, v17

    const-string/jumbo v25, "g"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x1

    move/from16 v18, v24

    goto :goto_1

    :sswitch_2
    move-object/from16 v24, v17

    const-string/jumbo v25, "o"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x2

    move/from16 v18, v24

    goto :goto_1

    :sswitch_3
    move-object/from16 v24, v17

    const-string/jumbo v25, "t"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x3

    move/from16 v18, v24

    goto :goto_1

    :sswitch_4
    move-object/from16 v24, v17

    const-string/jumbo v25, "s"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x4

    move/from16 v18, v24

    goto :goto_1

    :sswitch_5
    move-object/from16 v24, v17

    const-string/jumbo v25, "e"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x5

    move/from16 v18, v24

    goto :goto_1

    :sswitch_6
    move-object/from16 v24, v17

    const-string/jumbo v25, "w"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x6

    move/from16 v18, v24

    goto :goto_1

    :sswitch_7
    move-object/from16 v24, v17

    const-string/jumbo v25, "lc"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x7

    move/from16 v18, v24

    goto/16 :goto_1

    :sswitch_8
    move-object/from16 v24, v17

    const-string/jumbo v25, "lj"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x8

    move/from16 v18, v24

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v24, v17

    const-string/jumbo v25, "ml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x9

    move/from16 v18, v24

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v24, v17

    const-string/jumbo v25, "hd"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0xa

    move/from16 v18, v24

    goto/16 :goto_1

    :sswitch_b
    move-object/from16 v24, v17

    const-string/jumbo v25, "d"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0xb

    move/from16 v18, v24

    goto/16 :goto_1

    .line 43
    :pswitch_0
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v4, v24

    .line 44
    goto/16 :goto_2

    .line 46
    :pswitch_1
    const/16 v24, -0x1

    move/from16 v19, v24

    .line 47
    .local v19, "points":I
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->beginObject()V

    .line 48
    :goto_3
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 49
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v24

    const/16 v24, -0x1

    move/from16 v21, v24

    move-object/from16 v24, v20

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_1

    :cond_2
    :goto_4
    move/from16 v24, v21

    packed-switch v24, :pswitch_data_1

    .line 57
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->skipValue()V

    :goto_5
    goto :goto_3

    .line 49
    :sswitch_c
    move-object/from16 v24, v20

    const-string/jumbo v25, "p"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v24, 0x0

    move/from16 v21, v24

    goto :goto_4

    :sswitch_d
    move-object/from16 v24, v20

    const-string/jumbo v25, "k"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v24, 0x1

    move/from16 v21, v24

    goto :goto_4

    .line 51
    :pswitch_2
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextInt()I

    move-result v24

    move/from16 v19, v24

    .line 52
    goto :goto_5

    .line 54
    :pswitch_3
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move/from16 v26, v19

    invoke-static/range {v24 .. v26}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseGradientColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v24

    move-object/from16 v5, v24

    .line 55
    goto :goto_5

    .line 60
    :cond_3
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->endObject()V

    .line 61
    goto/16 :goto_2

    .line 63
    .end local v19    # "points":I
    :pswitch_4
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    invoke-static/range {v24 .. v25}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v24

    move-object/from16 v6, v24

    .line 64
    goto/16 :goto_2

    .line 66
    :pswitch_5
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextInt()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    sget-object v24, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    :goto_6
    move-object/from16 v7, v24

    .line 67
    goto/16 :goto_2

    .line 66
    :cond_4
    sget-object v24, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    goto :goto_6

    .line 69
    :pswitch_6
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    invoke-static/range {v24 .. v25}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v24

    move-object/from16 v8, v24

    .line 70
    goto/16 :goto_2

    .line 72
    :pswitch_7
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    invoke-static/range {v24 .. v25}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v24

    move-object/from16 v9, v24

    .line 73
    goto/16 :goto_2

    .line 75
    :pswitch_8
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    invoke-static/range {v24 .. v25}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v24

    move-object/from16 v10, v24

    .line 76
    goto/16 :goto_2

    .line 78
    :pswitch_9
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v24

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/util/JsonReader;->nextInt()I

    move-result v25

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    aget-object v24, v24, v25

    move-object/from16 v11, v24

    .line 79
    goto/16 :goto_2

    .line 81
    :pswitch_a
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v24

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/util/JsonReader;->nextInt()I

    move-result v25

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    aget-object v24, v24, v25

    move-object/from16 v12, v24

    .line 82
    goto/16 :goto_2

    .line 84
    :pswitch_b
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v14, v24

    .line 85
    goto/16 :goto_2

    .line 87
    :pswitch_c
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v24

    move/from16 v15, v24

    .line 88
    goto/16 :goto_2

    .line 90
    :pswitch_d
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->beginArray()V

    .line 91
    :goto_7
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 92
    const/16 v24, 0x0

    move-object/from16 v20, v24

    .line 93
    .local v20, "n":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v21, v24

    .line 94
    .local v21, "val":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->beginObject()V

    .line 95
    :goto_8
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 96
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v22, v24

    const/16 v24, -0x1

    move/from16 v23, v24

    move-object/from16 v24, v22

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_2

    :cond_5
    :goto_9
    move/from16 v24, v23

    packed-switch v24, :pswitch_data_2

    .line 104
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->skipValue()V

    :goto_a
    goto :goto_8

    .line 96
    :sswitch_e
    move-object/from16 v24, v22

    const-string/jumbo v25, "n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    const/16 v24, 0x0

    move/from16 v23, v24

    goto :goto_9

    :sswitch_f
    move-object/from16 v24, v22

    const-string/jumbo v25, "v"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    const/16 v24, 0x1

    move/from16 v23, v24

    goto :goto_9

    .line 98
    :pswitch_e
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v24

    .line 99
    goto :goto_a

    .line 101
    :pswitch_f
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    invoke-static/range {v24 .. v25}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v24

    move-object/from16 v21, v24

    .line 102
    goto :goto_a

    .line 107
    :cond_6
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->endObject()V

    .line 109
    move-object/from16 v24, v20

    const-string/jumbo v25, "o"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 110
    move-object/from16 v24, v21

    move-object/from16 v13, v24

    .line 115
    :cond_7
    :goto_b
    goto/16 :goto_7

    .line 111
    :cond_8
    move-object/from16 v24, v20

    const-string/jumbo v25, "d"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_9

    move-object/from16 v24, v20

    const-string/jumbo v25, "g"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 112
    :cond_9
    move-object/from16 v24, v3

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/airbnb/lottie/LottieComposition;->setHasDashPattern(Z)V

    .line 113
    move-object/from16 v24, v16

    move-object/from16 v25, v21

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    goto :goto_b

    .line 116
    .end local v20    # "n":Ljava/lang/String;
    .end local v21    # "val":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :cond_a
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->endArray()V

    .line 117
    move-object/from16 v24, v16

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 119
    move-object/from16 v24, v16

    move-object/from16 v25, v16

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    goto/16 :goto_2

    .line 127
    :cond_b
    new-instance v24, Lcom/airbnb/lottie/model/content/GradientStroke;

    move-object/from16 v39, v24

    move-object/from16 v24, v39

    move-object/from16 v25, v39

    move-object/from16 v26, v4

    move-object/from16 v27, v7

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    move/from16 v35, v14

    move-object/from16 v36, v16

    move-object/from16 v37, v13

    move/from16 v38, v15

    invoke-direct/range {v25 .. v38}, Lcom/airbnb/lottie/model/content/GradientStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    move-object/from16 v2, v24

    .end local v2    # "reader":Landroid/util/JsonReader;
    return-object v2

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_b
        0x65 -> :sswitch_5
        0x67 -> :sswitch_1
        0x6f -> :sswitch_2
        0x73 -> :sswitch_4
        0x74 -> :sswitch_3
        0x77 -> :sswitch_6
        0xcfc -> :sswitch_a
        0xd77 -> :sswitch_7
        0xd7e -> :sswitch_8
        0xd9f -> :sswitch_9
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 49
    :sswitch_data_1
    .sparse-switch
        0x6b -> :sswitch_d
        0x70 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 96
    :sswitch_data_2
    .sparse-switch
        0x6e -> :sswitch_e
        0x76 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
