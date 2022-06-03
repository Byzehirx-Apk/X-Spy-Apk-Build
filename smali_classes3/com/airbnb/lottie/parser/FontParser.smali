.class Lcom/airbnb/lottie/parser/FontParser;
.super Ljava/lang/Object;
.source "FontParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/FontParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;)Lcom/airbnb/lottie/model/Font;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    move-object v1, p0

    .local v1, "reader":Landroid/util/JsonReader;
    const/4 v8, 0x0

    move-object v2, v8

    .line 15
    .local v2, "family":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v3, v8

    .line 16
    .local v3, "name":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v4, v8

    .line 17
    .local v4, "style":Ljava/lang/String;
    const/4 v8, 0x0

    move v5, v8

    .line 19
    .local v5, "ascent":F
    move-object v8, v1

    invoke-virtual {v8}, Landroid/util/JsonReader;->beginObject()V

    .line 20
    :goto_0
    move-object v8, v1

    invoke-virtual {v8}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 21
    move-object v8, v1

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
    :goto_1
    move v8, v7

    packed-switch v8, :pswitch_data_0

    .line 35
    move-object v8, v1

    invoke-virtual {v8}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 21
    :sswitch_0
    move-object v8, v6

    const-string/jumbo v9, "fFamily"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    move v7, v8

    goto :goto_1

    :sswitch_1
    move-object v8, v6

    const-string/jumbo v9, "fName"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    move v7, v8

    goto :goto_1

    :sswitch_2
    move-object v8, v6

    const-string/jumbo v9, "fStyle"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    move v7, v8

    goto :goto_1

    :sswitch_3
    move-object v8, v6

    const-string/jumbo v9, "ascent"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    move v7, v8

    goto :goto_1

    .line 23
    :pswitch_0
    move-object v8, v1

    invoke-virtual {v8}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 24
    goto :goto_2

    .line 26
    :pswitch_1
    move-object v8, v1

    invoke-virtual {v8}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 27
    goto :goto_2

    .line 29
    :pswitch_2
    move-object v8, v1

    invoke-virtual {v8}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 30
    goto :goto_2

    .line 32
    :pswitch_3
    move-object v8, v1

    invoke-virtual {v8}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v8

    double-to-float v8, v8

    move v5, v8

    .line 33
    goto :goto_2

    .line 38
    :cond_1
    move-object v8, v1

    invoke-virtual {v8}, Landroid/util/JsonReader;->endObject()V

    .line 40
    new-instance v8, Lcom/airbnb/lottie/model/Font;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/airbnb/lottie/model/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    move-object v1, v8

    .end local v1    # "reader":Landroid/util/JsonReader;
    return-object v1

    .line 21
    :sswitch_data_0
    .sparse-switch
        -0x6f471c96 -> :sswitch_0
        -0x53f6d326 -> :sswitch_3
        -0x4d298315 -> :sswitch_2
        0x5c24c11 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
