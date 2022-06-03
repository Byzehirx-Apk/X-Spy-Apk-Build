.class public Lcom/airbnb/lottie/parser/ShapeDataParser;
.super Ljava/lang/Object;
.source "ShapeDataParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser",
        "<",
        "Lcom/airbnb/lottie/model/content/ShapeData;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Lcom/airbnb/lottie/parser/ShapeDataParser;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/airbnb/lottie/parser/ShapeDataParser;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/ShapeDataParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/util/JsonReader;F)Lcom/airbnb/lottie/model/content/ShapeData;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    move-object/from16 v2, p0

    .local v2, "this":Lcom/airbnb/lottie/parser/ShapeDataParser;
    move-object/from16 v3, p1

    .local v3, "reader":Landroid/util/JsonReader;
    move/from16 v4, p2

    .local v4, "scale":F
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v19

    sget-object v20, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 25
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/util/JsonReader;->beginArray()V

    .line 28
    :cond_0
    const/16 v19, 0x0

    move/from16 v5, v19

    .line 29
    .local v5, "closed":Z
    const/16 v19, 0x0

    move-object/from16 v6, v19

    .line 30
    .local v6, "pointsArray":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/PointF;>;"
    const/16 v19, 0x0

    move-object/from16 v7, v19

    .line 31
    .local v7, "inTangents":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/PointF;>;"
    const/16 v19, 0x0

    move-object/from16 v8, v19

    .line 32
    .local v8, "outTangents":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/PointF;>;"
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/util/JsonReader;->beginObject()V

    .line 34
    :goto_0
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/util/JsonReader;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 35
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v9, v19

    const/16 v19, -0x1

    move/from16 v10, v19

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    :cond_1
    :goto_1
    move/from16 v19, v10

    packed-switch v19, :pswitch_data_0

    .line 47
    :goto_2
    goto :goto_0

    .line 35
    :sswitch_0
    move-object/from16 v19, v9

    const-string/jumbo v20, "c"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    const/16 v19, 0x0

    move/from16 v10, v19

    goto :goto_1

    :sswitch_1
    move-object/from16 v19, v9

    const-string/jumbo v20, "v"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    const/16 v19, 0x1

    move/from16 v10, v19

    goto :goto_1

    :sswitch_2
    move-object/from16 v19, v9

    const-string/jumbo v20, "i"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    const/16 v19, 0x2

    move/from16 v10, v19

    goto :goto_1

    :sswitch_3
    move-object/from16 v19, v9

    const-string/jumbo v20, "o"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    const/16 v19, 0x3

    move/from16 v10, v19

    goto :goto_1

    .line 37
    :pswitch_0
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v19

    move/from16 v5, v19

    .line 38
    goto :goto_2

    .line 40
    :pswitch_1
    move-object/from16 v19, v3

    move/from16 v20, v4

    invoke-static/range {v19 .. v20}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoints(Landroid/util/JsonReader;F)Ljava/util/List;

    move-result-object v19

    move-object/from16 v6, v19

    .line 41
    goto :goto_2

    .line 43
    :pswitch_2
    move-object/from16 v19, v3

    move/from16 v20, v4

    invoke-static/range {v19 .. v20}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoints(Landroid/util/JsonReader;F)Ljava/util/List;

    move-result-object v19

    move-object/from16 v7, v19

    .line 44
    goto :goto_2

    .line 46
    :pswitch_3
    move-object/from16 v19, v3

    move/from16 v20, v4

    invoke-static/range {v19 .. v20}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoints(Landroid/util/JsonReader;F)Ljava/util/List;

    move-result-object v19

    move-object/from16 v8, v19

    goto :goto_2

    .line 51
    :cond_2
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/util/JsonReader;->endObject()V

    .line 53
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v19

    sget-object v20, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 54
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/util/JsonReader;->endArray()V

    .line 57
    :cond_3
    move-object/from16 v19, v6

    if-eqz v19, :cond_4

    move-object/from16 v19, v7

    if-eqz v19, :cond_4

    move-object/from16 v19, v8

    if-nez v19, :cond_5

    .line 58
    :cond_4
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    const-string/jumbo v21, "Shape data was missing information."

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 61
    :cond_5
    move-object/from16 v19, v6

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 62
    new-instance v19, Lcom/airbnb/lottie/model/content/ShapeData;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    new-instance v21, Landroid/graphics/PointF;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    invoke-direct/range {v22 .. v22}, Landroid/graphics/PointF;-><init>()V

    const/16 v22, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v23

    invoke-direct/range {v20 .. v23}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    move-object/from16 v2, v19

    .line 91
    .end local v2    # "this":Lcom/airbnb/lottie/parser/ShapeDataParser;
    :goto_3
    return-object v2

    .line 65
    .restart local v2    # "this":Lcom/airbnb/lottie/parser/ShapeDataParser;
    :cond_6
    move-object/from16 v19, v6

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v9, v19

    .line 66
    .local v9, "length":I
    move-object/from16 v19, v6

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v10, v19

    .line 67
    .local v10, "vertex":Landroid/graphics/PointF;
    move-object/from16 v19, v10

    move-object/from16 v11, v19

    .line 68
    .local v11, "initialPoint":Landroid/graphics/PointF;
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move/from16 v21, v9

    invoke-direct/range {v20 .. v21}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v12, v19

    .line 70
    .local v12, "curves":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/CubicCurveData;>;"
    const/16 v19, 0x1

    move/from16 v13, v19

    .local v13, "i":I
    :goto_4
    move/from16 v19, v13

    move/from16 v20, v9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 71
    move-object/from16 v19, v6

    move/from16 v20, v13

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v10, v19

    .line 72
    move-object/from16 v19, v6

    move/from16 v20, v13

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v14, v19

    .line 73
    .local v14, "previousVertex":Landroid/graphics/PointF;
    move-object/from16 v19, v8

    move/from16 v20, v13

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v15, v19

    .line 74
    .local v15, "cp1":Landroid/graphics/PointF;
    move-object/from16 v19, v7

    move/from16 v20, v13

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v16, v19

    .line 75
    .local v16, "cp2":Landroid/graphics/PointF;
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    invoke-static/range {v19 .. v20}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v19

    move-object/from16 v17, v19

    .line 76
    .local v17, "shapeCp1":Landroid/graphics/PointF;
    move-object/from16 v19, v10

    move-object/from16 v20, v16

    invoke-static/range {v19 .. v20}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v19

    move-object/from16 v18, v19

    .line 77
    .local v18, "shapeCp2":Landroid/graphics/PointF;
    move-object/from16 v19, v12

    new-instance v20, Lcom/airbnb/lottie/model/CubicCurveData;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v17

    move-object/from16 v23, v18

    move-object/from16 v24, v10

    invoke-direct/range {v21 .. v24}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 70
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 80
    .end local v14    # "previousVertex":Landroid/graphics/PointF;
    .end local v15    # "cp1":Landroid/graphics/PointF;
    .end local v16    # "cp2":Landroid/graphics/PointF;
    .end local v17    # "shapeCp1":Landroid/graphics/PointF;
    .end local v18    # "shapeCp2":Landroid/graphics/PointF;
    :cond_7
    move/from16 v19, v5

    if-eqz v19, :cond_8

    .line 81
    move-object/from16 v19, v6

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v10, v19

    .line 82
    move-object/from16 v19, v6

    move/from16 v20, v9

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v13, v19

    .line 83
    .local v13, "previousVertex":Landroid/graphics/PointF;
    move-object/from16 v19, v8

    move/from16 v20, v9

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v14, v19

    .line 84
    .local v14, "cp1":Landroid/graphics/PointF;
    move-object/from16 v19, v7

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/PointF;

    move-object/from16 v15, v19

    .line 86
    .local v15, "cp2":Landroid/graphics/PointF;
    move-object/from16 v19, v13

    move-object/from16 v20, v14

    invoke-static/range {v19 .. v20}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v19

    move-object/from16 v16, v19

    .line 87
    .local v16, "shapeCp1":Landroid/graphics/PointF;
    move-object/from16 v19, v10

    move-object/from16 v20, v15

    invoke-static/range {v19 .. v20}, Lcom/airbnb/lottie/utils/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v19

    move-object/from16 v17, v19

    .line 89
    .local v17, "shapeCp2":Landroid/graphics/PointF;
    move-object/from16 v19, v12

    new-instance v20, Lcom/airbnb/lottie/model/CubicCurveData;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v16

    move-object/from16 v23, v17

    move-object/from16 v24, v10

    invoke-direct/range {v21 .. v24}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 91
    .end local v13    # "previousVertex":Landroid/graphics/PointF;
    .end local v14    # "cp1":Landroid/graphics/PointF;
    .end local v15    # "cp2":Landroid/graphics/PointF;
    .end local v16    # "shapeCp1":Landroid/graphics/PointF;
    .end local v17    # "shapeCp2":Landroid/graphics/PointF;
    :cond_8
    new-instance v19, Lcom/airbnb/lottie/model/content/ShapeData;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v11

    move/from16 v22, v5

    move-object/from16 v23, v12

    invoke-direct/range {v20 .. v23}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    move-object/from16 v2, v19

    goto/16 :goto_3

    .line 35
    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_0
        0x69 -> :sswitch_2
        0x6f -> :sswitch_3
        0x76 -> :sswitch_1
    .end sparse-switch

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
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/ShapeDataParser;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/parser/ShapeDataParser;->parse(Landroid/util/JsonReader;F)Lcom/airbnb/lottie/model/content/ShapeData;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/parser/ShapeDataParser;
    return-object v0
.end method
