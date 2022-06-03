.class public Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "GradientColorParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser",
        "<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private colorPoints:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/GradientColorParser;
    move v1, p1

    .local v1, "colorPoints":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 21
    return-void
.end method

.method private addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    move-object v1, p0

    .local v1, "this":Lcom/airbnb/lottie/parser/GradientColorParser;
    move-object/from16 v2, p1

    .local v2, "gradientColor":Lcom/airbnb/lottie/model/content/GradientColor;
    move-object/from16 v3, p2

    .local v3, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move-object v10, v1

    iget v10, v10, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    const/4 v11, 0x4

    mul-int/lit8 v10, v10, 0x4

    move v4, v10

    .line 104
    .local v4, "startIndex":I
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v11, v4

    if-gt v10, v11, :cond_0

    .line 105
    .line 131
    :goto_0
    return-void

    .line 108
    :cond_0
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v11, v4

    sub-int/2addr v10, v11

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    move v5, v10

    .line 109
    .local v5, "opacityStops":I
    move v10, v5

    new-array v10, v10, [D

    move-object v6, v10

    .line 110
    .local v6, "positions":[D
    move v10, v5

    new-array v10, v10, [D

    move-object v7, v10

    .line 112
    .local v7, "opacities":[D
    move v10, v4

    move v8, v10

    .local v8, "i":I
    const/4 v10, 0x0

    move v9, v10

    .local v9, "j":I
    :goto_1
    move v10, v8

    move-object v11, v3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 113
    move v10, v8

    const/4 v11, 0x2

    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_1

    .line 114
    move-object v10, v6

    move v11, v9

    move-object v12, v3

    move v13, v8

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    float-to-double v12, v12

    aput-wide v12, v10, v11

    .line 112
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 116
    :cond_1
    move-object v10, v7

    move v11, v9

    move-object v12, v3

    move v13, v8

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    float-to-double v12, v12

    aput-wide v12, v10, v11

    .line 117
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 121
    :cond_2
    const/4 v10, 0x0

    move v8, v10

    .end local v9    # "j":I
    :goto_3
    move v10, v8

    move-object v11, v2

    invoke-virtual {v11}, Lcom/airbnb/lottie/model/content/GradientColor;->getSize()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 122
    move-object v10, v2

    invoke-virtual {v10}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v10

    move v11, v8

    aget v10, v10, v11

    move v9, v10

    .line 123
    .local v9, "color":I
    move-object v10, v1

    move-object v11, v2

    .line 124
    invoke-virtual {v11}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v11

    move v12, v8

    aget v11, v11, v12

    float-to-double v11, v11

    move-object v13, v6

    move-object v14, v7

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/airbnb/lottie/parser/GradientColorParser;->getOpacityAtPosition(D[D[D)I

    move-result v10

    move v11, v9

    .line 125
    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v11

    move v12, v9

    .line 126
    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v12

    move v13, v9

    .line 127
    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    .line 123
    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    move v9, v10

    .line 129
    move-object v10, v2

    invoke-virtual {v10}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v10

    move v11, v8

    move v12, v9

    aput v12, v10, v11

    .line 121
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 131
    .end local v9    # "color":I
    :cond_3
    goto/16 :goto_0
.end method

.method private getOpacityAtPosition(D[D[D)I
    .locals 21
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0xffL
    .end annotation

    .prologue
    .line 135
    move-object/from16 v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/GradientColorParser;
    move-wide/from16 v1, p1

    .local v1, "position":D
    move-object/from16 v3, p3

    .local v3, "positions":[D
    move-object/from16 v4, p4

    .local v4, "opacities":[D
    const/4 v12, 0x1

    move v5, v12

    .local v5, "i":I
    :goto_0
    move v12, v5

    move-object v13, v3

    array-length v13, v13

    if-ge v12, v13, :cond_1

    .line 136
    move-object v12, v3

    move v13, v5

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    aget-wide v12, v12, v13

    move-wide v6, v12

    .line 137
    .local v6, "lastPosition":D
    move-object v12, v3

    move v13, v5

    aget-wide v12, v12, v13

    move-wide v8, v12

    .line 138
    .local v8, "thisPosition":D
    move-object v12, v3

    move v13, v5

    aget-wide v12, v12, v13

    move-wide v14, v1

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_0

    .line 139
    move-wide v12, v1

    move-wide v14, v6

    sub-double/2addr v12, v14

    move-wide v14, v8

    move-wide/from16 v16, v6

    sub-double v14, v14, v16

    div-double/2addr v12, v14

    move-wide v10, v12

    .line 140
    .local v10, "progress":D
    const-wide v12, 0x406fe00000000000L    # 255.0

    move-object v14, v4

    move v15, v5

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aget-wide v14, v14, v15

    move-object/from16 v16, v4

    move/from16 v17, v5

    aget-wide v16, v16, v17

    move-wide/from16 v18, v10

    invoke-static/range {v14 .. v19}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(DDD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-int v12, v12

    move v0, v12

    .line 143
    .end local v0    # "this":Lcom/airbnb/lottie/parser/GradientColorParser;
    .end local v6    # "lastPosition":D
    .end local v8    # "thisPosition":D
    .end local v10    # "progress":D
    :goto_1
    return v0

    .line 135
    .restart local v0    # "this":Lcom/airbnb/lottie/parser/GradientColorParser;
    .restart local v6    # "lastPosition":D
    .restart local v8    # "thisPosition":D
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 143
    .end local v6    # "lastPosition":D
    .end local v8    # "thisPosition":D
    :cond_1
    const-wide v12, 0x406fe00000000000L    # 255.0

    move-object v14, v4

    move-object v15, v4

    array-length v15, v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    double-to-int v12, v12

    move v0, v12

    goto :goto_1
.end method


# virtual methods
.method public parse(Landroid/util/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    move-object/from16 v2, p0

    .local v2, "this":Lcom/airbnb/lottie/parser/GradientColorParser;
    move-object/from16 v3, p1

    .local v3, "reader":Landroid/util/JsonReader;
    move/from16 v4, p2

    .local v4, "scale":F
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v16

    .line 48
    .local v5, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v16

    sget-object v17, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    const/16 v16, 0x1

    :goto_0
    move/from16 v6, v16

    .line 49
    .local v6, "isArray":Z
    move/from16 v16, v6

    if-eqz v16, :cond_0

    .line 50
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Landroid/util/JsonReader;->beginArray()V

    .line 52
    :cond_0
    :goto_1
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Landroid/util/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 53
    move-object/from16 v16, v5

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v16

    goto :goto_1

    .line 48
    .end local v6    # "isArray":Z
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 55
    .restart local v6    # "isArray":Z
    :cond_2
    move/from16 v16, v6

    if-eqz v16, :cond_3

    .line 56
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Landroid/util/JsonReader;->endArray()V

    .line 58
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 59
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x4

    div-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 62
    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    move-object/from16 v7, v16

    .line 63
    .local v7, "positions":[F
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    move-object/from16 v8, v16

    .line 65
    .local v8, "colors":[I
    const/16 v16, 0x0

    move/from16 v9, v16

    .line 66
    .local v9, "r":I
    const/16 v16, 0x0

    move/from16 v10, v16

    .line 67
    .local v10, "g":I
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "i":I
    :goto_2
    move/from16 v16, v11

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    move/from16 v17, v0

    const/16 v18, 0x4

    mul-int/lit8 v17, v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 68
    move/from16 v16, v11

    const/16 v17, 0x4

    div-int/lit8 v16, v16, 0x4

    move/from16 v12, v16

    .line 69
    .local v12, "colorIndex":I
    move-object/from16 v16, v5

    move/from16 v17, v11

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v13, v16

    .line 70
    .local v13, "value":D
    move/from16 v16, v11

    const/16 v17, 0x4

    rem-int/lit8 v16, v16, 0x4

    packed-switch v16, :pswitch_data_0

    .line 67
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 73
    :pswitch_0
    move-object/from16 v16, v7

    move/from16 v17, v12

    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    .line 74
    goto :goto_3

    .line 76
    :pswitch_1
    move-wide/from16 v16, v13

    const-wide v18, 0x406fe00000000000L    # 255.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v9, v16

    .line 77
    goto :goto_3

    .line 79
    :pswitch_2
    move-wide/from16 v16, v13

    const-wide v18, 0x406fe00000000000L    # 255.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v10, v16

    .line 80
    goto :goto_3

    .line 82
    :pswitch_3
    move-wide/from16 v16, v13

    const-wide v18, 0x406fe00000000000L    # 255.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v15, v16

    .line 83
    .local v15, "b":I
    move-object/from16 v16, v8

    move/from16 v17, v12

    const/16 v18, 0xff

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v15

    invoke-static/range {v18 .. v21}, Landroid/graphics/Color;->argb(IIII)I

    move-result v18

    aput v18, v16, v17

    goto :goto_3

    .line 88
    .end local v12    # "colorIndex":I
    .end local v13    # "value":D
    .end local v15    # "b":I
    :cond_5
    new-instance v16, Lcom/airbnb/lottie/model/content/GradientColor;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-direct/range {v17 .. v19}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    move-object/from16 v11, v16

    .line 89
    .local v11, "gradientColor":Lcom/airbnb/lottie/model/content/GradientColor;
    move-object/from16 v16, v2

    move-object/from16 v17, v11

    move-object/from16 v18, v5

    invoke-direct/range {v16 .. v18}, Lcom/airbnb/lottie/parser/GradientColorParser;->addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)V

    .line 90
    move-object/from16 v16, v11

    move-object/from16 v2, v16

    .end local v2    # "this":Lcom/airbnb/lottie/parser/GradientColorParser;
    return-object v2

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic parse(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/GradientColorParser;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/parser/GradientColorParser;->parse(Landroid/util/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/parser/GradientColorParser;
    return-object v0
.end method
