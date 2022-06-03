.class public abstract Lcom/bumptech/glide/load/data/AssetPathFetcher;
.super Ljava/lang/Object;
.source "AssetPathFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetUriFetcher"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final assetPath:Ljava/lang/String;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/AssetPathFetcher;, "Lcom/bumptech/glide/load/data/AssetPathFetcher<TT;>;"
    move-object v1, p1

    .local v1, "assetManager":Landroid/content/res/AssetManager;
    move-object v2, p2

    .local v2, "assetPath":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/data/AssetPathFetcher;->assetManager:Landroid/content/res/AssetManager;

    .line 23
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/data/AssetPathFetcher;->assetPath:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 55
    .local p0, "this":Lcom/bumptech/glide/load/data/AssetPathFetcher;, "Lcom/bumptech/glide/load/data/AssetPathFetcher<TT;>;"
    return-void
.end method

.method public cleanup()V
    .locals 5

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/AssetPathFetcher;, "Lcom/bumptech/glide/load/data/AssetPathFetcher<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/data/AssetPathFetcher;->data:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 35
    .line 45
    :goto_0
    return-void

    .line 38
    :cond_0
    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/bumptech/glide/load/data/AssetPathFetcher;->data:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/data/AssetPathFetcher;->close(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 45
    :cond_1
    :goto_1
    goto :goto_0

    .line 39
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 40
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "AssetUriFetcher"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    const-string/jumbo v2, "AssetUriFetcher"

    const-string/jumbo v3, "Failed to close data"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_1
.end method

.method protected abstract close(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/AssetPathFetcher;, "Lcom/bumptech/glide/load/data/AssetPathFetcher<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/data/AssetPathFetcher;->assetPath:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/data/AssetPathFetcher;, "Lcom/bumptech/glide/load/data/AssetPathFetcher<TT;>;"
    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/AssetPathFetcher;, "Lcom/bumptech/glide/load/data/AssetPathFetcher<TT;>;"
    move-object v1, p1

    .local v1, "priority":Lcom/bumptech/glide/Priority;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/data/AssetPathFetcher;->assetManager:Landroid/content/res/AssetManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/data/AssetPathFetcher;->assetPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/data/AssetPathFetcher;->loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/bumptech/glide/load/data/AssetPathFetcher;->data:Ljava/lang/Object;

    .line 29
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/data/AssetPathFetcher;->data:Ljava/lang/Object;

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/data/AssetPathFetcher;, "Lcom/bumptech/glide/load/data/AssetPathFetcher<TT;>;"
    return-object v0
.end method

.method protected abstract loadResource(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
