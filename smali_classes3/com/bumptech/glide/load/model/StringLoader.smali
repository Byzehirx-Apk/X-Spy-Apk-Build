.class public Lcom/bumptech/glide/load/model/StringLoader;
.super Ljava/lang/Object;
.source "StringLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<",
        "Ljava/lang/String;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final uriLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Landroid/net/Uri;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Landroid/net/Uri;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/StringLoader;, "Lcom/bumptech/glide/load/model/StringLoader<TT;>;"
    move-object v1, p1

    .local v1, "uriLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/model/StringLoader;->uriLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 21
    return-void
.end method

.method private static toFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "path":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 8

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/StringLoader;, "Lcom/bumptech/glide/load/model/StringLoader<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/model/StringLoader;->getResourceFetcher(Ljava/lang/String;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/model/StringLoader;, "Lcom/bumptech/glide/load/model/StringLoader<TT;>;"
    return-object v0
.end method

.method public getResourceFetcher(Ljava/lang/String;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/StringLoader;, "Lcom/bumptech/glide/load/model/StringLoader<TT;>;"
    move-object v1, p1

    .local v1, "model":Ljava/lang/String;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object v6, v1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 27
    const/4 v6, 0x0

    move-object v0, v6

    .line 38
    .end local v0    # "this":Lcom/bumptech/glide/load/model/StringLoader;, "Lcom/bumptech/glide/load/model/StringLoader<TT;>;"
    :goto_0
    return-object v0

    .line 28
    .restart local v0    # "this":Lcom/bumptech/glide/load/model/StringLoader;, "Lcom/bumptech/glide/load/model/StringLoader<TT;>;"
    :cond_0
    move-object v6, v1

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 29
    move-object v6, v1

    invoke-static {v6}, Lcom/bumptech/glide/load/model/StringLoader;->toFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v4, v6

    .line 38
    .local v4, "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/model/StringLoader;->uriLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    move-object v7, v4

    move v8, v2

    move v9, v3

    invoke-interface {v6, v7, v8, v9}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 31
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_2
    move-object v6, v1

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v4, v6

    .line 32
    .restart local v4    # "uri":Landroid/net/Uri;
    move-object v6, v4

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 33
    .local v5, "scheme":Ljava/lang/String;
    move-object v6, v5

    if-nez v6, :cond_1

    .line 34
    move-object v6, v1

    invoke-static {v6}, Lcom/bumptech/glide/load/model/StringLoader;->toFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v4, v6

    goto :goto_1
.end method
