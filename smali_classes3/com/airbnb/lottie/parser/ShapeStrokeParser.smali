.class Lcom/airbnb/lottie/parser/ShapeStrokeParser;
.super Ljava/lang/Object;
.source "ShapeStrokeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/ShapeStrokeParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeStroke;
    .locals 33
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
    const/16 v20, 0x0

    move-object/from16 v4, v20

    .line 22
    .local v4, "name":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v5, v20

    .line 23
    .local v5, "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    const/16 v20, 0x0

    move-object/from16 v6, v20

    .line 24
    .local v6, "width":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/16 v20, 0x0

    move-object/from16 v7, v20

    .line 25
    .local v7, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    const/16 v20, 0x0

    move-object/from16 v8, v20

    .line 26
    .local v8, "capType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    const/16 v20, 0x0

    move-object/from16 v9, v20

    .line 27
    .local v9, "joinType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    const/16 v20, 0x0

    move-object/from16 v10, v20

    .line 28
    .local v10, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/16 v20, 0x0

    move/from16 v11, v20

    .line 29
    .local v11, "miterLimit":F
    const/16 v20, 0x0

    move/from16 v12, v20

    .line 31
    .local v12, "hidden":Z
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v32, v20

    move-object/from16 v20, v32

    move-object/from16 v21, v32

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v13, v20

    .line 33
    .local v13, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    :goto_0
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonReader;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 34
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v14, v20

    const/16 v20, -0x1

    move/from16 v15, v20

    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    :cond_0
    :goto_1
    move/from16 v20, v15

    packed-switch v20, :pswitch_data_0

    .line 99
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonReader;->skipValue()V

    :cond_1
    :goto_2
    goto :goto_0

    .line 34
    :sswitch_0
    move-object/from16 v20, v14

    const-string/jumbo v21, "nm"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x0

    move/from16 v15, v20

    goto :goto_1

    :sswitch_1
    move-object/from16 v20, v14

    const-string/jumbo v21, "c"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x1

    move/from16 v15, v20

    goto :goto_1

    :sswitch_2
    move-object/from16 v20, v14

    const-string/jumbo v21, "w"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x2

    move/from16 v15, v20

    goto :goto_1

    :sswitch_3
    move-object/from16 v20, v14

    const-string/jumbo v21, "o"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x3

    move/from16 v15, v20

    goto :goto_1

    :sswitch_4
    move-object/from16 v20, v14

    const-string/jumbo v21, "lc"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x4

    move/from16 v15, v20

    goto :goto_1

    :sswitch_5
    move-object/from16 v20, v14

    const-string/jumbo v21, "lj"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x5

    move/from16 v15, v20

    goto :goto_1

    :sswitch_6
    move-object/from16 v20, v14

    const-string/jumbo v21, "ml"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x6

    move/from16 v15, v20

    goto :goto_1

    :sswitch_7
    move-object/from16 v20, v14

    const-string/jumbo v21, "hd"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x7

    move/from16 v15, v20

    goto/16 :goto_1

    :sswitch_8
    move-object/from16 v20, v14

    const-string/jumbo v21, "d"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x8

    move/from16 v15, v20

    goto/16 :goto_1

    .line 36
    :pswitch_0
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v4, v20

    .line 37
    goto/16 :goto_2

    .line 39
    :pswitch_1
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-static/range {v20 .. v21}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v20

    move-object/from16 v5, v20

    .line 40
    goto/16 :goto_2

    .line 42
    :pswitch_2
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-static/range {v20 .. v21}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v20

    move-object/from16 v6, v20

    .line 43
    goto/16 :goto_2

    .line 45
    :pswitch_3
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-static/range {v20 .. v21}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v20

    move-object/from16 v7, v20

    .line 46
    goto/16 :goto_2

    .line 48
    :pswitch_4
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v20

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/util/JsonReader;->nextInt()I

    move-result v21

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v20, v21

    move-object/from16 v8, v20

    .line 49
    goto/16 :goto_2

    .line 51
    :pswitch_5
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v20

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/util/JsonReader;->nextInt()I

    move-result v21

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v20, v21

    move-object/from16 v9, v20

    .line 52
    goto/16 :goto_2

    .line 54
    :pswitch_6
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v11, v20

    .line 55
    goto/16 :goto_2

    .line 57
    :pswitch_7
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v20

    move/from16 v12, v20

    .line 58
    goto/16 :goto_2

    .line 60
    :pswitch_8
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonReader;->beginArray()V

    .line 61
    :goto_3
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonReader;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 62
    const/16 v20, 0x0

    move-object/from16 v16, v20

    .line 63
    .local v16, "n":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v17, v20

    .line 65
    .local v17, "val":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonReader;->beginObject()V

    .line 66
    :goto_4
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonReader;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 67
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v20

    const/16 v20, -0x1

    move/from16 v19, v20

    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_1

    :cond_2
    :goto_5
    move/from16 v20, v19

    packed-switch v20, :pswitch_data_1

    .line 75
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonReader;->skipValue()V

    :goto_6
    goto :goto_4

    .line 67
    :sswitch_9
    move-object/from16 v20, v18

    const-string/jumbo v21, "n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v20, 0x0

    move/from16 v19, v20

    goto :goto_5

    :sswitch_a
    move-object/from16 v20, v18

    const-string/jumbo v21, "v"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v20, 0x1

    move/from16 v19, v20

    goto :goto_5

    .line 69
    :pswitch_9
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v20

    .line 70
    goto :goto_6

    .line 72
    :pswitch_a
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-static/range {v20 .. v21}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v20

    move-object/from16 v17, v20

    .line 73
    goto :goto_6

    .line 78
    :cond_3
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonReader;->endObject()V

    .line 80
    move-object/from16 v20, v16

    move-object/from16 v18, v20

    const/16 v20, -0x1

    move/from16 v19, v20

    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_2

    :cond_4
    :goto_7
    move/from16 v20, v19

    packed-switch v20, :pswitch_data_2

    .line 90
    :goto_8
    goto/16 :goto_3

    .line 80
    :sswitch_b
    move-object/from16 v20, v18

    const-string/jumbo v21, "o"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v20, 0x0

    move/from16 v19, v20

    goto :goto_7

    :sswitch_c
    move-object/from16 v20, v18

    const-string/jumbo v21, "d"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    move/from16 v19, v20

    goto :goto_7

    :sswitch_d
    move-object/from16 v20, v18

    const-string/jumbo v21, "g"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v20, 0x2

    move/from16 v19, v20

    goto :goto_7

    .line 82
    :pswitch_b
    move-object/from16 v20, v17

    move-object/from16 v10, v20

    .line 83
    goto :goto_8

    .line 86
    :pswitch_c
    move-object/from16 v20, v3

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/airbnb/lottie/LottieComposition;->setHasDashPattern(Z)V

    .line 87
    move-object/from16 v20, v13

    move-object/from16 v21, v17

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v20

    goto :goto_8

    .line 91
    .end local v16    # "n":Ljava/lang/String;
    .end local v17    # "val":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :cond_5
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/util/JsonReader;->endArray()V

    .line 93
    move-object/from16 v20, v13

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 95
    move-object/from16 v20, v13

    move-object/from16 v21, v13

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v20

    goto/16 :goto_2

    .line 103
    :cond_6
    new-instance v20, Lcom/airbnb/lottie/model/content/ShapeStroke;

    move-object/from16 v32, v20

    move-object/from16 v20, v32

    move-object/from16 v21, v32

    move-object/from16 v22, v4

    move-object/from16 v23, v10

    move-object/from16 v24, v13

    move-object/from16 v25, v5

    move-object/from16 v26, v7

    move-object/from16 v27, v6

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move/from16 v30, v11

    move/from16 v31, v12

    invoke-direct/range {v21 .. v31}, Lcom/airbnb/lottie/model/content/ShapeStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V

    move-object/from16 v2, v20

    .end local v2    # "reader":Landroid/util/JsonReader;
    return-object v2

    .line 34
    nop

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_1
        0x64 -> :sswitch_8
        0x6f -> :sswitch_3
        0x77 -> :sswitch_2
        0xcfc -> :sswitch_7
        0xd77 -> :sswitch_4
        0xd7e -> :sswitch_5
        0xd9f -> :sswitch_6
        0xdbf -> :sswitch_0
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
    .end packed-switch

    .line 67
    :sswitch_data_1
    .sparse-switch
        0x6e -> :sswitch_9
        0x76 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 80
    :sswitch_data_2
    .sparse-switch
        0x64 -> :sswitch_c
        0x67 -> :sswitch_d
        0x6f -> :sswitch_b
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
