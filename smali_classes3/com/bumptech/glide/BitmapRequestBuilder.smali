.class public Lcom/bumptech/glide/BitmapRequestBuilder;
.super Lcom/bumptech/glide/GenericRequestBuilder;
.source "BitmapRequestBuilder.java"

# interfaces
.implements Lcom/bumptech/glide/BitmapOptions;
.implements Lcom/bumptech/glide/DrawableOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/GenericRequestBuilder",
        "<TModelType;",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Landroid/graphics/Bitmap;",
        "TTranscodeType;>;",
        "Lcom/bumptech/glide/BitmapOptions;",
        "Lcom/bumptech/glide/DrawableOptions;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field private downsampler:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private imageDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private videoDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TModelType;",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            "TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;***>;)V"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TModelType;Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;TTranscodeType;>;"
    move-object v2, p2

    .local v2, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscodeType;>;"
    move-object v3, p3

    .local v3, "other":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<TModelType;***>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 55
    move-object v4, v0

    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    iput-object v5, v4, Lcom/bumptech/glide/BitmapRequestBuilder;->downsampler:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 63
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v5}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v5

    iput-object v5, v4, Lcom/bumptech/glide/BitmapRequestBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 64
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v5}, Lcom/bumptech/glide/Glide;->getDecodeFormat()Lcom/bumptech/glide/load/DecodeFormat;

    move-result-object v5

    iput-object v5, v4, Lcom/bumptech/glide/BitmapRequestBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 66
    move-object v4, v0

    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/BitmapRequestBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/BitmapRequestBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v5, v4, Lcom/bumptech/glide/BitmapRequestBuilder;->imageDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 67
    move-object v4, v0

    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/BitmapRequestBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/BitmapRequestBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v5, v4, Lcom/bumptech/glide/BitmapRequestBuilder;->videoDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 68
    return-void
.end method

.method private crossFadeNotSupported()Ljava/lang/RuntimeException;
    .locals 7

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 323
    .local v1, "className":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 324
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 326
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ".crossFade() is not supported for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", use .animate() to provide a compatible animation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method private downsample(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/Downsampler;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "downsampler":Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/BitmapRequestBuilder;->downsampler:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 117
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/BitmapRequestBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/BitmapRequestBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {v4, v5, v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v3, v2, Lcom/bumptech/glide/BitmapRequestBuilder;->imageDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 118
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/BitmapRequestBuilder;->imageDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/BitmapRequestBuilder;->videoDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 119
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method


# virtual methods
.method public animate(I)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "animationId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(I)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 410
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "animation":Landroid/view/animation/Animation;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 421
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "animationFactory":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TTranscodeType;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 441
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "animator":Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 430
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic animate(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->animate(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Landroid/view/animation/Animation;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method applyCenterCrop()V
    .locals 2

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    .line 599
    return-void
.end method

.method applyFitCenter()V
    .locals 2

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    .line 594
    return-void
.end method

.method public approximate()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, v0

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-direct {v1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->downsample(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public asIs()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, v0

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->NONE:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-direct {v1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->downsample(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public atMost()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, v0

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_MOST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-direct {v1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->downsample(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "cacheDecoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;Landroid/graphics/Bitmap;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 184
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/ResourceDecoder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/BitmapRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v5}, Lcom/bumptech/glide/Glide;->getBitmapCenterCrop()Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public clone()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 571
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, v0

    invoke-super {v1}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/BitmapRequestBuilder;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->clone()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
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
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->clone()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public final crossFade()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    const-class v1, Landroid/graphics/Bitmap;

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;-><init>()V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .line 339
    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    :goto_0
    return-object v0

    .line 338
    .restart local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    :cond_0
    const-class v1, Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 342
    :cond_1
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->crossFadeNotSupported()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public crossFade(I)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "duration":I
    const-class v2, Landroid/graphics/Bitmap;

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .line 355
    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    :goto_0
    return-object v0

    .line 354
    .restart local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    :cond_0
    const-class v2, Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 358
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->crossFadeNotSupported()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public crossFade(II)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "animationId":I
    move v2, p2

    .local v2, "duration":I
    const-class v3, Landroid/graphics/Bitmap;

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/BitmapRequestBuilder;->context:Landroid/content/Context;

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/BitmapRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v3

    move-object v0, v3

    .line 388
    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    :goto_0
    return-object v0

    .line 387
    .restart local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    :cond_0
    const-class v3, Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/BitmapRequestBuilder;->context:Landroid/content/Context;

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/BitmapRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 391
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->crossFadeNotSupported()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            "I)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "animation":Landroid/view/animation/Animation;
    move v2, p2

    .local v2, "duration":I
    const-class v3, Landroid/graphics/Bitmap;

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/request/animation/BitmapCrossFadeFactory;-><init>(Landroid/view/animation/Animation;I)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/BitmapRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v3

    move-object v0, v3

    .line 372
    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    :goto_0
    return-object v0

    .line 371
    .restart local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    :cond_0
    const-class v3, Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 372
    move-object v3, v0

    new-instance v4, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/view/animation/Animation;I)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/BitmapRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 375
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->crossFadeNotSupported()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public bridge synthetic crossFade()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->crossFade()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic crossFade(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->crossFade(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic crossFade(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "x0":I
    move v2, p2

    .local v2, "x1":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/BitmapRequestBuilder;->crossFade(II)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Landroid/view/animation/Animation;
    move v2, p2

    .local v2, "x1":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/BitmapRequestBuilder;->crossFade(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;Landroid/graphics/Bitmap;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 175
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/ResourceDecoder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "strategy":Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 517
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public dontAnimate()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, v0

    invoke-super {v1}, Lcom/bumptech/glide/GenericRequestBuilder;->dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 401
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->dontAnimate()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public dontTransform()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, v0

    invoke-super {v1}, Lcom/bumptech/glide/GenericRequestBuilder;->dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 554
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->dontTransform()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<Landroid/graphics/Bitmap;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 193
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/ResourceEncoder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public error(I)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "resourceId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->error(I)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 480
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 489
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->error(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public fallback(I)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "resourceId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 471
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 465
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->fallback(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/BitmapRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v5}, Lcom/bumptech/glide/Glide;->getBitmapFitCenter()Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->fitCenter()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "format":Lcom/bumptech/glide/load/DecodeFormat;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/BitmapRequestBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 245
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/BitmapRequestBuilder;->downsampler:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/BitmapRequestBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v3, v2, Lcom/bumptech/glide/BitmapRequestBuilder;->imageDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 246
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>()V

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/BitmapRequestBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v3, v2, Lcom/bumptech/glide/BitmapRequestBuilder;->videoDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 247
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/BitmapRequestBuilder;->downsampler:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/BitmapRequestBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 248
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/BitmapRequestBuilder;->imageDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/BitmapRequestBuilder;->videoDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 249
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public imageDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/BitmapRequestBuilder;->imageDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 207
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/BitmapRequestBuilder;->videoDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 208
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
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
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "view":Landroid/widget/ImageView;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TModelType;TTranscodeType;>;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "requestListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<-TModelType;TTranscodeType;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 499
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/request/RequestListener;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "model":Ljava/lang/Object;, "TModelType;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 566
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public override(II)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v3

    .line 526
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "x0":I
    move v2, p2

    .local v2, "x1":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/BitmapRequestBuilder;->override(II)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "resourceId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 450
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 459
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "x0":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->placeholder(I)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "priority":Lcom/bumptech/glide/Priority;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 255
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/Priority;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "signature":Lcom/bumptech/glide/load/Key;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 560
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/Key;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public sizeMultiplier(F)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "sizeMultiplier":F
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 166
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "x0":F
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->sizeMultiplier(F)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "skip":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 508
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "x0":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "sourceEncoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<Lcom/bumptech/glide/load/model/ImageVideoWrapper;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 545
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/Encoder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public thumbnail(F)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "sizeMultiplier":F
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 128
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public thumbnail(Lcom/bumptech/glide/BitmapRequestBuilder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<*TTranscodeType;>;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "thumbnailRequest":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<*TTranscodeType;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 157
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<***TTranscodeType;>;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "thumbnailRequest":Lcom/bumptech/glide/GenericRequestBuilder;, "Lcom/bumptech/glide/GenericRequestBuilder<***TTranscodeType;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 536
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic thumbnail(F)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move v1, p1

    .local v1, "x0":F
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->thumbnail(F)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/GenericRequestBuilder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->thumbnail(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<",
            "Landroid/graphics/Bitmap;",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Landroid/graphics/Bitmap;TTranscodeType;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 318
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->transcoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "transformations":[Lcom/bumptech/glide/load/Transformation;, "[Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 308
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "transformations":[Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 270
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "x0":[Lcom/bumptech/glide/load/Transformation;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method

.method public videoDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    move-object v1, p1

    .local v1, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/BitmapRequestBuilder;->videoDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 221
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/BitmapRequestBuilder;->imageDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-super {v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v2

    .line 222
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/BitmapRequestBuilder;, "Lcom/bumptech/glide/BitmapRequestBuilder<TModelType;TTranscodeType;>;"
    return-object v0
.end method
