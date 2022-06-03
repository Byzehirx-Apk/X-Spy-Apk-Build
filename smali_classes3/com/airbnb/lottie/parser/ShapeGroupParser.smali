.class Lcom/airbnb/lottie/parser/ShapeGroupParser;
.super Ljava/lang/Object;
.source "ShapeGroupParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/ShapeGroupParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeGroup;
    .locals 14
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
    const/4 v8, 0x0

    move-object v2, v8

    .line 20
    .local v2, "name":Ljava/lang/String;
    const/4 v8, 0x0

    move v3, v8

    .line 21
    .local v3, "hidden":Z
    new-instance v8, Ljava/util/ArrayList;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v8

    .line 23
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    :goto_0
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 24
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    const/4 v8, -0x1

    move v6, v8

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_1
    move v8, v6

    packed-switch v8, :pswitch_data_0

    .line 42
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 24
    :sswitch_0
    move-object v8, v5

    const-string/jumbo v9, "nm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    move v6, v8

    goto :goto_1

    :sswitch_1
    move-object v8, v5

    const-string/jumbo v9, "hd"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    move v6, v8

    goto :goto_1

    :sswitch_2
    move-object v8, v5

    const-string/jumbo v9, "it"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    move v6, v8

    goto :goto_1

    .line 26
    :pswitch_0
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 27
    goto :goto_2

    .line 29
    :pswitch_1
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v8

    move v3, v8

    .line 30
    goto :goto_2

    .line 32
    :pswitch_2
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->beginArray()V

    .line 33
    :goto_3
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 34
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Landroid/util/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v8

    move-object v7, v8

    .line 35
    .local v7, "newItem":Lcom/airbnb/lottie/model/content/ContentModel;
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 36
    move-object v8, v4

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 38
    :cond_1
    goto :goto_3

    .line 39
    .end local v7    # "newItem":Lcom/airbnb/lottie/model/content/ContentModel;
    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Landroid/util/JsonReader;->endArray()V

    .line 40
    goto :goto_2

    .line 46
    :cond_3
    new-instance v8, Lcom/airbnb/lottie/model/content/ShapeGroup;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v2

    move-object v11, v4

    move v12, v3

    invoke-direct {v9, v10, v11, v12}, Lcom/airbnb/lottie/model/content/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    move-object v0, v8

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0

    .line 24
    :sswitch_data_0
    .sparse-switch
        0xcfc -> :sswitch_1
        0xd2b -> :sswitch_2
        0xdbf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
