.class Lcom/airbnb/lottie/parser/RectangleShapeParser;
.super Ljava/lang/Object;
.source "RectangleShapeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/RectangleShapeParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/RectangleShape;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    move-object/from16 v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object/from16 v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    const/4 v9, 0x0

    move-object v2, v9

    .line 21
    .local v2, "name":Ljava/lang/String;
    const/4 v9, 0x0

    move-object v3, v9

    .line 22
    .local v3, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v9, 0x0

    move-object v4, v9

    .line 23
    .local v4, "size":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    const/4 v9, 0x0

    move-object v5, v9

    .line 24
    .local v5, "roundedness":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v9, 0x0

    move v6, v9

    .line 26
    .local v6, "hidden":Z
    :goto_0
    move-object v9, v0

    invoke-virtual {v9}, Landroid/util/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 27
    move-object v9, v0

    invoke-virtual {v9}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    const/4 v9, -0x1

    move v8, v9

    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_1
    move v9, v8

    packed-switch v9, :pswitch_data_0

    .line 45
    move-object v9, v0

    invoke-virtual {v9}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 27
    :sswitch_0
    move-object v9, v7

    const-string/jumbo v10, "nm"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    move v8, v9

    goto :goto_1

    :sswitch_1
    move-object v9, v7

    const-string/jumbo v10, "p"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    move v8, v9

    goto :goto_1

    :sswitch_2
    move-object v9, v7

    const-string/jumbo v10, "s"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    move v8, v9

    goto :goto_1

    :sswitch_3
    move-object v9, v7

    const-string/jumbo v10, "r"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x3

    move v8, v9

    goto :goto_1

    :sswitch_4
    move-object v9, v7

    const-string/jumbo v10, "hd"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x4

    move v8, v9

    goto :goto_1

    .line 29
    :pswitch_0
    move-object v9, v0

    invoke-virtual {v9}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 30
    goto :goto_2

    .line 32
    :pswitch_1
    move-object v9, v0

    move-object v10, v1

    .line 33
    invoke-static {v9, v10}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v9

    move-object v3, v9

    .line 34
    goto :goto_2

    .line 36
    :pswitch_2
    move-object v9, v0

    move-object v10, v1

    invoke-static {v9, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v9

    move-object v4, v9

    .line 37
    goto :goto_2

    .line 39
    :pswitch_3
    move-object v9, v0

    move-object v10, v1

    invoke-static {v9, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v9

    move-object v5, v9

    .line 40
    goto :goto_2

    .line 42
    :pswitch_4
    move-object v9, v0

    invoke-virtual {v9}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v9

    move v6, v9

    .line 43
    goto :goto_2

    .line 49
    :cond_1
    new-instance v9, Lcom/airbnb/lottie/model/content/RectangleShape;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move v15, v6

    invoke-direct/range {v10 .. v15}, Lcom/airbnb/lottie/model/content/RectangleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    move-object v0, v9

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0

    .line 27
    nop

    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_1
        0x72 -> :sswitch_3
        0x73 -> :sswitch_2
        0xcfc -> :sswitch_4
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
