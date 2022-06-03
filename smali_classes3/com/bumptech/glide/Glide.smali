.class public Lcom/bumptech/glide/Glide;
.super Ljava/lang/Object;
.source "Glide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/Glide$ClearTarget;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Glide"

.field private static volatile glide:Lcom/bumptech/glide/Glide;

.field private static modulesEnabled:Z


# instance fields
.field private final bitmapCenterCrop:Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

.field private final bitmapFitCenter:Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

.field private final dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

.field private final decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field private final drawableCenterCrop:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

.field private final drawableFitCenter:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

.field private final engine:Lcom/bumptech/glide/load/engine/Engine;

.field private final imageViewTargetFactory:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

.field private final loaderFactory:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

.field private final mainHandler:Landroid/os/Handler;

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/Glide;->modulesEnabled:Z

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 20

    .prologue
    .line 231
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move-object/from16 v1, p1

    .local v1, "engine":Lcom/bumptech/glide/load/engine/Engine;
    move-object/from16 v2, p2

    .local v2, "memoryCache":Lcom/bumptech/glide/load/engine/cache/MemoryCache;
    move-object/from16 v3, p3

    .local v3, "bitmapPool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    move-object/from16 v4, p4

    .local v4, "context":Landroid/content/Context;
    move-object/from16 v5, p5

    .local v5, "decodeFormat":Lcom/bumptech/glide/load/DecodeFormat;
    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 94
    move-object v10, v0

    new-instance v11, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    invoke-direct {v12}, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;-><init>()V

    iput-object v11, v10, Lcom/bumptech/glide/Glide;->imageViewTargetFactory:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    .line 95
    move-object v10, v0

    new-instance v11, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    invoke-direct {v12}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;-><init>()V

    iput-object v11, v10, Lcom/bumptech/glide/Glide;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    .line 232
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/bumptech/glide/Glide;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 233
    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 234
    move-object v10, v0

    move-object v11, v2

    iput-object v11, v10, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 235
    move-object v10, v0

    move-object v11, v5

    iput-object v11, v10, Lcom/bumptech/glide/Glide;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 236
    move-object v10, v0

    new-instance v11, Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v13, v4

    invoke-direct {v12, v13}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;-><init>(Landroid/content/Context;)V

    iput-object v11, v10, Lcom/bumptech/glide/Glide;->loaderFactory:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    .line 237
    move-object v10, v0

    new-instance v11, Landroid/os/Handler;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v11, v10, Lcom/bumptech/glide/Glide;->mainHandler:Landroid/os/Handler;

    .line 238
    move-object v10, v0

    new-instance v11, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v13, v2

    move-object v14, v3

    move-object v15, v5

    invoke-direct {v12, v13, v14, v15}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v11, v10, Lcom/bumptech/glide/Glide;->bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    .line 240
    move-object v10, v0

    new-instance v11, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    invoke-direct {v12}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;-><init>()V

    iput-object v11, v10, Lcom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    .line 242
    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v12, v3

    move-object v13, v5

    invoke-direct {v11, v12, v13}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    move-object v6, v10

    .line 244
    .local v6, "streamBitmapLoadProvider":Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class v11, Ljava/io/InputStream;

    const-class v12, Landroid/graphics/Bitmap;

    move-object v13, v6

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 246
    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v12, v3

    move-object v13, v5

    invoke-direct {v11, v12, v13}, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    move-object v7, v10

    .line 248
    .local v7, "fileDescriptorLoadProvider":Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class v11, Landroid/os/ParcelFileDescriptor;

    const-class v12, Landroid/graphics/Bitmap;

    move-object v13, v7

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 250
    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v12, v6

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;-><init>(Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    move-object v8, v10

    .line 252
    .local v8, "imageVideoDataLoadProvider":Lcom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class v11, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    const-class v12, Landroid/graphics/Bitmap;

    move-object v13, v8

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 254
    new-instance v10, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v12, v4

    move-object v13, v3

    invoke-direct {v11, v12, v13}, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    move-object v9, v10

    .line 256
    .local v9, "gifDrawableLoadProvider":Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class v11, Ljava/io/InputStream;

    const-class v12, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    move-object v13, v9

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 258
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class v11, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    const-class v12, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    new-instance v13, Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v17}, Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;-><init>(Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 261
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class v11, Ljava/io/InputStream;

    const-class v12, Ljava/io/File;

    new-instance v13, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;-><init>()V

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 263
    move-object v10, v0

    const-class v11, Ljava/io/File;

    const-class v12, Landroid/os/ParcelFileDescriptor;

    new-instance v13, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$Factory;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$Factory;-><init>()V

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 264
    move-object v10, v0

    const-class v11, Ljava/io/File;

    const-class v12, Ljava/io/InputStream;

    new-instance v13, Lcom/bumptech/glide/load/model/stream/StreamFileLoader$Factory;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lcom/bumptech/glide/load/model/stream/StreamFileLoader$Factory;-><init>()V

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 265
    move-object v10, v0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v12, Landroid/os/ParcelFileDescriptor;

    new-instance v13, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;-><init>()V

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 266
    move-object v10, v0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/io/InputStream;

    new-instance v13, Lcom/bumptech/glide/load/model/stream/StreamResourceLoader$Factory;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lcom/bumptech/glide/load/model/stream/StreamResourceLoader$Factory;-><init>()V

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 267
    move-object v10, v0

    const-class v11, Ljava/lang/Integer;

    const-class v12, Landroid/os/ParcelFileDescriptor;

    new-instance v13, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;-><init>()V

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 268
    move-object v10, v0

    const-class v11, Ljava/lang/Integer;

    const-class v12, Ljava/io/InputStream;

    new-instance v13, Lcom/bumptech/glide/load/model/stream/StreamResourceLoader$Factory;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lcom/bumptech/glide/load/model/stream/StreamResourceLoader$Factory;-><init>()V

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 269
    move-object v10, v0

    const-class v11, Ljava/lang/String;

    const-class v12, Landroid/os/ParcelFileDescriptor;

    new-instance v13, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader$Factory;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader$Factory;-><init>()V

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 270
    move-object v10, v0

    const-class v11, Ljava/lang/String;

    const-class v12, Ljava/io/InputStream;

    new-instance v13, Lcom/bumptech/glide/load/model/stream/StreamStringLoader$Factory;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lcom/bumptech/glide/load/model/stream/StreamStringLoader$Factory;-><init>()V

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 271
    move-object v10, v0

    const-class v11, Landroid/net/Uri;

    const-class v12, Landroid/os/ParcelFileDescriptor;

    new-instance v13, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader$Factory;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader$Factory;-><init>()V

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 272
    move-object v10, v0

    const-class v11, Landroid/net/Uri;

    const-class v12, Ljava/io/InputStream;

    new-instance v13, Lcom/bumptech/glide/load/model/stream/StreamUriLoader$Factory;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lcom/bumptech/glide/load/model/stream/StreamUriLoader$Factory;-><init>()V

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 273
    move-object v10, v0

    const-class v11, Ljava/net/URL;

    const-class v12, Ljava/io/InputStream;

    new-instance v13, Lcom/bumptech/glide/load/model/stream/StreamUrlLoader$Factory;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lcom/bumptech/glide/load/model/stream/StreamUrlLoader$Factory;-><init>()V

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 274
    move-object v10, v0

    const-class v11, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class v12, Ljava/io/InputStream;

    new-instance v13, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory;-><init>()V

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 275
    move-object v10, v0

    const-class v11, [B

    const-class v12, Ljava/io/InputStream;

    new-instance v13, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader$Factory;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader$Factory;-><init>()V

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 277
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/Glide;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    const-class v11, Landroid/graphics/Bitmap;

    const-class v12, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    new-instance v13, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v4

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v16, v3

    invoke-direct/range {v14 .. v16}, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 279
    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/Glide;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    const-class v11, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    const-class v12, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    new-instance v13, Lcom/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v18, v3

    invoke-direct/range {v16 .. v18}, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-direct {v14, v15}, Lcom/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;-><init>(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    invoke-virtual {v10, v11, v12, v13}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 283
    move-object v10, v0

    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v13, v3

    invoke-direct {v12, v13}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v11, v10, Lcom/bumptech/glide/Glide;->bitmapCenterCrop:Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    .line 284
    move-object v10, v0

    new-instance v11, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v13, v3

    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/Glide;->bitmapCenterCrop:Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v12, v13, v14}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;)V

    iput-object v11, v10, Lcom/bumptech/glide/Glide;->drawableCenterCrop:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    .line 286
    move-object v10, v0

    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v13, v3

    invoke-direct {v12, v13}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v11, v10, Lcom/bumptech/glide/Glide;->bitmapFitCenter:Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    .line 287
    move-object v10, v0

    new-instance v11, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v13, v3

    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/Glide;->bitmapFitCenter:Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v12, v13, v14}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;)V

    iput-object v11, v10, Lcom/bumptech/glide/Glide;->drawableFitCenter:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    .line 288
    return-void
.end method

.method public static buildFileDescriptorModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    const-class v3, Landroid/os/ParcelFileDescriptor;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    return-object v0
.end method

.method public static buildFileDescriptorModelLoader(Ljava/lang/Object;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    move-object v0, p0

    .local v0, "model":Ljava/lang/Object;, "TT;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    const-class v3, Landroid/os/ParcelFileDescriptor;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "model":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public static buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v1, p1

    .local v1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, v0

    if-nez v3, :cond_1

    .line 562
    const-string/jumbo v3, "Glide"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    const-string/jumbo v3, "Glide"

    const-string/jumbo v4, "Unable to load null model, setting placeholder only"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 565
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 567
    .end local v0    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_1
    move-object v3, v2

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v3

    invoke-direct {v3}, Lcom/bumptech/glide/Glide;->getLoaderFactory()Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static buildModelLoader(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "model":Ljava/lang/Object;, "TT;"
    move-object v1, p1

    .local v1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :goto_0
    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "model":Ljava/lang/Object;, "TT;"
    return-object v0

    .restart local v0    # "model":Ljava/lang/Object;, "TT;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    const-class v3, Ljava/io/InputStream;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    return-object v0
.end method

.method public static buildStreamModelLoader(Ljava/lang/Object;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "model":Ljava/lang/Object;, "TT;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    const-class v3, Ljava/io/InputStream;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "model":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public static clear(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    new-instance v2, Lcom/bumptech/glide/Glide$ClearTarget;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/bumptech/glide/Glide$ClearTarget;-><init>(Landroid/view/View;)V

    move-object v1, v2

    .line 488
    .local v1, "viewTarget":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<*>;"
    move-object v2, v1

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 489
    return-void
.end method

.method public static clear(Lcom/bumptech/glide/request/FutureTarget;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/FutureTarget",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "target":Lcom/bumptech/glide/request/FutureTarget;, "Lcom/bumptech/glide/request/FutureTarget<*>;"
    move-object v1, v0

    invoke-interface {v1}, Lcom/bumptech/glide/request/FutureTarget;->clear()V

    .line 471
    return-void
.end method

.method public static clear(Lcom/bumptech/glide/request/target/Target;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<*>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 456
    move-object v2, v0

    invoke-interface {v2}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v2

    move-object v1, v2

    .line 457
    .local v1, "request":Lcom/bumptech/glide/request/Request;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 458
    move-object v2, v1

    invoke-interface {v2}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 459
    move-object v2, v0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/Request;)V

    .line 461
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
    .locals 12

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    sget-object v8, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-nez v8, :cond_2

    .line 162
    const-class v8, Lcom/bumptech/glide/Glide;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v1, v9

    monitor-enter v8

    .line 163
    :try_start_0
    sget-object v8, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-nez v8, :cond_1

    .line 164
    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    move-object v2, v8

    .line 165
    .local v2, "applicationContext":Landroid/content/Context;
    new-instance v8, Lcom/bumptech/glide/GlideBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/bumptech/glide/GlideBuilder;-><init>(Landroid/content/Context;)V

    move-object v3, v8

    .line 166
    .local v3, "builder":Lcom/bumptech/glide/GlideBuilder;
    move-object v8, v2

    invoke-static {v8}, Lcom/bumptech/glide/Glide;->parseGlideModules(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 167
    .local v4, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/module/GlideModule;>;"
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/module/GlideModule;

    move-object v6, v8

    .line 168
    .local v6, "module":Lcom/bumptech/glide/module/GlideModule;
    move-object v8, v6

    move-object v9, v2

    move-object v10, v3

    invoke-interface {v8, v9, v10}, Lcom/bumptech/glide/module/GlideModule;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    .line 169
    goto :goto_0

    .line 170
    .end local v6    # "module":Lcom/bumptech/glide/module/GlideModule;
    :cond_0
    move-object v8, v3

    invoke-virtual {v8}, Lcom/bumptech/glide/GlideBuilder;->createGlide()Lcom/bumptech/glide/Glide;

    move-result-object v8

    sput-object v8, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    .line 171
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_1
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/module/GlideModule;

    move-object v6, v8

    .line 172
    .restart local v6    # "module":Lcom/bumptech/glide/module/GlideModule;
    move-object v8, v6

    move-object v9, v2

    sget-object v10, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    invoke-interface {v8, v9, v10}, Lcom/bumptech/glide/module/GlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;)V

    .line 173
    goto :goto_1

    .line 175
    .end local v2    # "applicationContext":Landroid/content/Context;
    .end local v3    # "builder":Lcom/bumptech/glide/GlideBuilder;
    .end local v4    # "modules":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/module/GlideModule;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "module":Lcom/bumptech/glide/module/GlideModule;
    :cond_1
    move-object v8, v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_2
    sget-object v8, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    move-object v0, v8

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 175
    .restart local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v1

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v7

    throw v8
.end method

.method private getLoaderFactory()Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    .locals 2

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/Glide;->loaderFactory:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/Glide;
    return-object v0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, v0

    const-string/jumbo v2, "image_manager_disk_cache"

    invoke-static {v1, v2}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 9

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "cacheName":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    move-object v2, v4

    .line 127
    .local v2, "cacheDir":Ljava/io/File;
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 128
    new-instance v4, Ljava/io/File;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v4

    .line 129
    .local v3, "result":Ljava/io/File;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 131
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 138
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "result":Ljava/io/File;
    :goto_0
    return-object v0

    .line 133
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v3    # "result":Ljava/io/File;
    :cond_1
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 135
    .end local v3    # "result":Ljava/io/File;
    :cond_2
    const-string/jumbo v4, "Glide"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    const-string/jumbo v4, "Glide"

    const-string/jumbo v5, "default disk cache dir is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 138
    :cond_3
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public static isSetup()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 203
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseGlideModules(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/module/GlideModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "applicationContext":Landroid/content/Context;
    sget-boolean v1, Lcom/bumptech/glide/Glide;->modulesEnabled:Z

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Lcom/bumptech/glide/module/ManifestParser;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/bumptech/glide/module/ManifestParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/bumptech/glide/module/ManifestParser;->parse()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 189
    .end local v0    # "applicationContext":Landroid/content/Context;
    :goto_0
    return-object v0

    .restart local v0    # "applicationContext":Landroid/content/Context;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static setModulesEnabled(Z)V
    .locals 7

    .prologue
    .line 146
    move v0, p0

    .local v0, "enabled":Z
    const-class v3, Lcom/bumptech/glide/Glide;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 147
    :try_start_0
    sget-object v3, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-eqz v3, :cond_0

    .line 148
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Glide singleton already exists."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 152
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3

    .line 151
    :cond_0
    move v3, v0

    :try_start_1
    sput-boolean v3, Lcom/bumptech/glide/Glide;->modulesEnabled:Z

    .line 152
    move-object v3, v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    return-void
.end method

.method public static setup(Lcom/bumptech/glide/GlideBuilder;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "builder":Lcom/bumptech/glide/GlideBuilder;
    invoke-static {}, Lcom/bumptech/glide/Glide;->isSetup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Glide is already setup, check with isSetup() first"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/GlideBuilder;->createGlide()Lcom/bumptech/glide/Glide;

    move-result-object v1

    sput-object v1, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    .line 223
    return-void
.end method

.method static tearDown()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    sput-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    .line 228
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/Glide;->modulesEnabled:Z

    .line 229
    return-void
.end method

.method public static with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
    .locals 4

    .prologue
    .line 668
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v2

    move-object v1, v2

    .line 669
    .local v1, "retriever":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "activity":Landroid/app/Activity;
    return-object v0
.end method

.method public static with(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 693
    move-object v0, p0

    .local v0, "fragment":Landroid/app/Fragment;
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v2

    move-object v1, v2

    .line 694
    .local v1, "retriever":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "fragment":Landroid/app/Fragment;
    return-object v0
.end method

.method public static with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 4

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v2

    move-object v1, v2

    .line 657
    .local v1, "retriever":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 4

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v2

    move-object v1, v2

    .line 706
    .local v1, "retriever":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "fragment":Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public static with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;
    .locals 4

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "activity":Landroidx/fragment/app/FragmentActivity;
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v2

    move-object v1, v2

    .line 681
    .local v1, "retriever":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "activity":Landroidx/fragment/app/FragmentActivity;
    return-object v0
.end method


# virtual methods
.method buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move-object v1, p1

    .local v1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "decodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/Glide;
    return-object v0
.end method

.method buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/Target;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move-object v1, p1

    .local v1, "imageView":Landroid/widget/ImageView;
    move-object v2, p2

    .local v2, "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/Glide;->imageViewTargetFactory:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;->buildTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/Glide;
    return-object v0
.end method

.method buildTranscoder(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move-object v1, p1

    .local v1, "decodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    move-object v2, p2

    .local v2, "transcodedClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/Glide;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/Glide;
    return-object v0
.end method

.method public clearDiskCache()V
    .locals 2

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertBackgroundThread()V

    .line 426
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->getEngine()Lcom/bumptech/glide/load/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/Engine;->clearDiskCache()V

    .line 427
    return-void
.end method

.method public clearMemory()V
    .locals 2

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 400
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->clearMemory()V

    .line 401
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->clearMemory()V

    .line 402
    return-void
.end method

.method getBitmapCenterCrop()Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
    .locals 2

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/Glide;->bitmapCenterCrop:Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/Glide;
    return-object v0
.end method

.method getBitmapFitCenter()Lcom/bumptech/glide/load/resource/bitmap/FitCenter;
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/Glide;->bitmapFitCenter:Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/Glide;
    return-object v0
.end method

.method public getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .locals 2

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/Glide;
    return-object v0
.end method

.method getDecodeFormat()Lcom/bumptech/glide/load/DecodeFormat;
    .locals 2

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/Glide;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/Glide;
    return-object v0
.end method

.method getDrawableCenterCrop()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/Glide;->drawableCenterCrop:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/Glide;
    return-object v0
.end method

.method getDrawableFitCenter()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
    .locals 2

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/Glide;->drawableFitCenter:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/Glide;
    return-object v0
.end method

.method getEngine()Lcom/bumptech/glide/load/engine/Engine;
    .locals 2

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/Glide;->engine:Lcom/bumptech/glide/load/engine/Engine;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/Glide;
    return-object v0
.end method

.method getMainHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/Glide;->mainHandler:Landroid/os/Handler;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/Glide;
    return-object v0
.end method

.method public varargs preFillBitmapPool([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 4

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move-object v1, p1

    .local v1, "bitmapAttributeBuilders":[Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/Glide;->bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->preFill([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V

    .line 388
    return-void
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move-object v1, p1

    .local v1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    move-object v3, p3

    .local v3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<TT;TY;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/Glide;->loaderFactory:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v5

    move-object v4, v5

    .line 521
    .local v4, "removed":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<TT;TY;>;"
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 522
    move-object v5, v4

    invoke-interface {v5}, Lcom/bumptech/glide/load/model/ModelLoaderFactory;->teardown()V

    .line 524
    :cond_0
    return-void
.end method

.method public setMemoryCategory(Lcom/bumptech/glide/MemoryCategory;)V
    .locals 4

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move-object v1, p1

    .local v1, "memoryCategory":Lcom/bumptech/glide/MemoryCategory;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 444
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v3

    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->setSizeMultiplier(F)V

    .line 445
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v3

    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->setSizeMultiplier(F)V

    .line 446
    return-void
.end method

.method public trimMemory(I)V
    .locals 4

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move v1, p1

    .local v1, "level":I
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 413
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->trimMemory(I)V

    .line 414
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->trimMemory(I)V

    .line 415
    return-void
.end method

.method public unregister(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/Glide;
    move-object v1, p1

    .local v1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/Glide;->loaderFactory:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->unregister(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v4

    move-object v3, v4

    .line 540
    .local v3, "removed":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<TT;TY;>;"
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 541
    move-object v4, v3

    invoke-interface {v4}, Lcom/bumptech/glide/load/model/ModelLoaderFactory;->teardown()V

    .line 543
    :cond_0
    return-void
.end method
