.class public Lcom/google/appinventor/components/runtime/Metadata;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Metadata Component to Read the Meta Data of a File"
    iconName = "images/metadata.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.READ_EXTERNAL_STORAGE",
        "android.permission.WRITE_EXTERNAL_STORAGE"
    }
.end annotation


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaMetadataRetriever;

.field private plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 55
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Metadata;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 56
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Metadata;->context:Landroid/content/Context;

    .line 57
    move-object v2, v0

    new-instance v3, Landroid/media/MediaMetadataRetriever;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaMetadataRetriever;

    .line 58
    const-string/jumbo v2, "KodularMetadata"

    const-string/jumbo v3, "Metadata Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 59
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Metadata;)Landroid/media/MediaMetadataRetriever;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaMetadataRetriever;

    move-object v0, v1

    return-object v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 253
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Metadata;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 255
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaMetadataRetriever;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    .line 256
    move-object v1, v4

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v0, v3

    .line 264
    :goto_0
    return-object v0

    .line 261
    .line 263
    :cond_0
    :goto_1
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Metadata;->NoMetadata(Ljava/lang/String;)V

    .line 264
    const-string/jumbo v3, ""

    move-object v0, v3

    goto :goto_0

    .line 257
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 258
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Metadata;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 261
    goto :goto_1

    .line 259
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 260
    const-string/jumbo v3, "KodularMetadata"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move-object v2, v4

    .line 226
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v4

    .line 227
    move-object v4, v1

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v6, 0x0

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    .line 228
    new-instance v4, Ljava/io/File;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Metadata;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Metadata;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 229
    new-instance v4, Ljava/io/FileOutputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 230
    move-object v2, v5

    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 231
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 232
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 233
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v3, v4

    .line 242
    move-object v4, v2

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 243
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    .line 233
    :goto_0
    move-object v4, v3

    move-object v0, v4

    .line 249
    :goto_1
    return-object v0

    .line 244
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 245
    const-string/jumbo v4, "KodularMetadata"

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 234
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 235
    move-object v4, v0

    :try_start_2
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Metadata;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    const-string/jumbo v6, "EmbeddedPicture"

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 236
    const-string/jumbo v4, "PERMISSION_DENIED_ERROR"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v4

    .line 240
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 242
    move-object v4, v2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 243
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 246
    .line 236
    :cond_0
    :goto_2
    move-object v4, v1

    move-object v0, v4

    goto :goto_1

    .line 244
    :catch_2
    move-exception v4

    move-object v3, v4

    .line 245
    const-string/jumbo v4, "KodularMetadata"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 237
    :catch_3
    move-exception v4

    move-object v3, v4

    .line 238
    :try_start_4
    const-string/jumbo v4, "KodularMetadata"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    .line 240
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 242
    move-object v4, v2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 243
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 246
    .line 249
    :cond_1
    :goto_3
    const-string/jumbo v4, "ERROR"

    move-object v0, v4

    goto :goto_1

    .line 244
    :catch_4
    move-exception v4

    move-object v3, v4

    .line 245
    const-string/jumbo v4, "KodularMetadata"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 246
    goto :goto_3

    .line 240
    :catchall_0
    move-exception v4

    move-object v1, v4

    move-object v4, v2

    if-eqz v4, :cond_2

    .line 242
    move-object v4, v2

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 243
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 246
    .line 248
    :cond_2
    :goto_4
    move-object v4, v1

    throw v4

    .line 244
    :catch_5
    move-exception v4

    move-object v2, v4

    .line 245
    const-string/jumbo v4, "KodularMetadata"

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_4
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Metadata;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Metadata;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Metadata;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public Album()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Album from the file."
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    const-string/jumbo v3, "Album"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public Artist()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Artist from the file."
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x2

    const-string/jumbo v3, "Artist"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public Author()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Author from the file."
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x3

    const-string/jumbo v3, "Author"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public Bitrate()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Bitrate from the file."
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x14

    const-string/jumbo v3, "Bitrate"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public Composer()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Composer from the file."
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x4

    const-string/jumbo v3, "Composer"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public CustomItem(I)Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get a custom metadata item from the file\nyou can find a list of ids on https://developer.android.com/reference/android/media/MediaMetadataRetriever.html"
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const-string/jumbo v4, "Custom"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public Date()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Date from the file."
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x5

    const-string/jumbo v3, "Date"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public DiscNumber()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Disc Number from the file."
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0xe

    const-string/jumbo v3, "Disc Number"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public Duration()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Duration from the file."
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x9

    const-string/jumbo v3, "Duration"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public EmbeddedPicture()Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This method finds the optional graphic or album/cover art associated associated with the data source. If there are more than one pictures, (any) one of them is returned."
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 212
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 213
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/graphics/Bitmap;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 220
    :goto_0
    return-object v0

    .line 217
    .line 219
    :cond_0
    :goto_1
    move-object v2, v0

    const-string/jumbo v3, "EmbeddedPicture"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->NoMetadata(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0

    .line 215
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 216
    const-string/jumbo v2, "KodularMetadata"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_1
.end method

.method public File()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of the file."
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Metadata;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public File(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Metadata;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v3, Lcom/google/appinventor/components/runtime/Metadata$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Metadata$1;-><init>(Lcom/google/appinventor/components/runtime/Metadata;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public Genre()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Genre from the file."
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x6

    const-string/jumbo v3, "Genre"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public HasAudio()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Has Audio from the file."
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x10

    const-string/jumbo v3, "Has Audio"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public HasVideo()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Has Video from the file."
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x11

    const-string/jumbo v3, "Has Video"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public Location()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Location from the file."
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x17

    const-string/jumbo v3, "Location"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public Mimetype()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Mimetype from the file."
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0xc

    const-string/jumbo v3, "Mimetype"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public NoMetadata(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when there is no metadata found in the file."
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    move-object v1, v3

    .line 271
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "There was no "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "type"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " found in the metadata of the file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 272
    move-object v3, v0

    const-string/jumbo v4, "NoMetadata"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 273
    return-void

    .line 271
    :cond_1
    move-object v4, v1

    goto :goto_0
.end method

.method public Title()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Title from the file."
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x7

    const-string/jumbo v3, "Title"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public TrackNumber()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Track Number from the file."
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const-string/jumbo v3, "Track Number"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public VideoHeight()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Video Height from the file."
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x13

    const-string/jumbo v3, "Video Height"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public VideoRotation()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Video Rotation from the file."
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x18

    const-string/jumbo v3, "Video Rotation"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public VideoWidth()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Video Width from the file."
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x12

    const-string/jumbo v3, "Video Width"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public Writer()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Writer from the file."
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0xb

    const-string/jumbo v3, "Writer"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public Year()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Year from the file."
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x8

    const-string/jumbo v3, "Year"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Metadata;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
