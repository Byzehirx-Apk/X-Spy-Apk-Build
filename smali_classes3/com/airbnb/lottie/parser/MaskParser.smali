.class Lcom/airbnb/lottie/parser/MaskParser;
.super Ljava/lang/Object;
.source "MaskParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/MaskParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;
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
    const/4 v11, 0x0

    move-object v2, v11

    .line 20
    .local v2, "maskMode":Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    const/4 v11, 0x0

    move-object v3, v11

    .line 21
    .local v3, "maskPath":Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    const/4 v11, 0x0

    move-object v4, v11

    .line 22
    .local v4, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    const/4 v11, 0x0

    move v5, v11

    .line 24
    .local v5, "inverted":Z
    move-object v11, v0

    invoke-virtual {v11}, Landroid/util/JsonReader;->beginObject()V

    .line 25
    :goto_0
    move-object v11, v0

    invoke-virtual {v11}, Landroid/util/JsonReader;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 26
    move-object v11, v0

    invoke-virtual {v11}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 27
    .local v6, "mode":Ljava/lang/String;
    move-object v11, v6

    move-object v7, v11

    const/4 v11, -0x1

    move v8, v11

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_1
    move v11, v8

    packed-switch v11, :pswitch_data_0

    .line 56
    move-object v11, v0

    invoke-virtual {v11}, Landroid/util/JsonReader;->skipValue()V

    .line 58
    :goto_2
    goto :goto_0

    .line 27
    :sswitch_0
    move-object v11, v7

    const-string/jumbo v12, "mode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    move v8, v11

    goto :goto_1

    :sswitch_1
    move-object v11, v7

    const-string/jumbo v12, "pt"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    move v8, v11

    goto :goto_1

    :sswitch_2
    move-object v11, v7

    const-string/jumbo v12, "o"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x2

    move v8, v11

    goto :goto_1

    :sswitch_3
    move-object v11, v7

    const-string/jumbo v12, "inv"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x3

    move v8, v11

    goto :goto_1

    .line 29
    :pswitch_0
    move-object v11, v0

    invoke-virtual {v11}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    const/4 v11, -0x1

    move v10, v11

    move-object v11, v9

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    :cond_1
    :goto_3
    move v11, v10

    packed-switch v11, :pswitch_data_1

    .line 42
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unknown mask mode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ". Defaulting to Add."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 43
    sget-object v11, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-object v2, v11

    .line 45
    :goto_4
    goto :goto_2

    .line 29
    :sswitch_4
    move-object v11, v9

    const-string/jumbo v12, "a"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    move v10, v11

    goto :goto_3

    :sswitch_5
    move-object v11, v9

    const-string/jumbo v12, "s"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    move v10, v11

    goto :goto_3

    :sswitch_6
    move-object v11, v9

    const-string/jumbo v12, "i"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x2

    move v10, v11

    goto :goto_3

    .line 31
    :pswitch_1
    sget-object v11, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-object v2, v11

    .line 32
    goto :goto_4

    .line 34
    :pswitch_2
    sget-object v11, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_SUBTRACT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-object v2, v11

    .line 35
    goto :goto_4

    .line 37
    :pswitch_3
    move-object v11, v1

    const-string/jumbo v12, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    invoke-virtual {v11, v12}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 39
    sget-object v11, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_INTERSECT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-object v2, v11

    .line 40
    goto :goto_4

    .line 47
    :pswitch_4
    move-object v11, v0

    move-object v12, v1

    invoke-static {v11, v12}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseShapeData(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    move-result-object v11

    move-object v3, v11

    .line 48
    goto/16 :goto_2

    .line 50
    :pswitch_5
    move-object v11, v0

    move-object v12, v1

    invoke-static {v11, v12}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v11

    move-object v4, v11

    .line 51
    goto/16 :goto_2

    .line 53
    :pswitch_6
    move-object v11, v0

    invoke-virtual {v11}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v11

    move v5, v11

    .line 54
    goto/16 :goto_2

    .line 59
    .end local v6    # "mode":Ljava/lang/String;
    :cond_2
    move-object v11, v0

    invoke-virtual {v11}, Landroid/util/JsonReader;->endObject()V

    .line 61
    new-instance v11, Lcom/airbnb/lottie/model/content/Mask;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move/from16 v16, v5

    invoke-direct/range {v12 .. v16}, Lcom/airbnb/lottie/model/content/Mask;-><init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    move-object v0, v11

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0

    .line 27
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_2
        0xe04 -> :sswitch_1
        0x197f1 -> :sswitch_3
        0x3339a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 29
    :sswitch_data_1
    .sparse-switch
        0x61 -> :sswitch_4
        0x69 -> :sswitch_6
        0x73 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
