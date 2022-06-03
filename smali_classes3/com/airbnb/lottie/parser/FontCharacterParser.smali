.class Lcom/airbnb/lottie/parser/FontCharacterParser;
.super Ljava/lang/Object;
.source "FontCharacterParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/FontCharacterParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/FontCharacter;
    .locals 23
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
    const/4 v12, 0x0

    move v2, v12

    .line 20
    .local v2, "character":C
    const-wide/16 v12, 0x0

    move-wide v3, v12

    .line 21
    .local v3, "size":D
    const-wide/16 v12, 0x0

    move-wide v5, v12

    .line 22
    .local v5, "width":D
    const/4 v12, 0x0

    move-object v7, v12

    .line 23
    .local v7, "style":Ljava/lang/String;
    const/4 v12, 0x0

    move-object v8, v12

    .line 24
    .local v8, "fontFamily":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v12

    .line 26
    .local v9, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ShapeGroup;>;"
    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/JsonReader;->beginObject()V

    .line 27
    :goto_0
    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 28
    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    const/4 v12, -0x1

    move v11, v12

    move-object v12, v10

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_0
    :goto_1
    move v12, v11

    packed-switch v12, :pswitch_data_0

    .line 60
    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 28
    :sswitch_0
    move-object v12, v10

    const-string/jumbo v13, "ch"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    move v11, v12

    goto :goto_1

    :sswitch_1
    move-object v12, v10

    const-string/jumbo v13, "size"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    move v11, v12

    goto :goto_1

    :sswitch_2
    move-object v12, v10

    const-string/jumbo v13, "w"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x2

    move v11, v12

    goto :goto_1

    :sswitch_3
    move-object v12, v10

    const-string/jumbo v13, "style"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x3

    move v11, v12

    goto :goto_1

    :sswitch_4
    move-object v12, v10

    const-string/jumbo v13, "fFamily"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x4

    move v11, v12

    goto :goto_1

    :sswitch_5
    move-object v12, v10

    const-string/jumbo v13, "data"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x5

    move v11, v12

    goto :goto_1

    .line 30
    :pswitch_0
    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v2, v12

    .line 31
    goto :goto_2

    .line 33
    :pswitch_1
    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    move-wide v3, v12

    .line 34
    goto :goto_2

    .line 36
    :pswitch_2
    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    move-wide v5, v12

    .line 37
    goto :goto_2

    .line 39
    :pswitch_3
    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 40
    goto :goto_2

    .line 42
    :pswitch_4
    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 43
    goto :goto_2

    .line 45
    :pswitch_5
    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/JsonReader;->beginObject()V

    .line 46
    :goto_3
    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 47
    const-string/jumbo v12, "shapes"

    move-object v13, v0

    invoke-virtual {v13}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 48
    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/JsonReader;->beginArray()V

    .line 49
    :goto_4
    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 50
    move-object v12, v9

    move-object v13, v0

    move-object v14, v1

    invoke-static {v13, v14}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/model/content/ShapeGroup;

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_4

    .line 52
    :cond_1
    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/JsonReader;->endArray()V

    goto :goto_3

    .line 54
    :cond_2
    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_3

    .line 57
    :cond_3
    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/JsonReader;->endObject()V

    .line 58
    goto/16 :goto_2

    .line 63
    :cond_4
    move-object v12, v0

    invoke-virtual {v12}, Landroid/util/JsonReader;->endObject()V

    .line 65
    new-instance v12, Lcom/airbnb/lottie/model/FontCharacter;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    move-object v14, v9

    move v15, v2

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    invoke-direct/range {v13 .. v21}, Lcom/airbnb/lottie/model/FontCharacter;-><init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0

    .line 28
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f471c96 -> :sswitch_4
        0x77 -> :sswitch_2
        0xc65 -> :sswitch_0
        0x2eefaa -> :sswitch_5
        0x35e001 -> :sswitch_1
        0x68b1db1 -> :sswitch_3
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
