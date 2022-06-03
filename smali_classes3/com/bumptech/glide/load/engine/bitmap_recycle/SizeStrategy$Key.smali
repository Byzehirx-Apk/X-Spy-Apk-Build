.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
.super Ljava/lang/Object;
.source "SizeStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# instance fields
.field private final pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

.field private size:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    move-object v1, p1

    .local v1, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 126
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;)I
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    move v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    if-eqz v3, :cond_1

    .line 136
    move-object v3, v1

    check-cast v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    move-object v2, v3

    .line 137
    .local v2, "other":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    move-object v4, v2

    iget v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 139
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    .end local v2    # "other":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    :goto_1
    return v0

    .line 137
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    .restart local v2    # "other":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 139
    .end local v2    # "other":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    return v0
.end method

.method public init(I)V
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    .line 131
    return-void
.end method

.method public offer()V
    .locals 3

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    invoke-static {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->access$100(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    return-object v0
.end method
