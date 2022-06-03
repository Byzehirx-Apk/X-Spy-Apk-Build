.class Lcom/airbnb/lottie/parser/ShapePathParser;
.super Ljava/lang/Object;
.source "ShapePathParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/ShapePathParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapePath;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object/from16 v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    const/4 v8, 0x0

    move-object v2, v8

    .line 18
    .local v2, "name":Ljava/lang/String;
    const/4 v8, 0x0

    move v3, v8

    .line 19
    .local v3, "ind":I
    const/4 v8, 0x0

    move-object v4, v8

    .line 20
    .local v4, "shape":Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    const/4 v8, 0x0

    move v5, v8

    .line 22
    .local v5, "hidden":Z
    :goto_0
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 23
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

    .line 37
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 23
    :sswitch_0
    move-object v8, v6

    const-string/jumbo v9, "nm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    move v7, v8

    goto :goto_1

    :sswitch_1
    move-object v8, v6

    const-string/jumbo v9, "ind"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    move v7, v8

    goto :goto_1

    :sswitch_2
    move-object v8, v6

    const-string/jumbo v9, "ks"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    move v7, v8

    goto :goto_1

    :sswitch_3
    move-object v8, v6

    const-string/jumbo v9, "hd"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    move v7, v8

    goto :goto_1

    .line 25
    :pswitch_0
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 26
    goto :goto_2

    .line 28
    :pswitch_1
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->nextInt()I

    move-result v8

    move v3, v8

    .line 29
    goto :goto_2

    .line 31
    :pswitch_2
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseShapeData(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    move-result-object v8

    move-object v4, v8

    .line 32
    goto :goto_2

    .line 34
    :pswitch_3
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v8

    move v5, v8

    .line 35
    goto :goto_2

    .line 41
    :cond_1
    new-instance v8, Lcom/airbnb/lottie/model/content/ShapePath;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v2

    move v11, v3

    move-object v12, v4

    move v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/airbnb/lottie/model/content/ShapePath;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Z)V

    move-object v0, v8

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0

    .line 23
    :sswitch_data_0
    .sparse-switch
        0xcfc -> :sswitch_3
        0xd68 -> :sswitch_2
        0xdbf -> :sswitch_0
        0x197df -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
