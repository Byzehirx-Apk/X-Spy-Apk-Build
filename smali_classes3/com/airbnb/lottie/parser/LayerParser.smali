.class public Lcom/airbnb/lottie/parser/LayerParser;
.super Ljava/lang/Object;
.source "LayerParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/LayerParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 63
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    move-object/from16 v3, p0

    .local v3, "reader":Landroid/util/JsonReader;
    move-object/from16 v4, p1

    .local v4, "composition":Lcom/airbnb/lottie/LottieComposition;
    const-string/jumbo v36, "UNSET"

    move-object/from16 v5, v36

    .line 41
    .local v5, "layerName":Ljava/lang/String;
    const/16 v36, 0x0

    move-object/from16 v6, v36

    .line 42
    .local v6, "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    const/16 v36, 0x0

    move-object/from16 v7, v36

    .line 43
    .local v7, "refId":Ljava/lang/String;
    const-wide/16 v36, 0x0

    move-wide/from16 v8, v36

    .line 44
    .local v8, "layerId":J
    const/16 v36, 0x0

    move/from16 v10, v36

    .line 45
    .local v10, "solidWidth":I
    const/16 v36, 0x0

    move/from16 v11, v36

    .line 46
    .local v11, "solidHeight":I
    const/16 v36, 0x0

    move/from16 v12, v36

    .line 47
    .local v12, "solidColor":I
    const/16 v36, 0x0

    move/from16 v13, v36

    .line 48
    .local v13, "preCompWidth":I
    const/16 v36, 0x0

    move/from16 v14, v36

    .line 49
    .local v14, "preCompHeight":I
    const-wide/16 v36, -0x1

    move-wide/from16 v15, v36

    .line 50
    .local v15, "parentId":J
    const/high16 v36, 0x3f800000    # 1.0f

    move/from16 v17, v36

    .line 51
    .local v17, "timeStretch":F
    const/16 v36, 0x0

    move/from16 v18, v36

    .line 52
    .local v18, "startFrame":F
    const/16 v36, 0x0

    move/from16 v19, v36

    .line 53
    .local v19, "inFrame":F
    const/16 v36, 0x0

    move/from16 v20, v36

    .line 54
    .local v20, "outFrame":F
    const/16 v36, 0x0

    move-object/from16 v21, v36

    .line 55
    .local v21, "cl":Ljava/lang/String;
    const/16 v36, 0x0

    move/from16 v22, v36

    .line 57
    .local v22, "hidden":Z
    sget-object v36, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-object/from16 v23, v36

    .line 58
    .local v23, "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    const/16 v36, 0x0

    move-object/from16 v24, v36

    .line 59
    .local v24, "transform":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    const/16 v36, 0x0

    move-object/from16 v25, v36

    .line 60
    .local v25, "text":Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    const/16 v36, 0x0

    move-object/from16 v26, v36

    .line 61
    .local v26, "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    const/16 v36, 0x0

    move-object/from16 v27, v36

    .line 63
    .local v27, "timeRemapping":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    new-instance v36, Ljava/util/ArrayList;

    move-object/from16 v62, v36

    move-object/from16 v36, v62

    move-object/from16 v37, v62

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v28, v36

    .line 64
    .local v28, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    new-instance v36, Ljava/util/ArrayList;

    move-object/from16 v62, v36

    move-object/from16 v36, v62

    move-object/from16 v37, v62

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v36

    .line 66
    .local v29, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->beginObject()V

    .line 67
    :goto_0
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_c

    .line 68
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v30, v36

    const/16 v36, -0x1

    move/from16 v31, v36

    move-object/from16 v36, v30

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->hashCode()I

    move-result v36

    sparse-switch v36, :sswitch_data_0

    :cond_0
    :goto_1
    move/from16 v36, v31

    packed-switch v36, :pswitch_data_0

    .line 196
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 68
    :sswitch_0
    move-object/from16 v36, v30

    const-string/jumbo v37, "nm"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0x0

    move/from16 v31, v36

    goto :goto_1

    :sswitch_1
    move-object/from16 v36, v30

    const-string/jumbo v37, "ind"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0x1

    move/from16 v31, v36

    goto :goto_1

    :sswitch_2
    move-object/from16 v36, v30

    const-string/jumbo v37, "refId"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0x2

    move/from16 v31, v36

    goto :goto_1

    :sswitch_3
    move-object/from16 v36, v30

    const-string/jumbo v37, "ty"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0x3

    move/from16 v31, v36

    goto :goto_1

    :sswitch_4
    move-object/from16 v36, v30

    const-string/jumbo v37, "parent"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0x4

    move/from16 v31, v36

    goto :goto_1

    :sswitch_5
    move-object/from16 v36, v30

    const-string/jumbo v37, "sw"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0x5

    move/from16 v31, v36

    goto :goto_1

    :sswitch_6
    move-object/from16 v36, v30

    const-string/jumbo v37, "sh"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0x6

    move/from16 v31, v36

    goto :goto_1

    :sswitch_7
    move-object/from16 v36, v30

    const-string/jumbo v37, "sc"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0x7

    move/from16 v31, v36

    goto/16 :goto_1

    :sswitch_8
    move-object/from16 v36, v30

    const-string/jumbo v37, "ks"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0x8

    move/from16 v31, v36

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v36, v30

    const-string/jumbo v37, "tt"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0x9

    move/from16 v31, v36

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v36, v30

    const-string/jumbo v37, "masksProperties"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0xa

    move/from16 v31, v36

    goto/16 :goto_1

    :sswitch_b
    move-object/from16 v36, v30

    const-string/jumbo v37, "shapes"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0xb

    move/from16 v31, v36

    goto/16 :goto_1

    :sswitch_c
    move-object/from16 v36, v30

    const-string/jumbo v37, "t"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0xc

    move/from16 v31, v36

    goto/16 :goto_1

    :sswitch_d
    move-object/from16 v36, v30

    const-string/jumbo v37, "ef"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0xd

    move/from16 v31, v36

    goto/16 :goto_1

    :sswitch_e
    move-object/from16 v36, v30

    const-string/jumbo v37, "sr"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0xe

    move/from16 v31, v36

    goto/16 :goto_1

    :sswitch_f
    move-object/from16 v36, v30

    const-string/jumbo v37, "st"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0xf

    move/from16 v31, v36

    goto/16 :goto_1

    :sswitch_10
    move-object/from16 v36, v30

    const-string/jumbo v37, "w"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0x10

    move/from16 v31, v36

    goto/16 :goto_1

    :sswitch_11
    move-object/from16 v36, v30

    const-string/jumbo v37, "h"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0x11

    move/from16 v31, v36

    goto/16 :goto_1

    :sswitch_12
    move-object/from16 v36, v30

    const-string/jumbo v37, "ip"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0x12

    move/from16 v31, v36

    goto/16 :goto_1

    :sswitch_13
    move-object/from16 v36, v30

    const-string/jumbo v37, "op"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0x13

    move/from16 v31, v36

    goto/16 :goto_1

    :sswitch_14
    move-object/from16 v36, v30

    const-string/jumbo v37, "tm"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0x14

    move/from16 v31, v36

    goto/16 :goto_1

    :sswitch_15
    move-object/from16 v36, v30

    const-string/jumbo v37, "cl"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0x15

    move/from16 v31, v36

    goto/16 :goto_1

    :sswitch_16
    move-object/from16 v36, v30

    const-string/jumbo v37, "hd"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    const/16 v36, 0x16

    move/from16 v31, v36

    goto/16 :goto_1

    .line 70
    :pswitch_0
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v5, v36

    .line 71
    goto/16 :goto_2

    .line 73
    :pswitch_1
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextInt()I

    move-result v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-wide/from16 v8, v36

    .line 74
    goto/16 :goto_2

    .line 76
    :pswitch_2
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v7, v36

    .line 77
    goto/16 :goto_2

    .line 79
    :pswitch_3
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextInt()I

    move-result v36

    move/from16 v32, v36

    .line 80
    .local v32, "layerTypeInt":I
    move/from16 v36, v32

    sget-object v37, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-virtual/range {v37 .. v37}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->ordinal()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_1

    .line 81
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v36

    move/from16 v37, v32

    aget-object v36, v36, v37

    move-object/from16 v6, v36

    goto/16 :goto_2

    .line 83
    :cond_1
    sget-object v36, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-object/from16 v6, v36

    .line 85
    goto/16 :goto_2

    .line 87
    .end local v32    # "layerTypeInt":I
    :pswitch_4
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextInt()I

    move-result v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-wide/from16 v15, v36

    .line 88
    goto/16 :goto_2

    .line 90
    :pswitch_5
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextInt()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v37

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v10, v36

    .line 91
    goto/16 :goto_2

    .line 93
    :pswitch_6
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextInt()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v37

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v11, v36

    .line 94
    goto/16 :goto_2

    .line 96
    :pswitch_7
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v36

    move/from16 v12, v36

    .line 97
    goto/16 :goto_2

    .line 99
    :pswitch_8
    move-object/from16 v36, v3

    move-object/from16 v37, v4

    invoke-static/range {v36 .. v37}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v36

    move-object/from16 v24, v36

    .line 100
    goto/16 :goto_2

    .line 102
    :pswitch_9
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v36

    move-object/from16 v37, v3

    invoke-virtual/range {v37 .. v37}, Landroid/util/JsonReader;->nextInt()I

    move-result v37

    aget-object v36, v36, v37

    move-object/from16 v23, v36

    .line 103
    move-object/from16 v36, v4

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Lcom/airbnb/lottie/LottieComposition;->incrementMatteOrMaskCount(I)V

    .line 104
    goto/16 :goto_2

    .line 106
    :pswitch_a
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->beginArray()V

    .line 107
    :goto_3
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_2

    .line 108
    move-object/from16 v36, v28

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    invoke-static/range {v37 .. v38}, Lcom/airbnb/lottie/parser/MaskParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;

    move-result-object v37

    invoke-interface/range {v36 .. v37}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v36

    goto :goto_3

    .line 110
    :cond_2
    move-object/from16 v36, v4

    move-object/from16 v37, v28

    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Lcom/airbnb/lottie/LottieComposition;->incrementMatteOrMaskCount(I)V

    .line 111
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->endArray()V

    .line 112
    goto/16 :goto_2

    .line 114
    :pswitch_b
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->beginArray()V

    .line 115
    :goto_4
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_4

    .line 116
    move-object/from16 v36, v3

    move-object/from16 v37, v4

    invoke-static/range {v36 .. v37}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v36

    move-object/from16 v33, v36

    .line 117
    .local v33, "shape":Lcom/airbnb/lottie/model/content/ContentModel;
    move-object/from16 v36, v33

    if-eqz v36, :cond_3

    .line 118
    move-object/from16 v36, v29

    move-object/from16 v37, v33

    invoke-interface/range {v36 .. v37}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v36

    .line 120
    :cond_3
    goto :goto_4

    .line 121
    .end local v33    # "shape":Lcom/airbnb/lottie/model/content/ContentModel;
    :cond_4
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->endArray()V

    .line 122
    goto/16 :goto_2

    .line 124
    :pswitch_c
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->beginObject()V

    .line 125
    :goto_5
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_8

    .line 126
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v33, v36

    const/16 v36, -0x1

    move/from16 v34, v36

    move-object/from16 v36, v33

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->hashCode()I

    move-result v36

    packed-switch v36, :pswitch_data_1

    :cond_5
    :goto_6
    :pswitch_d
    move/from16 v36, v34

    packed-switch v36, :pswitch_data_2

    .line 141
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->skipValue()V

    :goto_7
    goto :goto_5

    .line 126
    :pswitch_e
    move-object/from16 v36, v33

    const-string/jumbo v37, "d"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    const/16 v36, 0x0

    move/from16 v34, v36

    goto :goto_6

    :pswitch_f
    move-object/from16 v36, v33

    const-string/jumbo v37, "a"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    const/16 v36, 0x1

    move/from16 v34, v36

    goto :goto_6

    .line 128
    :pswitch_10
    move-object/from16 v36, v3

    move-object/from16 v37, v4

    invoke-static/range {v36 .. v37}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseDocumentData(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v36

    move-object/from16 v25, v36

    .line 129
    goto :goto_7

    .line 131
    :pswitch_11
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->beginArray()V

    .line 132
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_6

    .line 133
    move-object/from16 v36, v3

    move-object/from16 v37, v4

    invoke-static/range {v36 .. v37}, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v36

    move-object/from16 v26, v36

    .line 135
    :cond_6
    :goto_8
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_7

    .line 136
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    .line 138
    :cond_7
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->endArray()V

    .line 139
    goto :goto_7

    .line 144
    :cond_8
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->endObject()V

    .line 145
    goto/16 :goto_2

    .line 147
    :pswitch_12
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->beginArray()V

    .line 148
    new-instance v36, Ljava/util/ArrayList;

    move-object/from16 v62, v36

    move-object/from16 v36, v62

    move-object/from16 v37, v62

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v33, v36

    .line 149
    .local v33, "effectNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_9
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_b

    .line 150
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->beginObject()V

    .line 151
    :goto_a
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_a

    .line 152
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v34, v36

    const/16 v36, -0x1

    move/from16 v35, v36

    move-object/from16 v36, v34

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->hashCode()I

    move-result v36

    packed-switch v36, :pswitch_data_3

    :cond_9
    :goto_b
    move/from16 v36, v35

    packed-switch v36, :pswitch_data_4

    .line 157
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->skipValue()V

    :goto_c
    goto :goto_a

    .line 152
    :pswitch_13
    move-object/from16 v36, v34

    const-string/jumbo v37, "nm"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_9

    const/16 v36, 0x0

    move/from16 v35, v36

    goto :goto_b

    .line 154
    :pswitch_14
    move-object/from16 v36, v33

    move-object/from16 v37, v3

    invoke-virtual/range {v37 .. v37}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v37

    invoke-interface/range {v36 .. v37}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v36

    .line 155
    goto :goto_c

    .line 161
    :cond_a
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->endObject()V

    goto :goto_9

    .line 163
    :cond_b
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->endArray()V

    .line 164
    move-object/from16 v36, v4

    new-instance v37, Ljava/lang/StringBuilder;

    move-object/from16 v62, v37

    move-object/from16 v37, v62

    move-object/from16 v38, v62

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v38, v33

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 167
    goto/16 :goto_2

    .line 169
    .end local v33    # "effectNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_15
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    move/from16 v17, v36

    .line 170
    goto/16 :goto_2

    .line 172
    :pswitch_16
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    move/from16 v18, v36

    .line 173
    goto/16 :goto_2

    .line 175
    :pswitch_17
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextInt()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v37

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v13, v36

    .line 176
    goto/16 :goto_2

    .line 178
    :pswitch_18
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextInt()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v37

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v14, v36

    .line 179
    goto/16 :goto_2

    .line 181
    :pswitch_19
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    move/from16 v19, v36

    .line 182
    goto/16 :goto_2

    .line 184
    :pswitch_1a
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    move/from16 v20, v36

    .line 185
    goto/16 :goto_2

    .line 187
    :pswitch_1b
    move-object/from16 v36, v3

    move-object/from16 v37, v4

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v36

    move-object/from16 v27, v36

    .line 188
    goto/16 :goto_2

    .line 190
    :pswitch_1c
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v21, v36

    .line 191
    goto/16 :goto_2

    .line 193
    :pswitch_1d
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v36

    move/from16 v22, v36

    .line 194
    goto/16 :goto_2

    .line 199
    :cond_c
    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Landroid/util/JsonReader;->endObject()V

    .line 204
    move/from16 v36, v19

    move/from16 v37, v17

    div-float v36, v36, v37

    move/from16 v19, v36

    .line 205
    move/from16 v36, v20

    move/from16 v37, v17

    div-float v36, v36, v37

    move/from16 v20, v36

    .line 207
    new-instance v36, Ljava/util/ArrayList;

    move-object/from16 v62, v36

    move-object/from16 v36, v62

    move-object/from16 v37, v62

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v30, v36

    .line 209
    .local v30, "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;>;"
    move/from16 v36, v19

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_d

    .line 210
    new-instance v36, Lcom/airbnb/lottie/value/Keyframe;

    move-object/from16 v62, v36

    move-object/from16 v36, v62

    move-object/from16 v37, v62

    move-object/from16 v38, v4

    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v40

    const/16 v41, 0x0

    const/16 v42, 0x0

    move/from16 v43, v19

    invoke-static/range {v43 .. v43}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v43

    invoke-direct/range {v37 .. v43}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v31, v36

    .line 211
    .local v31, "preKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    move-object/from16 v36, v30

    move-object/from16 v37, v31

    invoke-interface/range {v36 .. v37}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v36

    .line 215
    .end local v31    # "preKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    :cond_d
    move/from16 v36, v20

    const/16 v37, 0x0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_10

    move/from16 v36, v20

    :goto_d
    move/from16 v20, v36

    .line 216
    new-instance v36, Lcom/airbnb/lottie/value/Keyframe;

    move-object/from16 v62, v36

    move-object/from16 v36, v62

    move-object/from16 v37, v62

    move-object/from16 v38, v4

    const/high16 v39, 0x3f800000    # 1.0f

    .line 217
    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    const/high16 v40, 0x3f800000    # 1.0f

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v40

    const/16 v41, 0x0

    move/from16 v42, v19

    move/from16 v43, v20

    invoke-static/range {v43 .. v43}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v43

    invoke-direct/range {v37 .. v43}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v31, v36

    .line 218
    .local v31, "visibleKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    move-object/from16 v36, v30

    move-object/from16 v37, v31

    invoke-interface/range {v36 .. v37}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v36

    .line 220
    new-instance v36, Lcom/airbnb/lottie/value/Keyframe;

    move-object/from16 v62, v36

    move-object/from16 v36, v62

    move-object/from16 v37, v62

    move-object/from16 v38, v4

    const/16 v39, 0x0

    .line 221
    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v40

    const/16 v41, 0x0

    move/from16 v42, v20

    const v43, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static/range {v43 .. v43}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v43

    invoke-direct/range {v37 .. v43}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v32, v36

    .line 222
    .local v32, "outKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    move-object/from16 v36, v30

    move-object/from16 v37, v32

    invoke-interface/range {v36 .. v37}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v36

    .line 224
    move-object/from16 v36, v5

    const-string/jumbo v37, ".ai"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_e

    const-string/jumbo v36, "ai"

    move-object/from16 v37, v21

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_f

    .line 225
    :cond_e
    move-object/from16 v36, v4

    const-string/jumbo v37, "Convert your Illustrator layers to shape layers."

    invoke-virtual/range {v36 .. v37}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 228
    :cond_f
    new-instance v36, Lcom/airbnb/lottie/model/layer/Layer;

    move-object/from16 v62, v36

    move-object/from16 v36, v62

    move-object/from16 v37, v62

    move-object/from16 v38, v29

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    move-wide/from16 v41, v8

    move-object/from16 v43, v6

    move-wide/from16 v44, v15

    move-object/from16 v46, v7

    move-object/from16 v47, v28

    move-object/from16 v48, v24

    move/from16 v49, v10

    move/from16 v50, v11

    move/from16 v51, v12

    move/from16 v52, v17

    move/from16 v53, v18

    move/from16 v54, v13

    move/from16 v55, v14

    move-object/from16 v56, v25

    move-object/from16 v57, v26

    move-object/from16 v58, v30

    move-object/from16 v59, v23

    move-object/from16 v60, v27

    move/from16 v61, v22

    invoke-direct/range {v37 .. v61}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    move-object/from16 v3, v36

    .end local v3    # "reader":Landroid/util/JsonReader;
    return-object v3

    .line 215
    .end local v31    # "visibleKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    .end local v32    # "outKeyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Ljava/lang/Float;>;"
    .restart local v3    # "reader":Landroid/util/JsonReader;
    :cond_10
    move-object/from16 v36, v4

    invoke-virtual/range {v36 .. v36}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v36

    goto/16 :goto_d

    .line 68
    :sswitch_data_0
    .sparse-switch
        -0x3b54f756 -> :sswitch_4
        -0x35db5b0e -> :sswitch_b
        0x68 -> :sswitch_11
        0x74 -> :sswitch_c
        0x77 -> :sswitch_10
        0xc69 -> :sswitch_15
        0xca1 -> :sswitch_d
        0xcfc -> :sswitch_16
        0xd27 -> :sswitch_12
        0xd68 -> :sswitch_8
        0xdbf -> :sswitch_0
        0xde1 -> :sswitch_13
        0xe50 -> :sswitch_7
        0xe55 -> :sswitch_6
        0xe5f -> :sswitch_e
        0xe61 -> :sswitch_f
        0xe64 -> :sswitch_5
        0xe79 -> :sswitch_14
        0xe80 -> :sswitch_9
        0xe85 -> :sswitch_3
        0x197df -> :sswitch_1
        0x675e90e -> :sswitch_2
        0x55ed639a -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
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
        :pswitch_12
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch

    .line 126
    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 152
    :pswitch_data_3
    .packed-switch 0xdbf
        :pswitch_13
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_14
    .end packed-switch
.end method

.method public static parse(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 29

    .prologue
    .line 28
    move-object/from16 v0, p0

    .local v0, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    move-object v1, v2

    .line 29
    .local v1, "bounds":Landroid/graphics/Rect;
    new-instance v2, Lcom/airbnb/lottie/model/layer/Layer;

    move-object/from16 v28, v2

    move-object/from16 v2, v28

    move-object/from16 v3, v28

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v5, v0

    const-string/jumbo v6, "__container"

    const-wide/16 v7, -0x1

    sget-object v9, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PRE_COMP:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    new-instance v14, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-object/from16 v28, v14

    move-object/from16 v14, v28

    move-object/from16 v15, v28

    invoke-direct {v15}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v1

    .line 33
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v20

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v24

    sget-object v25, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v3 .. v27}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    .line 29
    move-object v0, v2

    .end local v0    # "composition":Lcom/airbnb/lottie/LottieComposition;
    return-object v0
.end method
