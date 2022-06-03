.class public Lcom/airbnb/lottie/parser/LottieCompositionParser;
.super Ljava/lang/Object;
.source "LottieCompositionParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/LottieCompositionParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Landroid/util/JsonReader;)Lcom/airbnb/lottie/LottieComposition;
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    move-object/from16 v2, p0

    .local v2, "reader":Landroid/util/JsonReader;
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v24

    move/from16 v3, v24

    .line 29
    .local v3, "scale":F
    const/16 v24, 0x0

    move/from16 v4, v24

    .line 30
    .local v4, "startFrame":F
    const/16 v24, 0x0

    move/from16 v5, v24

    .line 31
    .local v5, "endFrame":F
    const/16 v24, 0x0

    move/from16 v6, v24

    .line 32
    .local v6, "frameRate":F
    new-instance v24, Landroidx/collection/LongSparseArray;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    invoke-direct/range {v25 .. v25}, Landroidx/collection/LongSparseArray;-><init>()V

    move-object/from16 v7, v24

    .line 33
    .local v7, "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, v24

    .line 34
    .local v8, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    const/16 v24, 0x0

    move/from16 v9, v24

    .line 35
    .local v9, "width":I
    const/16 v24, 0x0

    move/from16 v10, v24

    .line 36
    .local v10, "height":I
    new-instance v24, Ljava/util/HashMap;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v11, v24

    .line 37
    .local v11, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;>;"
    new-instance v24, Ljava/util/HashMap;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v12, v24

    .line 38
    .local v12, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    new-instance v24, Ljava/util/HashMap;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v13, v24

    .line 39
    .local v13, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/model/Font;>;"
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v24

    .line 40
    .local v14, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    new-instance v24, Landroidx/collection/SparseArrayCompat;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    invoke-direct/range {v25 .. v25}, Landroidx/collection/SparseArrayCompat;-><init>()V

    move-object/from16 v15, v24

    .line 42
    .local v15, "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    new-instance v24, Lcom/airbnb/lottie/LottieComposition;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    invoke-direct/range {v25 .. v25}, Lcom/airbnb/lottie/LottieComposition;-><init>()V

    move-object/from16 v16, v24

    .line 44
    .local v16, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->beginObject()V

    .line 45
    :goto_0
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 46
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v17, v24

    const/16 v24, -0x1

    move/from16 v18, v24

    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_0

    :cond_0
    :goto_1
    move/from16 v24, v18

    packed-switch v24, :pswitch_data_0

    .line 89
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->skipValue()V

    :cond_1
    :goto_2
    goto :goto_0

    .line 46
    :sswitch_0
    move-object/from16 v24, v17

    const-string/jumbo v25, "w"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x0

    move/from16 v18, v24

    goto :goto_1

    :sswitch_1
    move-object/from16 v24, v17

    const-string/jumbo v25, "h"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x1

    move/from16 v18, v24

    goto :goto_1

    :sswitch_2
    move-object/from16 v24, v17

    const-string/jumbo v25, "ip"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x2

    move/from16 v18, v24

    goto :goto_1

    :sswitch_3
    move-object/from16 v24, v17

    const-string/jumbo v25, "op"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x3

    move/from16 v18, v24

    goto :goto_1

    :sswitch_4
    move-object/from16 v24, v17

    const-string/jumbo v25, "fr"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x4

    move/from16 v18, v24

    goto :goto_1

    :sswitch_5
    move-object/from16 v24, v17

    const-string/jumbo v25, "v"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x5

    move/from16 v18, v24

    goto :goto_1

    :sswitch_6
    move-object/from16 v24, v17

    const-string/jumbo v25, "layers"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x6

    move/from16 v18, v24

    goto :goto_1

    :sswitch_7
    move-object/from16 v24, v17

    const-string/jumbo v25, "assets"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x7

    move/from16 v18, v24

    goto/16 :goto_1

    :sswitch_8
    move-object/from16 v24, v17

    const-string/jumbo v25, "fonts"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x8

    move/from16 v18, v24

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v24, v17

    const-string/jumbo v25, "chars"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x9

    move/from16 v18, v24

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v24, v17

    const-string/jumbo v25, "markers"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0xa

    move/from16 v18, v24

    goto/16 :goto_1

    .line 48
    :pswitch_0
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextInt()I

    move-result v24

    move/from16 v9, v24

    .line 49
    goto/16 :goto_2

    .line 51
    :pswitch_1
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextInt()I

    move-result v24

    move/from16 v10, v24

    .line 52
    goto/16 :goto_2

    .line 54
    :pswitch_2
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v4, v24

    .line 55
    goto/16 :goto_2

    .line 57
    :pswitch_3
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3c23d70a    # 0.01f

    sub-float v24, v24, v25

    move/from16 v5, v24

    .line 58
    goto/16 :goto_2

    .line 60
    :pswitch_4
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v6, v24

    .line 61
    goto/16 :goto_2

    .line 63
    :pswitch_5
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v19, v24

    .line 64
    .local v19, "version":Ljava/lang/String;
    move-object/from16 v24, v19

    const-string/jumbo v25, "\\."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v24

    .line 65
    .local v20, "versions":[Ljava/lang/String;
    move-object/from16 v24, v20

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v21, v24

    .line 66
    .local v21, "majorVersion":I
    move-object/from16 v24, v20

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v22, v24

    .line 67
    .local v22, "minorVersion":I
    move-object/from16 v24, v20

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v23, v24

    .line 68
    .local v23, "patchVersion":I
    move/from16 v24, v21

    move/from16 v25, v22

    move/from16 v26, v23

    const/16 v27, 0x4

    const/16 v28, 0x4

    const/16 v29, 0x0

    invoke-static/range {v24 .. v29}, Lcom/airbnb/lottie/utils/Utils;->isAtLeastVersion(IIIIII)Z

    move-result v24

    if-nez v24, :cond_1

    .line 70
    move-object/from16 v24, v16

    const-string/jumbo v25, "Lottie only supports bodymovin >= 4.4.0"

    invoke-virtual/range {v24 .. v25}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 74
    .end local v19    # "version":Ljava/lang/String;
    .end local v20    # "versions":[Ljava/lang/String;
    .end local v21    # "majorVersion":I
    .end local v22    # "minorVersion":I
    .end local v23    # "patchVersion":I
    :pswitch_6
    move-object/from16 v24, v2

    move-object/from16 v25, v16

    move-object/from16 v26, v8

    move-object/from16 v27, v7

    invoke-static/range {v24 .. v27}, Lcom/airbnb/lottie/parser/LottieCompositionParser;->parseLayers(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;Landroidx/collection/LongSparseArray;)V

    .line 75
    goto/16 :goto_2

    .line 77
    :pswitch_7
    move-object/from16 v24, v2

    move-object/from16 v25, v16

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    invoke-static/range {v24 .. v27}, Lcom/airbnb/lottie/parser/LottieCompositionParser;->parseAssets(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/Map;Ljava/util/Map;)V

    .line 78
    goto/16 :goto_2

    .line 80
    :pswitch_8
    move-object/from16 v24, v2

    move-object/from16 v25, v13

    invoke-static/range {v24 .. v25}, Lcom/airbnb/lottie/parser/LottieCompositionParser;->parseFonts(Landroid/util/JsonReader;Ljava/util/Map;)V

    .line 81
    goto/16 :goto_2

    .line 83
    :pswitch_9
    move-object/from16 v24, v2

    move-object/from16 v25, v16

    move-object/from16 v26, v15

    invoke-static/range {v24 .. v26}, Lcom/airbnb/lottie/parser/LottieCompositionParser;->parseChars(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Landroidx/collection/SparseArrayCompat;)V

    .line 84
    goto/16 :goto_2

    .line 86
    :pswitch_a
    move-object/from16 v24, v2

    move-object/from16 v25, v16

    move-object/from16 v26, v14

    invoke-static/range {v24 .. v26}, Lcom/airbnb/lottie/parser/LottieCompositionParser;->parseMarkers(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;)V

    .line 87
    goto/16 :goto_2

    .line 92
    :cond_2
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->endObject()V

    .line 94
    move/from16 v24, v9

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v3

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v17, v24

    .line 95
    .local v17, "scaledWidth":I
    move/from16 v24, v10

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v3

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v18, v24

    .line 96
    .local v18, "scaledHeight":I
    new-instance v24, Landroid/graphics/Rect;

    move-object/from16 v36, v24

    move-object/from16 v24, v36

    move-object/from16 v25, v36

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v28, v17

    move/from16 v29, v18

    invoke-direct/range {v25 .. v29}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v19, v24

    .line 98
    .local v19, "bounds":Landroid/graphics/Rect;
    move-object/from16 v24, v16

    move-object/from16 v25, v19

    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v28, v6

    move-object/from16 v29, v8

    move-object/from16 v30, v7

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v15

    move-object/from16 v34, v13

    move-object/from16 v35, v14

    invoke-virtual/range {v24 .. v35}, Lcom/airbnb/lottie/LottieComposition;->init(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;)V

    .line 101
    move-object/from16 v24, v16

    move-object/from16 v2, v24

    .end local v2    # "reader":Landroid/util/JsonReader;
    return-object v2

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        -0x53ef8c7d -> :sswitch_7
        -0x42252abe -> :sswitch_6
        0x68 -> :sswitch_1
        0x76 -> :sswitch_5
        0x77 -> :sswitch_0
        0xccc -> :sswitch_4
        0xd27 -> :sswitch_2
        0xde1 -> :sswitch_3
        0x5a3d7dd -> :sswitch_9
        0x5d17e04 -> :sswitch_8
        0x3205f379 -> :sswitch_a
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
    .end packed-switch
.end method

.method private static parseAssets(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/Map;Ljava/util/Map;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    move-object/from16 v1, p0

    .local v1, "reader":Landroid/util/JsonReader;
    move-object/from16 v2, p1

    .local v2, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object/from16 v3, p2

    .local v3, "precomps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;>;"
    move-object/from16 v4, p3

    .local v4, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    move-object v15, v1

    invoke-virtual {v15}, Landroid/util/JsonReader;->beginArray()V

    .line 128
    :goto_0
    move-object v15, v1

    invoke-virtual {v15}, Landroid/util/JsonReader;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 129
    const/4 v15, 0x0

    move-object v5, v15

    .line 131
    .local v5, "id":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v15

    .line 132
    .local v6, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    new-instance v15, Landroidx/collection/LongSparseArray;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    invoke-direct/range {v16 .. v16}, Landroidx/collection/LongSparseArray;-><init>()V

    move-object v7, v15

    .line 134
    .local v7, "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    const/4 v15, 0x0

    move v8, v15

    .line 135
    .local v8, "width":I
    const/4 v15, 0x0

    move v9, v15

    .line 136
    .local v9, "height":I
    const/4 v15, 0x0

    move-object v10, v15

    .line 137
    .local v10, "imageFileName":Ljava/lang/String;
    const/4 v15, 0x0

    move-object v11, v15

    .line 138
    .local v11, "relativeFolder":Ljava/lang/String;
    move-object v15, v1

    invoke-virtual {v15}, Landroid/util/JsonReader;->beginObject()V

    .line 139
    :goto_1
    move-object v15, v1

    invoke-virtual {v15}, Landroid/util/JsonReader;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 140
    move-object v15, v1

    invoke-virtual {v15}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    const/4 v15, -0x1

    move v13, v15

    move-object v15, v12

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_0
    :goto_2
    move v15, v13

    packed-switch v15, :pswitch_data_0

    .line 166
    move-object v15, v1

    invoke-virtual {v15}, Landroid/util/JsonReader;->skipValue()V

    :goto_3
    goto :goto_1

    .line 140
    :sswitch_0
    move-object v15, v12

    const-string/jumbo v16, "id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x0

    move v13, v15

    goto :goto_2

    :sswitch_1
    move-object v15, v12

    const-string/jumbo v16, "layers"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x1

    move v13, v15

    goto :goto_2

    :sswitch_2
    move-object v15, v12

    const-string/jumbo v16, "w"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x2

    move v13, v15

    goto :goto_2

    :sswitch_3
    move-object v15, v12

    const-string/jumbo v16, "h"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x3

    move v13, v15

    goto :goto_2

    :sswitch_4
    move-object v15, v12

    const-string/jumbo v16, "p"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x4

    move v13, v15

    goto :goto_2

    :sswitch_5
    move-object v15, v12

    const-string/jumbo v16, "u"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x5

    move v13, v15

    goto :goto_2

    .line 142
    :pswitch_0
    move-object v15, v1

    invoke-virtual {v15}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v15

    move-object v5, v15

    .line 143
    goto :goto_3

    .line 145
    :pswitch_1
    move-object v15, v1

    invoke-virtual {v15}, Landroid/util/JsonReader;->beginArray()V

    .line 146
    :goto_4
    move-object v15, v1

    invoke-virtual {v15}, Landroid/util/JsonReader;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 147
    move-object v15, v1

    move-object/from16 v16, v2

    invoke-static/range {v15 .. v16}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v15

    move-object v14, v15

    .line 148
    .local v14, "layer":Lcom/airbnb/lottie/model/layer/Layer;
    move-object v15, v7

    move-object/from16 v16, v14

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v16

    move-object/from16 v18, v14

    invoke-virtual/range {v15 .. v18}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 149
    move-object v15, v6

    move-object/from16 v16, v14

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 150
    goto :goto_4

    .line 151
    .end local v14    # "layer":Lcom/airbnb/lottie/model/layer/Layer;
    :cond_1
    move-object v15, v1

    invoke-virtual {v15}, Landroid/util/JsonReader;->endArray()V

    .line 152
    goto/16 :goto_3

    .line 154
    :pswitch_2
    move-object v15, v1

    invoke-virtual {v15}, Landroid/util/JsonReader;->nextInt()I

    move-result v15

    move v8, v15

    .line 155
    goto/16 :goto_3

    .line 157
    :pswitch_3
    move-object v15, v1

    invoke-virtual {v15}, Landroid/util/JsonReader;->nextInt()I

    move-result v15

    move v9, v15

    .line 158
    goto/16 :goto_3

    .line 160
    :pswitch_4
    move-object v15, v1

    invoke-virtual {v15}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v15

    move-object v10, v15

    .line 161
    goto/16 :goto_3

    .line 163
    :pswitch_5
    move-object v15, v1

    invoke-virtual {v15}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v15

    move-object v11, v15

    .line 164
    goto/16 :goto_3

    .line 169
    :cond_2
    move-object v15, v1

    invoke-virtual {v15}, Landroid/util/JsonReader;->endObject()V

    .line 170
    move-object v15, v10

    if-eqz v15, :cond_3

    .line 171
    new-instance v15, Lcom/airbnb/lottie/LottieImageAsset;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    move/from16 v17, v8

    move/from16 v18, v9

    move-object/from16 v19, v5

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    invoke-direct/range {v16 .. v21}, Lcom/airbnb/lottie/LottieImageAsset;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v15

    .line 173
    .local v12, "image":Lcom/airbnb/lottie/LottieImageAsset;
    move-object v15, v4

    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/lottie/LottieImageAsset;->getId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v12

    invoke-interface/range {v15 .. v17}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 174
    .line 177
    .end local v12    # "image":Lcom/airbnb/lottie/LottieImageAsset;
    :goto_5
    goto/16 :goto_0

    .line 175
    :cond_3
    move-object v15, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-interface/range {v15 .. v17}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    goto :goto_5

    .line 178
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .end local v7    # "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .end local v8    # "width":I
    .end local v9    # "height":I
    .end local v10    # "imageFileName":Ljava/lang/String;
    .end local v11    # "relativeFolder":Ljava/lang/String;
    :cond_4
    move-object v15, v1

    invoke-virtual {v15}, Landroid/util/JsonReader;->endArray()V

    .line 179
    return-void

    .line 140
    :sswitch_data_0
    .sparse-switch
        -0x42252abe -> :sswitch_1
        0x68 -> :sswitch_3
        0x70 -> :sswitch_4
        0x75 -> :sswitch_5
        0x77 -> :sswitch_2
        0xd1b -> :sswitch_0
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

.method private static parseChars(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Landroidx/collection/SparseArrayCompat;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v2, p2

    .local v2, "characters":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Lcom/airbnb/lottie/model/FontCharacter;>;"
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->beginArray()V

    .line 204
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/airbnb/lottie/parser/FontCharacterParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/FontCharacter;

    move-result-object v4

    move-object v3, v4

    .line 206
    .local v3, "character":Lcom/airbnb/lottie/model/FontCharacter;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/FontCharacter;->hashCode()I

    move-result v5

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 207
    goto :goto_0

    .line 208
    .end local v3    # "character":Lcom/airbnb/lottie/model/FontCharacter;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/util/JsonReader;->endArray()V

    .line 209
    return-void
.end method

.method private static parseFonts(Landroid/util/JsonReader;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object v1, p1

    .local v1, "fonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/model/Font;>;"
    move-object v5, v0

    invoke-virtual {v5}, Landroid/util/JsonReader;->beginObject()V

    .line 183
    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    move-object v5, v0

    invoke-virtual {v5}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    const/4 v5, -0x1

    move v3, v5

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    move v5, v3

    packed-switch v5, :pswitch_data_1

    .line 194
    move-object v5, v0

    invoke-virtual {v5}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 184
    :pswitch_0
    move-object v5, v2

    const-string/jumbo v6, "list"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    move v3, v5

    goto :goto_1

    .line 186
    :pswitch_1
    move-object v5, v0

    invoke-virtual {v5}, Landroid/util/JsonReader;->beginArray()V

    .line 187
    :goto_3
    move-object v5, v0

    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 188
    move-object v5, v0

    invoke-static {v5}, Lcom/airbnb/lottie/parser/FontParser;->parse(Landroid/util/JsonReader;)Lcom/airbnb/lottie/model/Font;

    move-result-object v5

    move-object v4, v5

    .line 189
    .local v4, "font":Lcom/airbnb/lottie/model/Font;
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/Font;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 190
    goto :goto_3

    .line 191
    .end local v4    # "font":Lcom/airbnb/lottie/model/Font;
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroid/util/JsonReader;->endArray()V

    .line 192
    goto :goto_2

    .line 197
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Landroid/util/JsonReader;->endObject()V

    .line 198
    return-void

    .line 184
    :pswitch_data_0
    .packed-switch 0x32b09e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static parseLayers(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;Landroidx/collection/LongSparseArray;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Landroidx/collection/LongSparseArray",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    move-object v1, p0

    .local v1, "reader":Landroid/util/JsonReader;
    move-object v2, p1

    .local v2, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v3, p2

    .local v3, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    move-object v4, p3

    .local v4, "layerMap":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    const/4 v7, 0x0

    move v5, v7

    .line 107
    .local v5, "imageCount":I
    move-object v7, v1

    invoke-virtual {v7}, Landroid/util/JsonReader;->beginArray()V

    .line 108
    :goto_0
    move-object v7, v1

    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 109
    move-object v7, v1

    move-object v8, v2

    invoke-static {v7, v8}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v7

    move-object v6, v7

    .line 110
    .local v6, "layer":Lcom/airbnb/lottie/model/layer/Layer;
    move-object v7, v6

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v7

    sget-object v8, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v7, v8, :cond_0

    .line 111
    add-int/lit8 v5, v5, 0x1

    .line 113
    :cond_0
    move-object v7, v3

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 114
    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v8

    move-object v10, v6

    invoke-virtual {v7, v8, v9, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 116
    move v7, v5

    const/4 v8, 0x4

    if-le v7, v8, :cond_1

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "You have "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 121
    :cond_1
    goto :goto_0

    .line 122
    .end local v6    # "layer":Lcom/airbnb/lottie/model/layer/Layer;
    :cond_2
    move-object v7, v1

    invoke-virtual {v7}, Landroid/util/JsonReader;->endArray()V

    .line 123
    return-void
.end method

.method private static parseMarkers(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/Marker;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    move-object/from16 v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object/from16 v2, p2

    .local v2, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/Marker;>;"
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->beginArray()V

    .line 214
    :goto_0
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 215
    const/4 v8, 0x0

    move-object v3, v8

    .line 216
    .local v3, "comment":Ljava/lang/String;
    const/4 v8, 0x0

    move v4, v8

    .line 217
    .local v4, "frame":F
    const/4 v8, 0x0

    move v5, v8

    .line 218
    .local v5, "durationFrames":F
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->beginObject()V

    .line 219
    :goto_1
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 220
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
    :goto_2
    move v8, v7

    packed-switch v8, :pswitch_data_0

    .line 231
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->skipValue()V

    :goto_3
    goto :goto_1

    .line 220
    :sswitch_0
    move-object v8, v6

    const-string/jumbo v9, "cm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    move v7, v8

    goto :goto_2

    :sswitch_1
    move-object v8, v6

    const-string/jumbo v9, "tm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    move v7, v8

    goto :goto_2

    :sswitch_2
    move-object v8, v6

    const-string/jumbo v9, "dr"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    move v7, v8

    goto :goto_2

    .line 222
    :pswitch_0
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 223
    goto :goto_3

    .line 225
    :pswitch_1
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v8

    double-to-float v8, v8

    move v4, v8

    .line 226
    goto :goto_3

    .line 228
    :pswitch_2
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v8

    double-to-float v8, v8

    move v5, v8

    .line 229
    goto :goto_3

    .line 234
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->endObject()V

    .line 235
    move-object v8, v2

    new-instance v9, Lcom/airbnb/lottie/model/Marker;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v3

    move v12, v4

    move v13, v5

    invoke-direct {v10, v11, v12, v13}, Lcom/airbnb/lottie/model/Marker;-><init>(Ljava/lang/String;FF)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 236
    goto/16 :goto_0

    .line 237
    .end local v3    # "comment":Ljava/lang/String;
    .end local v4    # "frame":F
    .end local v5    # "durationFrames":F
    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->endArray()V

    .line 238
    return-void

    .line 220
    nop

    :sswitch_data_0
    .sparse-switch
        0xc6a -> :sswitch_0
        0xc8e -> :sswitch_2
        0xe79 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
