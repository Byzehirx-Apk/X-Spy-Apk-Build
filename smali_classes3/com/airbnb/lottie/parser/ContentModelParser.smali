.class Lcom/airbnb/lottie/parser/ContentModelParser;
.super Ljava/lang/Object;
.source "ContentModelParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/ContentModelParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    const/4 v7, 0x0

    move-object v2, v7

    .line 21
    .local v2, "type":Ljava/lang/String;
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    .line 25
    const/4 v7, 0x2

    move v3, v7

    .line 27
    .local v3, "d":I
    :goto_0
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 28
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    const/4 v7, -0x1

    move v5, v7

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_1
    move v7, v5

    packed-switch v7, :pswitch_data_0

    .line 36
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 28
    :sswitch_0
    move-object v7, v4

    const-string/jumbo v8, "ty"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    move v5, v7

    goto :goto_1

    :sswitch_1
    move-object v7, v4

    const-string/jumbo v8, "d"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    move v5, v7

    goto :goto_1

    .line 30
    :pswitch_0
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 40
    :cond_1
    move-object v7, v2

    if-nez v7, :cond_2

    .line 41
    const/4 v7, 0x0

    move-object v0, v7

    .line 97
    .end local v0    # "reader":Landroid/util/JsonReader;
    :goto_3
    return-object v0

    .line 33
    .restart local v0    # "reader":Landroid/util/JsonReader;
    :pswitch_1
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->nextInt()I

    move-result v7

    move v3, v7

    .line 34
    goto :goto_2

    .line 44
    :cond_2
    const/4 v7, 0x0

    move-object v4, v7

    .line 45
    .local v4, "model":Lcom/airbnb/lottie/model/content/ContentModel;
    move-object v7, v2

    move-object v5, v7

    const/4 v7, -0x1

    move v6, v7

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :cond_3
    :goto_4
    move v7, v6

    packed-switch v7, :pswitch_data_1

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown shape type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 92
    :goto_5
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 93
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_5

    .line 45
    :sswitch_2
    move-object v7, v5

    const-string/jumbo v8, "gr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    move v6, v7

    goto :goto_4

    :sswitch_3
    move-object v7, v5

    const-string/jumbo v8, "st"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    move v6, v7

    goto :goto_4

    :sswitch_4
    move-object v7, v5

    const-string/jumbo v8, "gs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    move v6, v7

    goto :goto_4

    :sswitch_5
    move-object v7, v5

    const-string/jumbo v8, "fl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x3

    move v6, v7

    goto :goto_4

    :sswitch_6
    move-object v7, v5

    const-string/jumbo v8, "gf"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x4

    move v6, v7

    goto :goto_4

    :sswitch_7
    move-object v7, v5

    const-string/jumbo v8, "tr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x5

    move v6, v7

    goto :goto_4

    :sswitch_8
    move-object v7, v5

    const-string/jumbo v8, "sh"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x6

    move v6, v7

    goto/16 :goto_4

    :sswitch_9
    move-object v7, v5

    const-string/jumbo v8, "el"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x7

    move v6, v7

    goto/16 :goto_4

    :sswitch_a
    move-object v7, v5

    const-string/jumbo v8, "rc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x8

    move v6, v7

    goto/16 :goto_4

    :sswitch_b
    move-object v7, v5

    const-string/jumbo v8, "tm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x9

    move v6, v7

    goto/16 :goto_4

    :sswitch_c
    move-object v7, v5

    const-string/jumbo v8, "sr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xa

    move v6, v7

    goto/16 :goto_4

    :sswitch_d
    move-object v7, v5

    const-string/jumbo v8, "mm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xb

    move v6, v7

    goto/16 :goto_4

    :sswitch_e
    move-object v7, v5

    const-string/jumbo v8, "rp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xc

    move v6, v7

    goto/16 :goto_4

    .line 47
    :pswitch_2
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/ShapeGroupParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeGroup;

    move-result-object v7

    move-object v4, v7

    .line 48
    goto/16 :goto_5

    .line 50
    :pswitch_3
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeStroke;

    move-result-object v7

    move-object v4, v7

    .line 51
    goto/16 :goto_5

    .line 53
    :pswitch_4
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/GradientStrokeParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientStroke;

    move-result-object v7

    move-object v4, v7

    .line 54
    goto/16 :goto_5

    .line 56
    :pswitch_5
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/ShapeFillParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeFill;

    move-result-object v7

    move-object v4, v7

    .line 57
    goto/16 :goto_5

    .line 59
    :pswitch_6
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/GradientFillParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientFill;

    move-result-object v7

    move-object v4, v7

    .line 60
    goto/16 :goto_5

    .line 62
    :pswitch_7
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v7

    move-object v4, v7

    .line 63
    goto/16 :goto_5

    .line 65
    :pswitch_8
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/ShapePathParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapePath;

    move-result-object v7

    move-object v4, v7

    .line 66
    goto/16 :goto_5

    .line 68
    :pswitch_9
    move-object v7, v0

    move-object v8, v1

    move v9, v3

    invoke-static {v7, v8, v9}, Lcom/airbnb/lottie/parser/CircleShapeParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/content/CircleShape;

    move-result-object v7

    move-object v4, v7

    .line 69
    goto/16 :goto_5

    .line 71
    :pswitch_a
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/RectangleShapeParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/RectangleShape;

    move-result-object v7

    move-object v4, v7

    .line 72
    goto/16 :goto_5

    .line 74
    :pswitch_b
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    move-result-object v7

    move-object v4, v7

    .line 75
    goto/16 :goto_5

    .line 77
    :pswitch_c
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/PolystarShapeParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/PolystarShape;

    move-result-object v7

    move-object v4, v7

    .line 78
    goto/16 :goto_5

    .line 80
    :pswitch_d
    move-object v7, v0

    invoke-static {v7}, Lcom/airbnb/lottie/parser/MergePathsParser;->parse(Landroid/util/JsonReader;)Lcom/airbnb/lottie/model/content/MergePaths;

    move-result-object v7

    move-object v4, v7

    .line 81
    move-object v7, v1

    const-string/jumbo v8, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 84
    goto/16 :goto_5

    .line 86
    :pswitch_e
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/RepeaterParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Repeater;

    move-result-object v7

    move-object v4, v7

    .line 87
    goto/16 :goto_5

    .line 95
    :cond_4
    move-object v7, v0

    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V

    .line 97
    move-object v7, v4

    move-object v0, v7

    goto/16 :goto_3

    .line 28
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xe85 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 45
    :sswitch_data_1
    .sparse-switch
        0xca7 -> :sswitch_9
        0xcc6 -> :sswitch_5
        0xcdf -> :sswitch_6
        0xceb -> :sswitch_2
        0xcec -> :sswitch_4
        0xda0 -> :sswitch_d
        0xe31 -> :sswitch_a
        0xe3e -> :sswitch_e
        0xe55 -> :sswitch_8
        0xe5f -> :sswitch_c
        0xe61 -> :sswitch_3
        0xe79 -> :sswitch_b
        0xe7e -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
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
        :pswitch_e
    .end packed-switch
.end method
