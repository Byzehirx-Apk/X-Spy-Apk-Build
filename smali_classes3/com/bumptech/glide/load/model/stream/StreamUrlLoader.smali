.class public Lcom/bumptech/glide/load/model/stream/StreamUrlLoader;
.super Lcom/bumptech/glide/load/model/UrlLoader;
.source "StreamUrlLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/StreamUrlLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/UrlLoader",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 4
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
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/StreamUrlLoader;
    move-object v1, p1

    .local v1, "glideUrlLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/model/UrlLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 38
    return-void
.end method
