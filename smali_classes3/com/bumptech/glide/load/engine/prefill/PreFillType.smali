.class public final Lcom/bumptech/glide/load/engine/prefill/PreFillType;
.super Ljava/lang/Object;
.source "PreFillType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final config:Landroid/graphics/Bitmap$Config;

.field private final height:I

.field private final weight:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->DEFAULT_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method constructor <init>(IILandroid/graphics/Bitmap$Config;I)V
    .locals 9

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "config":Landroid/graphics/Bitmap$Config;
    move v4, p4

    .local v4, "weight":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v5, v3

    if-nez v5, :cond_0

    .line 31
    new-instance v5, Ljava/lang/NullPointerException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "Config must not be null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 34
    :cond_0
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    .line 35
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    .line 36
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    .line 37
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    if-eqz v3, :cond_1

    .line 71
    move-object v3, v1

    check-cast v3, Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    move-object v2, v3

    .line 72
    .local v2, "other":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    move-object v4, v2

    iget v4, v4, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    move-object v4, v2

    iget v4, v4, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    move-object v4, v2

    iget v4, v4, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 77
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    .end local v2    # "other":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    :goto_1
    return v0

    .line 72
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    .restart local v2    # "other":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 77
    .end local v2    # "other":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method getConfig()Landroid/graphics/Bitmap$Config;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    return-object v0
.end method

.method getHeight()I
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    return v0
.end method

.method getWeight()I
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    return v0
.end method

.method getWidth()I
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    move v1, v2

    .line 83
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    add-int/2addr v2, v3

    move v1, v2

    .line 84
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 85
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    add-int/2addr v2, v3

    move v1, v2

    .line 86
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PreFillSize{width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->weight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/prefill/PreFillType;
    return-object v0
.end method
