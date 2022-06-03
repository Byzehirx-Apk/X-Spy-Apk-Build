.class Lcom/airbnb/lottie/parser/ShapeTrimPathParser;
.super Ljava/lang/Object;
.source "ShapeTrimPathParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/ShapeTrimPathParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeTrimPath;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    move-object/from16 v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object/from16 v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    const/4 v10, 0x0

    move-object v2, v10

    .line 18
    .local v2, "name":Ljava/lang/String;
    const/4 v10, 0x0

    move-object v3, v10

    .line 19
    .local v3, "type":Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    const/4 v10, 0x0

    move-object v4, v10

    .line 20
    .local v4, "start":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v10, 0x0

    move-object v5, v10

    .line 21
    .local v5, "end":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v10, 0x0

    move-object v6, v10

    .line 22
    .local v6, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v10, 0x0

    move v7, v10

    .line 24
    .local v7, "hidden":Z
    :goto_0
    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 25
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
    :goto_1
    move v10, v9

    packed-switch v10, :pswitch_data_0

    .line 45
    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 25
    :sswitch_0
    move-object v10, v8

    const-string/jumbo v11, "s"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    move v9, v10

    goto :goto_1

    :sswitch_1
    move-object v10, v8

    const-string/jumbo v11, "e"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    move v9, v10

    goto :goto_1

    :sswitch_2
    move-object v10, v8

    const-string/jumbo v11, "o"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x2

    move v9, v10

    goto :goto_1

    :sswitch_3
    move-object v10, v8

    const-string/jumbo v11, "nm"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x3

    move v9, v10

    goto :goto_1

    :sswitch_4
    move-object v10, v8

    const-string/jumbo v11, "m"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x4

    move v9, v10

    goto :goto_1

    :sswitch_5
    move-object v10, v8

    const-string/jumbo v11, "hd"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    move v9, v10

    goto :goto_1

    .line 27
    :pswitch_0
    move-object v10, v0

    move-object v11, v1

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v10

    move-object v4, v10

    .line 28
    goto :goto_2

    .line 30
    :pswitch_1
    move-object v10, v0

    move-object v11, v1

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v10

    move-object v5, v10

    .line 31
    goto :goto_2

    .line 33
    :pswitch_2
    move-object v10, v0

    move-object v11, v1

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v10

    move-object v6, v10

    .line 34
    goto :goto_2

    .line 36
    :pswitch_3
    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 37
    goto :goto_2

    .line 39
    :pswitch_4
    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextInt()I

    move-result v10

    invoke-static {v10}, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->forId(I)Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v10

    move-object v3, v10

    .line 40
    goto :goto_2

    .line 42
    :pswitch_5
    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v10

    move v7, v10

    .line 43
    goto/16 :goto_2

    .line 49
    :cond_1
    new-instance v10, Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move/from16 v17, v7

    invoke-direct/range {v11 .. v17}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    move-object v0, v10

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0

    .line 25
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_1
        0x6d -> :sswitch_4
        0x6f -> :sswitch_2
        0x73 -> :sswitch_0
        0xcfc -> :sswitch_5
        0xdbf -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
