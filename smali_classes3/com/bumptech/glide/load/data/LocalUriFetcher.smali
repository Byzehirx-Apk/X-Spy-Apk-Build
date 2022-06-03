.class public abstract Lcom/bumptech/glide/load/data/LocalUriFetcher;
.super Ljava/lang/Object;
.source "LocalUriFetcher.java"

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
.field private static final TAG:Ljava/lang/String; = "LocalUriFetcher"


# instance fields
.field private final context:Landroid/content/Context;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/LocalUriFetcher;, "Lcom/bumptech/glide/load/data/LocalUriFetcher<TT;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "uri":Landroid/net/Uri;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v3, Lcom/bumptech/glide/load/data/LocalUriFetcher;->context:Landroid/content/Context;

    .line 38
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/data/LocalUriFetcher;->uri:Landroid/net/Uri;

    .line 39
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 65
    .local p0, "this":Lcom/bumptech/glide/load/data/LocalUriFetcher;, "Lcom/bumptech/glide/load/data/LocalUriFetcher<TT;>;"
    return-void
.end method

.method public cleanup()V
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/LocalUriFetcher;, "Lcom/bumptech/glide/load/data/LocalUriFetcher<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/data/LocalUriFetcher;->data:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 52
    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/bumptech/glide/load/data/LocalUriFetcher;->data:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/data/LocalUriFetcher;->close(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 60
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 54
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "LocalUriFetcher"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const-string/jumbo v2, "LocalUriFetcher"

    const-string/jumbo v3, "failed to close data"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_0
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
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/LocalUriFetcher;, "Lcom/bumptech/glide/load/data/LocalUriFetcher<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/data/LocalUriFetcher;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/data/LocalUriFetcher;, "Lcom/bumptech/glide/load/data/LocalUriFetcher<TT;>;"
    return-object v0
.end method

.method public final loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 7
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
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/LocalUriFetcher;, "Lcom/bumptech/glide/load/data/LocalUriFetcher<TT;>;"
    move-object v1, p1

    .local v1, "priority":Lcom/bumptech/glide/Priority;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/data/LocalUriFetcher;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v2, v3

    .line 44
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/data/LocalUriFetcher;->uri:Landroid/net/Uri;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/load/data/LocalUriFetcher;->loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lcom/bumptech/glide/load/data/LocalUriFetcher;->data:Ljava/lang/Object;

    .line 45
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/data/LocalUriFetcher;->data:Ljava/lang/Object;

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/data/LocalUriFetcher;, "Lcom/bumptech/glide/load/data/LocalUriFetcher<TT;>;"
    return-object v0
.end method

.method protected abstract loadResource(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/content/ContentResolver;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method
