.class Lcom/airbnb/lottie/parser/MergePathsParser;
.super Ljava/lang/Object;
.source "MergePathsParser.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/parser/MergePathsParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Landroid/util/JsonReader;)Lcom/airbnb/lottie/model/content/MergePaths;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "reader":Landroid/util/JsonReader;
    const/4 v6, 0x0

    move-object v1, v6

    .line 15
    .local v1, "name":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v2, v6

    .line 16
    .local v2, "mode":Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    const/4 v6, 0x0

    move v3, v6

    .line 18
    .local v3, "hidden":Z
    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 19
    move-object v6, v0

    invoke-virtual {v6}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    const/4 v6, -0x1

    move v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_1
    move v6, v5

    packed-switch v6, :pswitch_data_0

    .line 30
    move-object v6, v0

    invoke-virtual {v6}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    goto :goto_0

    .line 19
    :sswitch_0
    move-object v6, v4

    const-string/jumbo v7, "nm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    move v5, v6

    goto :goto_1

    :sswitch_1
    move-object v6, v4

    const-string/jumbo v7, "mm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    move v5, v6

    goto :goto_1

    :sswitch_2
    move-object v6, v4

    const-string/jumbo v7, "hd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    move v5, v6

    goto :goto_1

    .line 21
    :pswitch_0
    move-object v6, v0

    invoke-virtual {v6}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 22
    goto :goto_2

    .line 24
    :pswitch_1
    move-object v6, v0

    invoke-virtual {v6}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    invoke-static {v6}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->forId(I)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    move-result-object v6

    move-object v2, v6

    .line 25
    goto :goto_2

    .line 27
    :pswitch_2
    move-object v6, v0

    invoke-virtual {v6}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v6

    move v3, v6

    .line 28
    goto :goto_2

    .line 34
    :cond_1
    new-instance v6, Lcom/airbnb/lottie/model/content/MergePaths;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Lcom/airbnb/lottie/model/content/MergePaths;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;Z)V

    move-object v0, v6

    .end local v0    # "reader":Landroid/util/JsonReader;
    return-object v0

    .line 19
    :sswitch_data_0
    .sparse-switch
        0xcfc -> :sswitch_2
        0xda0 -> :sswitch_1
        0xdbf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
