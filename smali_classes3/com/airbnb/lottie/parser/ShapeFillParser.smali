.class Lcom/airbnb/lottie/parser/ShapeFillParser;
.super Ljava/lang/Object;
.source "ShapeFillParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/ShapeFillParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeFill;
    .locals 19
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
    const/4 v10, 0x0

    move-object v2, v10

    .line 20
    .local v2, "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    const/4 v10, 0x0

    move v3, v10

    .line 21
    .local v3, "fillEnabled":Z
    const/4 v10, 0x0

    move-object v4, v10

    .line 22
    .local v4, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    const/4 v10, 0x0

    move-object v5, v10

    .line 23
    .local v5, "name":Ljava/lang/String;
    const/4 v10, 0x1

    move v6, v10

    .line 24
    .local v6, "fillTypeInt":I
    const/4 v10, 0x0

    move v7, v10

    .line 26
    .local v7, "hidden":Z
    :goto_0
    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 27
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

    .line 47
    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 27
    :sswitch_0
    move-object v10, v8

    const-string/jumbo v11, "nm"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    move v9, v10

    goto :goto_1

    :sswitch_1
    move-object v10, v8

    const-string/jumbo v11, "c"

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

    const-string/jumbo v11, "fillEnabled"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x3

    move v9, v10

    goto :goto_1

    :sswitch_4
    move-object v10, v8

    const-string/jumbo v11, "r"

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

    .line 29
    :pswitch_0
    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 30
    goto :goto_2

    .line 32
    :pswitch_1
    move-object v10, v0

    move-object v11, v1

    invoke-static {v10, v11}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v10

    move-object v2, v10

    .line 33
    goto :goto_2

    .line 35
    :pswitch_2
    move-object v10, v0

    move-object v11, v1

    invoke-static {v10, v11}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v10

    move-object v4, v10

    .line 36
    goto :goto_2

    .line 38
    :pswitch_3
    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v10

    move v3, v10

    .line 39
    goto :goto_2

    .line 41
    :pswitch_4
    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextInt()I

    move-result v10

    move v6, v10

    .line 42
    goto :goto_2

    .line 44
    :pswitch_5
    move-object v10, v0

    invoke-virtual {v10}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v10

    move v7, v10

    .line 45
    goto :goto_2

    .line 51
    :cond_1
    move v10, v6

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    sget-object v10, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_3
    move-object v8, v10

    .line 52
    .local v8, "fillType":Landroid/graphics/Path$FillType;
    new-instance v10, Lcom/airbnb/lottie/model/content/ShapeFill;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v5

    move v13, v3

    move-object v14, v8

    move-object v15, v2

    move-object/from16 v16, v4

    move/from16 v17, v7

    invoke-direct/range {v11 .. v17}, Lcom/airbnb/lottie/model/content/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    move-object v0, v10

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0

    .line 51
    .end local v8    # "fillType":Landroid/graphics/Path$FillType;
    .restart local v0    # "reader":Landroid/util/JsonReader;
    :cond_2
    sget-object v10, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_3

    .line 27
    nop

    :sswitch_data_0
    .sparse-switch
        -0x179b7bc2 -> :sswitch_3
        0x63 -> :sswitch_1
        0x6f -> :sswitch_2
        0x72 -> :sswitch_4
        0xcfc -> :sswitch_5
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
    .end packed-switch
.end method
