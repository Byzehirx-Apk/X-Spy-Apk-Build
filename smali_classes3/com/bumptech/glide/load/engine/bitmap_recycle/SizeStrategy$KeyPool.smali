.class Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;
.source "SizeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool",
        "<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->create()Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
    return-object v0
.end method

.method protected create()Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
    return-object v0
.end method

.method public get(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    .locals 5

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
    move v1, p1

    .local v1, "size":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->get()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    move-object v2, v3

    .line 110
    .local v2, "result":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->init(I)V

    .line 111
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
    return-object v0
.end method
