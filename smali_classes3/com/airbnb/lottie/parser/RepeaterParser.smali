.class Lcom/airbnb/lottie/parser/RepeaterParser;
.super Ljava/lang/Object;
.source "RepeaterParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/RepeaterParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Repeater;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    move-object/from16 v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object/from16 v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    const/4 v9, 0x0

    move-object v2, v9

    .line 19
    .local v2, "name":Ljava/lang/String;
    const/4 v9, 0x0

    move-object v3, v9

    .line 20
    .local v3, "copies":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v9, 0x0

    move-object v4, v9

    .line 21
    .local v4, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v9, 0x0

    move-object v5, v9

    .line 22
    .local v5, "transform":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    const/4 v9, 0x0

    move v6, v9

    .line 24
    .local v6, "hidden":Z
    :goto_0
    move-object v9, v0

    invoke-virtual {v9}, Landroid/util/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 25
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

    .line 42
    move-object v9, v0

    invoke-virtual {v9}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 25
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

    const-string/jumbo v10, "c"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    move v8, v9

    goto :goto_1

    :sswitch_2
    move-object v9, v7

    const-string/jumbo v10, "o"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    move v8, v9

    goto :goto_1

    :sswitch_3
    move-object v9, v7

    const-string/jumbo v10, "tr"

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

    .line 27
    :pswitch_0
    move-object v9, v0

    invoke-virtual {v9}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 28
    goto :goto_2

    .line 30
    :pswitch_1
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v9

    move-object v3, v9

    .line 31
    goto :goto_2

    .line 33
    :pswitch_2
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v9

    move-object v4, v9

    .line 34
    goto :goto_2

    .line 36
    :pswitch_3
    move-object v9, v0

    move-object v10, v1

    invoke-static {v9, v10}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v9

    move-object v5, v9

    .line 37
    goto :goto_2

    .line 39
    :pswitch_4
    move-object v9, v0

    invoke-virtual {v9}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v9

    move v6, v9

    .line 40
    goto :goto_2

    .line 46
    :cond_1
    new-instance v9, Lcom/airbnb/lottie/model/content/Repeater;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move v15, v6

    invoke-direct/range {v10 .. v15}, Lcom/airbnb/lottie/model/content/Repeater;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;Z)V

    move-object v0, v9

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0

    .line 25
    nop

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_1
        0x6f -> :sswitch_2
        0xcfc -> :sswitch_4
        0xdbf -> :sswitch_0
        0xe7e -> :sswitch_3
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
