.class public Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
.super Ljava/lang/Object;
.source "PreFillType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/prefill/PreFillType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private config:Landroid/graphics/Bitmap$Config;

.field private final height:I

.field private weight:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    move v3, v1

    move v4, v1

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;-><init>(II)V

    .line 115
    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 107
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->weight:I

    .line 123
    move v3, v1

    if-gtz v3, :cond_0

    .line 124
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Width must be > 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_0
    move v3, v2

    if-gtz v3, :cond_1

    .line 127
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Height must be > 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    :cond_1
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->width:I

    .line 130
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->height:I

    .line 131
    return-void
.end method


# virtual methods
.method build()Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    .locals 8

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    new-instance v1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->width:I

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->height:I

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->config:Landroid/graphics/Bitmap$Config;

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->weight:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;-><init>(IILandroid/graphics/Bitmap$Config;I)V

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    return-object v0
.end method

.method getConfig()Landroid/graphics/Bitmap$Config;
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->config:Landroid/graphics/Bitmap$Config;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    return-object v0
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    move-object v1, p1

    .local v1, "config":Landroid/graphics/Bitmap$Config;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->config:Landroid/graphics/Bitmap$Config;

    .line 140
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    return-object v0
.end method

.method public setWeight(I)Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    .locals 6

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    move v1, p1

    .local v1, "weight":I
    move v2, v1

    if-gtz v2, :cond_0

    .line 159
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Weight must be > 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->weight:I

    .line 162
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    return-object v0
.end method
