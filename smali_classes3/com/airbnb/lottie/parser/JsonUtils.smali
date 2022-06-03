.class Lcom/airbnb/lottie/parser/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/JsonUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method private static jsonArrayToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move v1, p1

    .local v1, "scale":F
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->beginArray()V

    .line 67
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move v2, v4

    .line 68
    .local v2, "x":F
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move v3, v4

    .line 69
    .local v3, "y":F
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_0

    .line 70
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 72
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->endArray()V

    .line 73
    new-instance v4, Landroid/graphics/PointF;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v2

    move v7, v1

    mul-float/2addr v6, v7

    move v7, v3

    move v8, v1

    mul-float/2addr v7, v8

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v4

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method

.method private static jsonNumbersToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move v1, p1

    .local v1, "scale":F
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move v2, v4

    .line 56
    .local v2, "x":F
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move v3, v4

    .line 57
    .local v3, "y":F
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 60
    :cond_0
    new-instance v4, Landroid/graphics/PointF;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v2

    move v7, v1

    mul-float/2addr v6, v7

    move v7, v3

    move v8, v1

    mul-float/2addr v7, v8

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v4

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method

.method private static jsonObjectToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move v1, p1

    .local v1, "scale":F
    const/4 v6, 0x0

    move v2, v6

    .line 78
    .local v2, "x":F
    const/4 v6, 0x0

    move v3, v6

    .line 79
    .local v3, "y":F
    move-object v6, v0

    invoke-virtual {v6}, Landroid/util/JsonReader;->beginObject()V

    .line 80
    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    move-object v6, v0

    invoke-virtual {v6}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    const/4 v6, -0x1

    move v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_1
    move v6, v5

    packed-switch v6, :pswitch_data_1

    .line 89
    move-object v6, v0

    invoke-virtual {v6}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 81
    :pswitch_0
    move-object v6, v4

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    move v5, v6

    goto :goto_1

    :pswitch_1
    move-object v6, v4

    const-string/jumbo v7, "y"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    move v5, v6

    goto :goto_1

    .line 83
    :pswitch_2
    move-object v6, v0

    invoke-static {v6}, Lcom/airbnb/lottie/parser/JsonUtils;->valueFromObject(Landroid/util/JsonReader;)F

    move-result v6

    move v2, v6

    .line 84
    goto :goto_2

    .line 86
    :pswitch_3
    move-object v6, v0

    invoke-static {v6}, Lcom/airbnb/lottie/parser/JsonUtils;->valueFromObject(Landroid/util/JsonReader;)F

    move-result v6

    move v3, v6

    .line 87
    goto :goto_2

    .line 92
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Landroid/util/JsonReader;->endObject()V

    .line 93
    new-instance v6, Landroid/graphics/PointF;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move v8, v2

    move v9, v1

    mul-float/2addr v8, v9

    move v9, v3

    move v10, v1

    mul-float/2addr v9, v10

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v6

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0

    .line 81
    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static jsonToColor(Landroid/util/JsonReader;)I
    .locals 8
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->beginArray()V

    .line 22
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move v1, v4

    .line 23
    .local v1, "r":I
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move v2, v4

    .line 24
    .local v2, "g":I
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move v3, v4

    .line 25
    .local v3, "b":I
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 28
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->endArray()V

    .line 29
    const/16 v4, 0xff

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    move v0, v4

    .end local v0    # "reader":Landroid/util/JsonReader;
    return v0
.end method

.method static jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move v1, p1

    .local v1, "scale":F
    sget-object v2, Lcom/airbnb/lottie/parser/JsonUtils$1;->$SwitchMap$android$util$JsonToken:[I

    move-object v3, v0

    invoke-virtual {v3}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 50
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown point starts with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :pswitch_0
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonNumbersToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v2

    move-object v0, v2

    .line 49
    .end local v0    # "reader":Landroid/util/JsonReader;
    :goto_0
    return-object v0

    .line 48
    .restart local v0    # "reader":Landroid/util/JsonReader;
    :pswitch_1
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonArrayToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 49
    :pswitch_2
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonObjectToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static jsonToPoints(Landroid/util/JsonReader;F)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "F)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move v1, p1

    .local v1, "scale":F
    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 35
    .local v2, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/PointF;>;"
    move-object v3, v0

    invoke-virtual {v3}, Landroid/util/JsonReader;->beginArray()V

    .line 36
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v3, v4, :cond_0

    .line 37
    move-object v3, v0

    invoke-virtual {v3}, Landroid/util/JsonReader;->beginArray()V

    .line 38
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    invoke-static {v4, v5}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 39
    move-object v3, v0

    invoke-virtual {v3}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    .line 41
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/util/JsonReader;->endArray()V

    .line 42
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0
.end method

.method static valueFromObject(Landroid/util/JsonReader;)F
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    move-object v1, p0

    .local v1, "reader":Landroid/util/JsonReader;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    move-object v2, v4

    .line 98
    .local v2, "token":Landroid/util/JsonToken;
    sget-object v4, Lcom/airbnb/lottie/parser/JsonUtils$1;->$SwitchMap$android$util$JsonToken:[I

    move-object v5, v2

    invoke-virtual {v5}, Landroid/util/JsonToken;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 110
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown value for token of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :pswitch_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move v1, v4

    .line 108
    .end local v1    # "reader":Landroid/util/JsonReader;
    :goto_0
    return v1

    .line 102
    .restart local v1    # "reader":Landroid/util/JsonReader;
    :pswitch_1
    move-object v4, v1

    invoke-virtual {v4}, Landroid/util/JsonReader;->beginArray()V

    .line 103
    move-object v4, v1

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move v3, v4

    .line 104
    .local v3, "val":F
    :goto_1
    move-object v4, v1

    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    move-object v4, v1

    invoke-virtual {v4}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 107
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/util/JsonReader;->endArray()V

    .line 108
    move v4, v3

    move v1, v4

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
