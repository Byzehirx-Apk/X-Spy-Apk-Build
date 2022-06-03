.class Lcom/airbnb/lottie/parser/CircleShapeParser;
.super Ljava/lang/Object;
.source "CircleShapeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/CircleShapeParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/content/CircleShape;
    .locals 18
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
    move/from16 v2, p2

    .local v2, "d":I
    const/4 v10, 0x0

    move-object v3, v10

    .line 20
    .local v3, "name":Ljava/lang/String;
    const/4 v10, 0x0

    move-object v4, v10

    .line 21
    .local v4, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v10, 0x0

    move-object v5, v10

    .line 22
    .local v5, "size":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    move v10, v2

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    const/4 v10, 0x1

    :goto_0
    move v6, v10

    .line 23
    .local v6, "reversed":Z
    const/4 v10, 0x0

    move v7, v10

    .line 25
    .local v7, "hidden":Z
    :goto_1
    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 26
    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    const/4 v10, -0x1

    move v9, v10

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    :goto_2
    move v10, v9

    packed-switch v10, :pswitch_data_0

    .line 44
    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/JsonReader;->skipValue()V

    :goto_3
    goto :goto_1

    .line 22
    .end local v6    # "reversed":Z
    .end local v7    # "hidden":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 26
    .restart local v6    # "reversed":Z
    .restart local v7    # "hidden":Z
    :sswitch_0
    move-object v10, v8

    const-string/jumbo v11, "nm"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    move v9, v10

    goto :goto_2

    :sswitch_1
    move-object v10, v8

    const-string/jumbo v11, "p"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    move v9, v10

    goto :goto_2

    :sswitch_2
    move-object v10, v8

    const-string/jumbo v11, "s"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x2

    move v9, v10

    goto :goto_2

    :sswitch_3
    move-object v10, v8

    const-string/jumbo v11, "hd"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x3

    move v9, v10

    goto :goto_2

    :sswitch_4
    move-object v10, v8

    const-string/jumbo v11, "d"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x4

    move v9, v10

    goto :goto_2

    .line 28
    :pswitch_0
    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 29
    goto :goto_3

    .line 31
    :pswitch_1
    move-object v10, v0

    move-object v11, v1

    invoke-static {v10, v11}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v10

    move-object v4, v10

    .line 32
    goto :goto_3

    .line 34
    :pswitch_2
    move-object v10, v0

    move-object v11, v1

    invoke-static {v10, v11}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v10

    move-object v5, v10

    .line 35
    goto :goto_3

    .line 37
    :pswitch_3
    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v10

    move v7, v10

    .line 38
    goto :goto_3

    .line 41
    :pswitch_4
    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextInt()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_4
    move v6, v10

    .line 42
    goto :goto_3

    .line 41
    :cond_2
    const/4 v10, 0x0

    goto :goto_4

    .line 48
    :cond_3
    new-instance v10, Lcom/airbnb/lottie/model/content/CircleShape;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move v15, v6

    move/from16 v16, v7

    invoke-direct/range {v11 .. v16}, Lcom/airbnb/lottie/model/content/CircleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;ZZ)V

    move-object v0, v10

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0

    .line 26
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_4
        0x70 -> :sswitch_1
        0x73 -> :sswitch_2
        0xcfc -> :sswitch_3
        0xdbf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
