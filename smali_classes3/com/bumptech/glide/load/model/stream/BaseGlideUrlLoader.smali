.class public abstract Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;
.super Ljava/lang/Object;
.source "BaseGlideUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/stream/StreamModelLoader",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final concreteLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final modelCache:Lcom/bumptech/glide/load/model/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelCache",
            "<TT;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelCache;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelCache;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/ModelCache",
            "<TT;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "modelCache":Lcom/bumptech/glide/load/model/ModelCache;, "Lcom/bumptech/glide/load/model/ModelCache<TT;Lcom/bumptech/glide/load/model/GlideUrl;>;"
    move-object v3, v0

    const-class v4, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class v5, Ljava/io/InputStream;

    move-object v6, v1

    invoke-static {v4, v5, v6}, Lcom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v4

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelCache;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    move-object v1, p1

    .local v1, "concreteLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelCache;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelCache;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/ModelCache",
            "<TT;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    move-object v1, p1

    .local v1, "concreteLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"
    move-object v2, p2

    .local v2, "modelCache":Lcom/bumptech/glide/load/model/ModelCache;, "Lcom/bumptech/glide/load/model/ModelCache<TT;Lcom/bumptech/glide/load/model/GlideUrl;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->concreteLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 39
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    .line 40
    return-void
.end method


# virtual methods
.method protected getHeaders(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/Headers;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Lcom/bumptech/glide/load/model/Headers;"
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    move-object v1, p1

    .local v1, "model":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    sget-object v4, Lcom/bumptech/glide/load/model/Headers;->DEFAULT:Lcom/bumptech/glide/load/model/Headers;

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    return-object v0
.end method

.method public getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    move-object v1, p1

    .local v1, "model":Ljava/lang/Object;, "TT;"
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    const/4 v6, 0x0

    move-object v4, v6

    .line 45
    .local v4, "result":Lcom/bumptech/glide/load/model/GlideUrl;
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    if-eqz v6, :cond_0

    .line 46
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lcom/bumptech/glide/load/model/ModelCache;->get(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/load/model/GlideUrl;

    move-object v4, v6

    .line 49
    :cond_0
    move-object v6, v4

    if-nez v6, :cond_2

    .line 50
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->getUrl(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 51
    .local v5, "stringURL":Ljava/lang/String;
    move-object v6, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 52
    const/4 v6, 0x0

    move-object v0, v6

    .line 62
    .end local v0    # "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    .end local v5    # "stringURL":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 55
    .restart local v0    # "this":Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;, "Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader<TT;>;"
    .restart local v5    # "stringURL":Ljava/lang/String;
    :cond_1
    new-instance v6, Lcom/bumptech/glide/load/model/GlideUrl;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v5

    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->getHeaders(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/Headers;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    move-object v4, v6

    .line 57
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    if-eqz v6, :cond_2

    .line 58
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    move-object v7, v1

    move v8, v2

    move v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/bumptech/glide/load/model/ModelCache;->put(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 62
    .end local v5    # "stringURL":Ljava/lang/String;
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/model/stream/BaseGlideUrlLoader;->concreteLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    move-object v7, v4

    move v8, v2

    move v9, v3

    invoke-interface {v6, v7, v8, v9}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method protected abstract getUrl(Ljava/lang/Object;II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
