.class public Lcom/airbnb/lottie/manager/ImageAssetManager;
.super Ljava/lang/Object;
.source "ImageAssetManager.java"


# static fields
.field private static final bitmapHashLock:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private delegate:Lcom/airbnb/lottie/ImageAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final imageAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private imagesFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/ImageAssetDelegate;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable$Callback;",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/ImageAssetDelegate;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/manager/ImageAssetManager;
    move-object v1, p1

    .local v1, "callback":Landroid/graphics/drawable/Drawable$Callback;
    move-object v2, p2

    .local v2, "imagesFolder":Ljava/lang/String;
    move-object v3, p3

    .local v3, "delegate":Lcom/airbnb/lottie/ImageAssetDelegate;
    move-object v4, p4

    .local v4, "imageAssets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 33
    move-object v5, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 34
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_0

    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    move-object v8, v5

    move-object v9, v6

    move-object v5, v9

    move-object v6, v8

    move-object v7, v9

    iget-object v7, v7, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 38
    :cond_0
    move-object v5, v1

    instance-of v5, v5, Landroid/view/View;

    if-nez v5, :cond_1

    .line 39
    const-string/jumbo v5, "LottieDrawable must be inside of a view for images to work."

    invoke-static {v5}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 40
    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 41
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 42
    .line 48
    :goto_0
    return-void

    .line 45
    :cond_1
    move-object v5, v0

    move-object v6, v1

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 46
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 47
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/manager/ImageAssetManager;->setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 48
    goto :goto_0
.end method

.method private putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/manager/ImageAssetManager;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    sget-object v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    monitor-enter v5

    .line 127
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieImageAsset;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    move-object v5, v2

    move-object v6, v3

    monitor-exit v6

    move-object v0, v5

    .end local v0    # "this":Lcom/airbnb/lottie/manager/ImageAssetManager;
    return-object v0

    .line 129
    .restart local v0    # "this":Lcom/airbnb/lottie/manager/ImageAssetManager;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method


# virtual methods
.method public bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/manager/ImageAssetManager;
    move-object v1, p1

    .local v1, "id":Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    move-object v9, v1

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/LottieImageAsset;

    move-object v2, v8

    .line 71
    .local v2, "asset":Lcom/airbnb/lottie/LottieImageAsset;
    move-object v8, v2

    if-nez v8, :cond_0

    .line 72
    const/4 v8, 0x0

    move-object v0, v8

    .line 118
    .end local v0    # "this":Lcom/airbnb/lottie/manager/ImageAssetManager;
    :goto_0
    return-object v0

    .line 74
    .restart local v0    # "this":Lcom/airbnb/lottie/manager/ImageAssetManager;
    :cond_0
    move-object v8, v2

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v3, v8

    .line 75
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    move-object v8, v3

    if-eqz v8, :cond_1

    .line 76
    move-object v8, v3

    move-object v0, v8

    goto :goto_0

    .line 79
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/manager/ImageAssetManager;->delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    if-eqz v8, :cond_3

    .line 80
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/manager/ImageAssetManager;->delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    move-object v9, v2

    invoke-interface {v8, v9}, Lcom/airbnb/lottie/ImageAssetDelegate;->fetchBitmap(Lcom/airbnb/lottie/LottieImageAsset;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v3, v8

    .line 81
    move-object v8, v3

    if-eqz v8, :cond_2

    .line 82
    move-object v8, v0

    move-object v9, v1

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 84
    :cond_2
    move-object v8, v3

    move-object v0, v8

    goto :goto_0

    .line 87
    :cond_3
    move-object v8, v2

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 88
    .local v4, "filename":Ljava/lang/String;
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v5, v8

    .line 89
    .local v5, "opts":Landroid/graphics/BitmapFactory$Options;
    move-object v8, v5

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 90
    move-object v8, v5

    const/16 v9, 0xa0

    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 92
    move-object v8, v4

    const-string/jumbo v9, "data:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v4

    const-string/jumbo v9, "base64,"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_4

    .line 96
    move-object v8, v4

    move-object v9, v4

    const/16 v10, 0x2c

    :try_start_0
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v6, v8

    .line 100
    .line 101
    .local v6, "data":[B
    move-object v8, v6

    const/4 v9, 0x0

    move-object v10, v6

    array-length v10, v10

    move-object v11, v5

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v3, v8

    .line 102
    move-object v8, v0

    move-object v9, v1

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 97
    .end local v6    # "data":[B
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 98
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "data URL did not have correct base64 format."

    move-object v9, v7

    invoke-static {v8, v9}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_0

    .line 107
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    move-object v8, v0

    :try_start_1
    iget-object v8, v8, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 108
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :catch_1
    move-exception v8

    move-object v7, v8

    .line 113
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v8, "Unable to open asset."

    move-object v9, v7

    invoke-static {v8, v9}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_0

    .line 111
    .end local v7    # "e":Ljava/io/IOException;
    :cond_5
    move-object v8, v0

    :try_start_2
    iget-object v8, v8, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    move-object v6, v8

    .line 115
    .line 116
    .local v6, "is":Ljava/io/InputStream;
    move-object v8, v6

    const/4 v9, 0x0

    move-object v10, v5

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v3, v8

    .line 117
    move-object v8, v3

    move-object v9, v2

    invoke-virtual {v9}, Lcom/airbnb/lottie/LottieImageAsset;->getWidth()I

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Lcom/airbnb/lottie/LottieImageAsset;->getHeight()I

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/airbnb/lottie/utils/Utils;->resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v3, v8

    .line 118
    move-object v8, v0

    move-object v9, v1

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0
.end method

.method public hasSameContext(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/manager/ImageAssetManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/manager/ImageAssetManager;
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/manager/ImageAssetManager;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 4
    .param p1    # Lcom/airbnb/lottie/ImageAssetDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/manager/ImageAssetManager;
    move-object v1, p1

    .local v1, "assetDelegate":Lcom/airbnb/lottie/ImageAssetDelegate;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/manager/ImageAssetManager;->delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 52
    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/manager/ImageAssetManager;
    move-object v1, p1

    .local v1, "id":Ljava/lang/String;
    move-object v2, p2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 59
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieImageAsset;

    move-object v3, v5

    .line 60
    .local v3, "asset":Lcom/airbnb/lottie/LottieImageAsset;
    move-object v5, v3

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v4, v5

    .line 61
    .local v4, "ret":Landroid/graphics/Bitmap;
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    move-object v5, v4

    move-object v0, v5

    .line 66
    .end local v0    # "this":Lcom/airbnb/lottie/manager/ImageAssetManager;
    .end local v3    # "asset":Lcom/airbnb/lottie/LottieImageAsset;
    .end local v4    # "ret":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 64
    .restart local v0    # "this":Lcom/airbnb/lottie/manager/ImageAssetManager;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v3, v5

    .line 65
    .local v3, "prevBitmap":Landroid/graphics/Bitmap;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 66
    move-object v5, v3

    move-object v0, v5

    goto :goto_0
.end method
