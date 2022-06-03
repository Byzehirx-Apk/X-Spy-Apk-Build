.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
.super Ljava/lang/Object;
.source "SizeConfigStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# instance fields
.field private config:Landroid/graphics/Bitmap$Config;

.field private final pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

.field private size:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    move-object v1, p1

    .local v1, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 179
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    .line 180
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;ILandroid/graphics/Bitmap$Config;)V
    .locals 7

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    move-object v1, p1

    .local v1, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;
    move v2, p2

    .local v2, "size":I
    move-object v3, p3

    .local v3, "config":Landroid/graphics/Bitmap$Config;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;)V

    .line 185
    move-object v4, v0

    move v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->init(ILandroid/graphics/Bitmap$Config;)V

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;)I
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    move v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    if-eqz v3, :cond_3

    .line 206
    move-object v3, v1

    check-cast v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-object v2, v3

    .line 207
    .local v2, "other":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    move-object v4, v2

    iget v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    if-ne v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-nez v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-nez v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 209
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    .end local v2    # "other":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    :goto_1
    return v0

    .line 207
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    .restart local v2    # "other":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 209
    .end local v2    # "other":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    move v1, v2

    .line 215
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 216
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    return v0

    .line 215
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public init(ILandroid/graphics/Bitmap$Config;)V
    .locals 5

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    move v1, p1

    .local v1, "size":I
    move-object v2, p2

    .local v2, "config":Landroid/graphics/Bitmap$Config;
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    .line 190
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    .line 191
    return-void
.end method

.method public offer()V
    .locals 3

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 196
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->access$100(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    return-object v0
.end method
