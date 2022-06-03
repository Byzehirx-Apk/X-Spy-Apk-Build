.class Lcom/bumptech/glide/GlideBuilder$1;
.super Ljava/lang/Object;
.source "GlideBuilder.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/GlideBuilder;->setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache;)Lcom/bumptech/glide/GlideBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/GlideBuilder;

.field final synthetic val$diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/GlideBuilder;Lcom/bumptech/glide/load/engine/cache/DiskCache;)V
    .locals 5

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GlideBuilder$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/GlideBuilder$1;->this$0:Lcom/bumptech/glide/GlideBuilder;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/GlideBuilder$1;->val$diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GlideBuilder$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/GlideBuilder$1;->val$diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/GlideBuilder$1;
    return-object v0
.end method
