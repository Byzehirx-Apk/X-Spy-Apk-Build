.class public Lcom/bumptech/glide/GifRequestBuilder;
.super Lcom/bumptech/glide/GenericRequestBuilder;
.source "GifRequestBuilder.java"

# interfaces
.implements Lcom/bumptech/glide/BitmapOptions;
.implements Lcom/bumptech/glide/DrawableOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/GenericRequestBuilder",
        "<TModelType;",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;",
        "Lcom/bumptech/glide/BitmapOptions;",
        "Lcom/bumptech/glide/DrawableOptions;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TModelType;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Ljava/lang/Class",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;***>;)V"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TModelType;Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v2, p2

    .local v2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v3, p3

    .local v3, "other":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;***>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 43
    return-void
.end method

.method private toGifTransformations([Lcom/bumptech/glide/load/Transformation;)[Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)[",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;"
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "bitmapTransformations":[Lcom/bumptech/glide/load/Transformation;, "[Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    move-object v4, v1

    array-length v4, v4

    new-array v4, v4, [Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    move-object v2, v4

    .line 199
    .local v2, "transformations":[Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 200
    move-object v4, v2

    move v5, v3

    new-instance v6, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move v9, v3

    aget-object v8, v8, v9

    move-object v9, v0

    iget-object v9, v9, Lcom/bumptech/glide/GifRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v9}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    aput-object v6, v4, v5

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method


# virtual methods
.method public bridge synthetic animate(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->animate(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Landroid/view/animation/Animation;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public animate(I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "animationId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(I)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 281
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "animation":Landroid/view/animation/Animation;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 292
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "animationFactory":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 310
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "animator":Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 301
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method applyCenterCrop()V
    .locals 2

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/GifRequestBuilder;->centerCrop()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v1

    .line 441
    return-void
.end method

.method applyFitCenter()V
    .locals 2

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/GifRequestBuilder;->fitCenter()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v1

    .line 436
    return-void
.end method

.method public bridge synthetic cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/ResourceDecoder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "cacheDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 117
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/GifRequestBuilder;->centerCrop()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public centerCrop()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/GifRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v5}, Lcom/bumptech/glide/Glide;->getBitmapCenterCrop()Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/GifRequestBuilder;->transformFrame([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/GifRequestBuilder;->clone()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public clone()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-super {v1}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/GifRequestBuilder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/GifRequestBuilder;->clone()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic crossFade()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/GifRequestBuilder;->crossFade()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic crossFade(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->crossFade(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic crossFade(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":I
    move v2, p2

    .local v2, "x1":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/GifRequestBuilder;->crossFade(II)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Landroid/view/animation/Animation;
    move v2, p2

    .local v2, "x1":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/GifRequestBuilder;->crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public crossFade()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-super {v1, v2}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 235
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public crossFade(I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "duration":I
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 244
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public crossFade(II)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "animationId":I
    move v2, p2

    .local v2, "duration":I
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/GifRequestBuilder;->context:Landroid/content/Context;

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    invoke-super {v3, v4}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    .line 263
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            "I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "animation":Landroid/view/animation/Animation;
    move v2, p2

    .local v2, "duration":I
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/view/animation/Animation;I)V

    invoke-super {v3, v4}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    .line 254
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/ResourceDecoder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 107
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "strategy":Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 386
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/GifRequestBuilder;->dontAnimate()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public dontAnimate()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-super {v1}, Lcom/bumptech/glide/GenericRequestBuilder;->dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 272
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/GifRequestBuilder;->dontTransform()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public dontTransform()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-super {v1}, Lcom/bumptech/glide/GenericRequestBuilder;->dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 413
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/ResourceEncoder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 127
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->error(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public error(I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "resourceId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->error(I)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 349
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 358
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->fallback(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public fallback(I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "resourceId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 340
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 334
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/GifRequestBuilder;->fitCenter()Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public fitCenter()Lcom/bumptech/glide/GifRequestBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/GifRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v5}, Lcom/bumptech/glide/Glide;->getBitmapFitCenter()Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/GifRequestBuilder;->transformFrame([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/request/RequestListener;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TModelType;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "requestListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<-TModelType;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 368
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "model":Ljava/lang/Object;, "TModelType;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 425
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":I
    move v2, p2

    .local v2, "x1":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/GifRequestBuilder;->override(II)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public override(II)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    .line 395
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->placeholder(I)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public placeholder(I)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "resourceId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 319
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 328
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/Priority;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "priority":Lcom/bumptech/glide/Priority;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 136
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/Key;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "signature":Lcom/bumptech/glide/load/Key;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 419
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":F
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->sizeMultiplier(F)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public sizeMultiplier(F)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "sizeMultiplier":F
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 97
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "skip":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 377
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/Encoder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Ljava/io/InputStream;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "sourceEncoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<Ljava/io/InputStream;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 404
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":F
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->thumbnail(F)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/GenericRequestBuilder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public thumbnail(F)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "sizeMultiplier":F
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 88
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<***",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "thumbnailRequest":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<***Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 51
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public thumbnail(Lcom/bumptech/glide/GifRequestBuilder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<*>;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "thumbnailRequest":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<*>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 79
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Lcom/bumptech/glide/load/resource/gif/GifDrawable;Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 226
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":[Lcom/bumptech/glide/load/Transformation;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "transformations":[Lcom/bumptech/glide/load/Transformation;, "[Lcom/bumptech/glide/load/Transformation<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 217
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public varargs transformFrame([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "bitmapTransformations":[Lcom/bumptech/glide/load/Transformation;, "[Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/bumptech/glide/GifRequestBuilder;->toGifTransformations([Lcom/bumptech/glide/load/Transformation;)[Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public varargs transformFrame([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/GifRequestBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lcom/bumptech/glide/GifRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "bitmapTransformations":[Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/bumptech/glide/GifRequestBuilder;->toGifTransformations([Lcom/bumptech/glide/load/Transformation;)[Lcom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/GifRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/GifRequestBuilder;, "Lcom/bumptech/glide/GifRequestBuilder<TModelType;>;"
    return-object v0
.end method
