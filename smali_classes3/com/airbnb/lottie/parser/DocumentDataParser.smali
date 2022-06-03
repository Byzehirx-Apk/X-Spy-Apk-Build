.class public Lcom/airbnb/lottie/parser/DocumentDataParser;
.super Ljava/lang/Object;
.source "DocumentDataParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser",
        "<",
        "Lcom/airbnb/lottie/model/DocumentData;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lcom/airbnb/lottie/parser/DocumentDataParser;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/airbnb/lottie/parser/DocumentDataParser;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/DocumentDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/DocumentDataParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/util/JsonReader;F)Lcom/airbnb/lottie/model/DocumentData;
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    move-object/from16 v3, p0

    .local v3, "this":Lcom/airbnb/lottie/parser/DocumentDataParser;
    move-object/from16 v4, p1

    .local v4, "reader":Landroid/util/JsonReader;
    move/from16 v5, p2

    .local v5, "scale":F
    const/16 v24, 0x0

    move-object/from16 v6, v24

    .line 17
    .local v6, "text":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v7, v24

    .line 18
    .local v7, "fontName":Ljava/lang/String;
    const-wide/16 v24, 0x0

    move-wide/from16 v8, v24

    .line 19
    .local v8, "size":D
    sget-object v24, Lcom/airbnb/lottie/model/DocumentData$Justification;->CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-object/from16 v10, v24

    .line 20
    .local v10, "justification":Lcom/airbnb/lottie/model/DocumentData$Justification;
    const/16 v24, 0x0

    move/from16 v11, v24

    .line 21
    .local v11, "tracking":I
    const-wide/16 v24, 0x0

    move-wide/from16 v12, v24

    .line 22
    .local v12, "lineHeight":D
    const-wide/16 v24, 0x0

    move-wide/from16 v14, v24

    .line 23
    .local v14, "baselineShift":D
    const/16 v24, 0x0

    move/from16 v16, v24

    .line 24
    .local v16, "fillColor":I
    const/16 v24, 0x0

    move/from16 v17, v24

    .line 25
    .local v17, "strokeColor":I
    const-wide/16 v24, 0x0

    move-wide/from16 v18, v24

    .line 26
    .local v18, "strokeWidth":D
    const/16 v24, 0x1

    move/from16 v20, v24

    .line 28
    .local v20, "strokeOverFill":Z
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->beginObject()V

    .line 29
    :goto_0
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 30
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v21, v24

    const/16 v24, -0x1

    move/from16 v22, v24

    move-object/from16 v24, v21

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_0

    :cond_0
    :goto_1
    move/from16 v24, v22

    packed-switch v24, :pswitch_data_0

    .line 70
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 30
    :sswitch_0
    move-object/from16 v24, v21

    const-string/jumbo v25, "t"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x0

    move/from16 v22, v24

    goto :goto_1

    :sswitch_1
    move-object/from16 v24, v21

    const-string/jumbo v25, "f"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x1

    move/from16 v22, v24

    goto :goto_1

    :sswitch_2
    move-object/from16 v24, v21

    const-string/jumbo v25, "s"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x2

    move/from16 v22, v24

    goto :goto_1

    :sswitch_3
    move-object/from16 v24, v21

    const-string/jumbo v25, "j"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x3

    move/from16 v22, v24

    goto :goto_1

    :sswitch_4
    move-object/from16 v24, v21

    const-string/jumbo v25, "tr"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x4

    move/from16 v22, v24

    goto :goto_1

    :sswitch_5
    move-object/from16 v24, v21

    const-string/jumbo v25, "lh"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x5

    move/from16 v22, v24

    goto :goto_1

    :sswitch_6
    move-object/from16 v24, v21

    const-string/jumbo v25, "ls"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x6

    move/from16 v22, v24

    goto :goto_1

    :sswitch_7
    move-object/from16 v24, v21

    const-string/jumbo v25, "fc"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x7

    move/from16 v22, v24

    goto/16 :goto_1

    :sswitch_8
    move-object/from16 v24, v21

    const-string/jumbo v25, "sc"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x8

    move/from16 v22, v24

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v24, v21

    const-string/jumbo v25, "sw"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x9

    move/from16 v22, v24

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v24, v21

    const-string/jumbo v25, "of"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0xa

    move/from16 v22, v24

    goto/16 :goto_1

    .line 32
    :pswitch_0
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v6, v24

    .line 33
    goto/16 :goto_2

    .line 35
    :pswitch_1
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v7, v24

    .line 36
    goto/16 :goto_2

    .line 38
    :pswitch_2
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v24

    move-wide/from16 v8, v24

    .line 39
    goto/16 :goto_2

    .line 41
    :pswitch_3
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextInt()I

    move-result v24

    move/from16 v23, v24

    .line 42
    .local v23, "justificationInt":I
    move/from16 v24, v23

    sget-object v25, Lcom/airbnb/lottie/model/DocumentData$Justification;->CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-virtual/range {v25 .. v25}, Lcom/airbnb/lottie/model/DocumentData$Justification;->ordinal()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_1

    move/from16 v24, v23

    if-gez v24, :cond_2

    .line 43
    :cond_1
    sget-object v24, Lcom/airbnb/lottie/model/DocumentData$Justification;->CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-object/from16 v10, v24

    goto/16 :goto_2

    .line 45
    :cond_2
    invoke-static {}, Lcom/airbnb/lottie/model/DocumentData$Justification;->values()[Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-result-object v24

    move/from16 v25, v23

    aget-object v24, v24, v25

    move-object/from16 v10, v24

    .line 47
    goto/16 :goto_2

    .line 49
    .end local v23    # "justificationInt":I
    :pswitch_4
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextInt()I

    move-result v24

    move/from16 v11, v24

    .line 50
    goto/16 :goto_2

    .line 52
    :pswitch_5
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 53
    goto/16 :goto_2

    .line 55
    :pswitch_6
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v24

    move-wide/from16 v14, v24

    .line 56
    goto/16 :goto_2

    .line 58
    :pswitch_7
    move-object/from16 v24, v4

    invoke-static/range {v24 .. v24}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToColor(Landroid/util/JsonReader;)I

    move-result v24

    move/from16 v16, v24

    .line 59
    goto/16 :goto_2

    .line 61
    :pswitch_8
    move-object/from16 v24, v4

    invoke-static/range {v24 .. v24}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToColor(Landroid/util/JsonReader;)I

    move-result v24

    move/from16 v17, v24

    .line 62
    goto/16 :goto_2

    .line 64
    :pswitch_9
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 65
    goto/16 :goto_2

    .line 67
    :pswitch_a
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v24

    move/from16 v20, v24

    .line 68
    goto/16 :goto_2

    .line 73
    :cond_3
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Landroid/util/JsonReader;->endObject()V

    .line 75
    new-instance v24, Lcom/airbnb/lottie/model/DocumentData;

    move-object/from16 v41, v24

    move-object/from16 v24, v41

    move-object/from16 v25, v41

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-wide/from16 v28, v8

    move-object/from16 v30, v10

    move/from16 v31, v11

    move-wide/from16 v32, v12

    move-wide/from16 v34, v14

    move/from16 v36, v16

    move/from16 v37, v17

    move-wide/from16 v38, v18

    move/from16 v40, v20

    invoke-direct/range {v25 .. v40}, Lcom/airbnb/lottie/model/DocumentData;-><init>(Ljava/lang/String;Ljava/lang/String;DLcom/airbnb/lottie/model/DocumentData$Justification;IDDIIDZ)V

    move-object/from16 v3, v24

    .end local v3    # "this":Lcom/airbnb/lottie/parser/DocumentDataParser;
    return-object v3

    .line 30
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_1
        0x6a -> :sswitch_3
        0x73 -> :sswitch_2
        0x74 -> :sswitch_0
        0xcbd -> :sswitch_7
        0xd7c -> :sswitch_5
        0xd87 -> :sswitch_6
        0xdd7 -> :sswitch_a
        0xe50 -> :sswitch_8
        0xe64 -> :sswitch_9
        0xe7e -> :sswitch_4
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

.method public bridge synthetic parse(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/DocumentDataParser;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/parser/DocumentDataParser;->parse(Landroid/util/JsonReader;F)Lcom/airbnb/lottie/model/DocumentData;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/parser/DocumentDataParser;
    return-object v0
.end method
