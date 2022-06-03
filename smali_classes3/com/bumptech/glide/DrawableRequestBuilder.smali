.class public Lcom/bumptech/glide/DrawableRequestBuilder;
.super Lcom/bumptech/glide/GenericRequestBuilder;
.source "DrawableRequestBuilder.java"

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
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;",
        "Lcom/bumptech/glide/BitmapOptions;",
        "Lcom/bumptech/glide/DrawableOptions;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TModelType;",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/manager/RequestTracker;",
            "Lcom/bumptech/glide/manager/Lifecycle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModelType;>;"
    move-object/from16 v3, p3

    .local v3, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TModelType;Lcom/bumptech/glide/load/model/ImageVideoWrapper;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    move-object/from16 v4, p4

    .local v4, "glide":Lcom/bumptech/glide/Glide;
    move-object/from16 v5, p5

    .local v5, "requestTracker":Lcom/bumptech/glide/manager/RequestTracker;
    move-object/from16 v6, p6

    .local v6, "lifecycle":Lcom/bumptech/glide/manager/Lifecycle;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    const-class v11, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-direct/range {v7 .. v14}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V

    .line 51
    move-object v7, v0

    invoke-virtual {v7}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    .line 52
    return-void
.end method


# virtual methods
.method public animate(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "animationId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(I)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 309
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "animation":Landroid/view/animation/Animation;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 320
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "animationFactory":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 300
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "animator":Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 291
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic animate(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->animate(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Landroid/view/animation/Animation;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method applyCenterCrop()V
    .locals 2

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 468
    return-void
.end method

.method applyFitCenter()V
    .locals 2

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 463
    return-void
.end method

.method public varargs bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "bitmapTransformations":[Lcom/bumptech/glide/load/Transformation;, "[Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    move-object v4, v1

    array-length v4, v4

    new-array v4, v4, [Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-object v2, v4

    .line 212
    .local v2, "transformations":[Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 213
    move-object v4, v2

    move v5, v3

    new-instance v6, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/DrawableRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v8}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v8

    move-object v9, v1

    move v10, v3

    aget-object v9, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;)V

    aput-object v6, v4, v5

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "cacheDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 126
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/ResourceDecoder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/Transformation;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/DrawableRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v5}, Lcom/bumptech/glide/Glide;->getDrawableCenterCrop()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public clone()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-super {v1}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/DrawableRequestBuilder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->clone()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->clone()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public final crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-super {v1, v2}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 248
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public crossFade(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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

    .line 256
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public crossFade(II)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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

    iget-object v6, v6, Lcom/bumptech/glide/DrawableRequestBuilder;->context:Landroid/content/Context;

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    invoke-super {v3, v4}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    .line 273
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            "I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
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

    .line 265
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic crossFade()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic crossFade(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic crossFade(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":I
    move v2, p2

    .local v2, "x1":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Landroid/view/animation/Animation;
    move v2, p2

    .local v2, "x1":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 117
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/ResourceDecoder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "strategy":Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 387
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-super {v1}, Lcom/bumptech/glide/GenericRequestBuilder;->dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 282
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public dontTransform()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-super {v1}, Lcom/bumptech/glide/GenericRequestBuilder;->dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 423
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontTransform()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 135
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/ResourceEncoder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public error(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "resourceId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->error(I)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 359
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 368
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public fallback(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "resourceId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 350
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 344
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->fallback(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/Transformation;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/DrawableRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v5}, Lcom/bumptech/glide/Glide;->getDrawableFitCenter()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "view":Landroid/widget/ImageView;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TModelType;",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "requestListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<-TModelType;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 378
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/request/RequestListener;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "model":Ljava/lang/Object;, "TModelType;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 435
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public override(II)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    .line 405
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":I
    move v2, p2

    .local v2, "x1":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "resourceId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 329
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 338
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "priority":Lcom/bumptech/glide/Priority;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 144
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/Priority;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "signature":Lcom/bumptech/glide/load/Key;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 429
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/Key;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public sizeMultiplier(F)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "sizeMultiplier":F
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 108
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":F
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->sizeMultiplier(F)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "skip":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 396
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "sourceEncoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 414
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/Encoder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public thumbnail(F)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "sizeMultiplier":F
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 99
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public thumbnail(Lcom/bumptech/glide/DrawableRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<*>;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "thumbnailRequest":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<*>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 80
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<***",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "thumbnailRequest":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<***Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 90
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move v1, p1

    .local v1, "x0":F
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->thumbnail(F)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/GenericRequestBuilder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 240
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "transformation":[Lcom/bumptech/glide/load/Transformation;, "[Lcom/bumptech/glide/load/Transformation<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 230
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "transformations":[Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    move-object v1, p1

    .local v1, "x0":[Lcom/bumptech/glide/load/Transformation;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/DrawableRequestBuilder;, "Lcom/bumptech/glide/DrawableRequestBuilder<TModelType;>;"
    return-object v0
.end method
