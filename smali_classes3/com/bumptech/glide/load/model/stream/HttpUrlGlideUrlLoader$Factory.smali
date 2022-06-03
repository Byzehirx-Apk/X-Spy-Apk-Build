.class public Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory;
.super Ljava/lang/Object;
.source "HttpUrlGlideUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
        "<",
        "Lcom/bumptech/glide/load/model/GlideUrl;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final modelCache:Lcom/bumptech/glide/load/model/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelCache",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/load/model/ModelCache;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x1f4

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/model/ModelCache;-><init>(I)V

    iput-object v2, v1, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/GenericLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "factories":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    new-instance v3, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory;->modelCache:Lcom/bumptech/glide/load/model/ModelCache;

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader;-><init>(Lcom/bumptech/glide/load/model/ModelCache;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory;
    return-object v0
.end method

.method public teardown()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
