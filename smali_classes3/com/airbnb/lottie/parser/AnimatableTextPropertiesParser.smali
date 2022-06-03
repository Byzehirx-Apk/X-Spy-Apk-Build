.class public Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;
.super Ljava/lang/Object;
.source "AnimatableTextPropertiesParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    const/4 v5, 0x0

    move-object v2, v5

    .line 20
    .local v2, "anim":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    move-object v5, v0

    invoke-virtual {v5}, Landroid/util/JsonReader;->beginObject()V

    .line 21
    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 22
    move-object v5, v0

    invoke-virtual {v5}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    const/4 v5, -0x1

    move v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    move v5, v4

    packed-switch v5, :pswitch_data_1

    .line 27
    move-object v5, v0

    invoke-virtual {v5}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 22
    :pswitch_0
    move-object v5, v3

    const-string/jumbo v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    move v4, v5

    goto :goto_1

    .line 24
    :pswitch_1
    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->parseAnimatableTextProperties(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v5

    move-object v2, v5

    .line 25
    goto :goto_2

    .line 30
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroid/util/JsonReader;->endObject()V

    .line 31
    move-object v5, v2

    if-nez v5, :cond_2

    .line 33
    new-instance v5, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    move-object v0, v5

    .line 35
    .end local v0    # "reader":Landroid/util/JsonReader;
    :goto_3
    return-object v0

    .restart local v0    # "reader":Landroid/util/JsonReader;
    :cond_2
    move-object v5, v2

    move-object v0, v5

    goto :goto_3

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static parseAnimatableTextProperties(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object/from16 v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    const/4 v8, 0x0

    move-object v2, v8

    .line 41
    .local v2, "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    const/4 v8, 0x0

    move-object v3, v8

    .line 42
    .local v3, "stroke":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    const/4 v8, 0x0

    move-object v4, v8

    .line 43
    .local v4, "strokeWidth":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v8, 0x0

    move-object v5, v8

    .line 45
    .local v5, "tracking":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->beginObject()V

    .line 46
    :goto_0
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 47
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

    .line 61
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 47
    :sswitch_0
    move-object v8, v6

    const-string/jumbo v9, "fc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    move v7, v8

    goto :goto_1

    :sswitch_1
    move-object v8, v6

    const-string/jumbo v9, "sc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    move v7, v8

    goto :goto_1

    :sswitch_2
    move-object v8, v6

    const-string/jumbo v9, "sw"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    move v7, v8

    goto :goto_1

    :sswitch_3
    move-object v8, v6

    const-string/jumbo v9, "t"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    move v7, v8

    goto :goto_1

    .line 49
    :pswitch_0
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v8

    move-object v2, v8

    .line 50
    goto :goto_2

    .line 52
    :pswitch_1
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v8

    move-object v3, v8

    .line 53
    goto :goto_2

    .line 55
    :pswitch_2
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v8

    move-object v4, v8

    .line 56
    goto :goto_2

    .line 58
    :pswitch_3
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v8

    move-object v5, v8

    .line 59
    goto :goto_2

    .line 64
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->endObject()V

    .line 66
    new-instance v8, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    move-object v0, v8

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0

    .line 47
    nop

    :sswitch_data_0
    .sparse-switch
        0x74 -> :sswitch_3
        0xcbd -> :sswitch_0
        0xe50 -> :sswitch_1
        0xe64 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
