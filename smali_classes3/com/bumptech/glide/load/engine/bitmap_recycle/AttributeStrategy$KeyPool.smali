.class Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;
.source "AttributeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool",
        "<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
    return-object v0
.end method

.method protected bridge synthetic create()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;->create()Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
    return-object v0
.end method

.method public get(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    .locals 9

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "config":Landroid/graphics/Bitmap$Config;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;->get()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    move-object v4, v5

    .line 64
    .local v4, "result":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    move-object v5, v4

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->init(IILandroid/graphics/Bitmap$Config;)V

    .line 65
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
    return-object v0
.end method
