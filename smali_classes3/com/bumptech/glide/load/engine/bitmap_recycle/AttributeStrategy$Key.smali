.class Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
.super Ljava/lang/Object;
.source "AttributeStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Key"
.end annotation


# instance fields
.field private config:Landroid/graphics/Bitmap$Config;

.field private height:I

.field private final pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    move-object v1, p1

    .local v1, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 83
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

    .line 84
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    if-eqz v3, :cond_1

    .line 95
    move-object v3, v1

    check-cast v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    move-object v2, v3

    .line 96
    .local v2, "other":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    move-object v4, v2

    iget v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    move-object v4, v2

    iget v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 100
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    .end local v2    # "other":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    :goto_1
    return v0

    .line 96
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    .restart local v2    # "other":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 100
    .end local v2    # "other":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    move v1, v2

    .line 106
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    add-int/2addr v2, v3

    move v1, v2

    .line 107
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 108
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    return v0

    .line 107
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public init(IILandroid/graphics/Bitmap$Config;)V
    .locals 6

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "config":Landroid/graphics/Bitmap$Config;
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    .line 88
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    .line 89
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    .line 90
    return-void
.end method

.method public offer()V
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;->offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->width:I

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->height:I

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;->access$000(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    return-object v0
.end method
