.class public Lcom/google/appinventor/components/runtime/util/MediaUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/MediaUtil$a;,
        Lcom/google/appinventor/components/runtime/util/MediaUtil$c;,
        Lcom/google/appinventor/components/runtime/util/MediaUtil$b;
    }
.end annotation


# static fields
.field private static final PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:Z

    .line 62
    new-instance v0, Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Ljava/util/Map;

    .line 176
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)Ljava/io/File;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v4, Lcom/google/appinventor/components/runtime/util/MediaUtil;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 316
    move-object v3, v5

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 317
    :cond_0
    const-string/jumbo v4, "MediaUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "Copying media "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to temp file..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 318
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    move-object v3, v4

    .line 319
    const-string/jumbo v4, "MediaUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "Finished copying media "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to temp file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    .line 320
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 319
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 321
    sget-object v4, Lcom/google/appinventor/components/runtime/util/MediaUtil;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Ljava/util/Map;

    move-object v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 323
    :cond_1
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:Z

    return v0
.end method

.method public static copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 286
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static getAssetFilePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 766
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v2, v3

    .line 767
    move-object v3, v0

    instance-of v3, v3, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ReplForm;->isAssetsLoaded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 768
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 770
    :goto_0
    return-object v0

    :cond_0
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public static getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 347
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 376
    :goto_0
    return-object v0

    .line 350
    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/Form;->highQuality:Z

    if-eqz v4, :cond_2

    .line 351
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getHighQualityImage(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v4

    goto :goto_0

    .line 354
    :cond_2
    new-instance v4, Lcom/google/appinventor/components/runtime/util/MediaUtil$c;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil$c;-><init>(B)V

    move-object v2, v4

    .line 355
    new-instance v4, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;-><init>(Lcom/google/appinventor/components/runtime/util/MediaUtil$c;)V

    move-object v3, v4

    .line 365
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 366
    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil$c;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS()V

    .line 367
    move-object v4, v2

    .line 2093
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/MediaUtil$c;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/lang/Object;

    .line 367
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 368
    move-object v0, v5

    if-nez v4, :cond_4

    .line 369
    move-object v4, v2

    .line 2097
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/MediaUtil$c;->y8A6VDoYQ5lBKtTotDm9q1cPZXQGUPZcusb9B4eqbcZI56F8pazDuNqgH6kBlR62:Ljava/lang/String;

    .line 369
    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 370
    move-object v0, v5

    const-string/jumbo v5, "PERMISSION_DENIED:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 371
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/errors/PermissionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 373
    :cond_3
    new-instance v4, Ljava/io/IOException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 376
    :cond_4
    move-object v4, v0

    move-object v0, v4

    goto :goto_0
.end method

.method public static getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/Form;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 393
    :cond_0
    move-object v4, v2

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    .line 394
    .line 505
    :goto_0
    return-void

    .line 397
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 399
    new-instance v4, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    move-object v7, v0

    move v8, v3

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;-><init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;ILcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 504
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 505
    goto :goto_0
.end method

.method public static getHighQualityImage(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 12

    .prologue
    .line 809
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move-object v2, v5

    .line 810
    const/4 v5, 0x0

    move-object v3, v5

    .line 811
    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I

    move-result v5

    move v11, v5

    move v5, v11

    move v6, v11

    .line 812
    move v4, v6

    sget v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->f3jXQdr7SaO4jKCWPTlGDFsZc4anfRmkf59KPIcTiLfRAexdccxYBXXB8h0vpeF7:I

    if-ne v5, v6, :cond_3

    .line 814
    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetFilePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 815
    move-object v3, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 816
    move-object v5, v0

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v2, v5

    .line 820
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 822
    move-object v5, v3

    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 825
    .line 878
    :cond_0
    :goto_0
    move-object v5, v2

    move-object v0, v5

    return-object v0

    .line 823
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 824
    const-string/jumbo v5, "MediaUtil"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 825
    goto :goto_0

    .line 817
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 818
    :try_start_2
    const-string/jumbo v5, "MediaUtil"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .line 820
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 822
    move-object v5, v3

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 825
    goto :goto_0

    .line 823
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 824
    const-string/jumbo v5, "MediaUtil"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 825
    goto :goto_0

    .line 820
    :catchall_0
    move-exception v5

    move-object v0, v5

    move-object v5, v3

    if-eqz v5, :cond_1

    .line 822
    move-object v5, v3

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 825
    .line 827
    :cond_1
    :goto_1
    move-object v5, v0

    throw v5

    .line 823
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 824
    const-string/jumbo v5, "MediaUtil"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 827
    :cond_2
    goto :goto_0

    .line 828
    :cond_3
    move v5, v4

    sget v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->siVQGK7skYIQ7zI3RxZVmSEN1N3qEwDlBDPORHd716EIgwqH2EWQFUJrvV0SXYUL:I

    if-ne v5, v6, :cond_4

    .line 830
    move-object v5, v0

    move-object v6, v1

    :try_start_5
    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetFilePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 831
    move-object v5, v0

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v5

    move-object v2, v5

    .line 834
    goto :goto_0

    .line 832
    :catch_4
    move-exception v5

    move-object v1, v5

    .line 833
    const-string/jumbo v5, "MediaUtil"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 834
    goto :goto_0

    .line 835
    :cond_4
    move v5, v4

    sget v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->KYHvnTv0AWOO8SeFCXsiNXCxcIirISbo8kAOvMnivJLnqAuCVxfixET1OT3ZpHhw:I

    if-ne v5, v6, :cond_5

    .line 839
    move-object v5, v1

    :try_start_6
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v1, v5

    .line 840
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v5

    .line 841
    move-object v5, v0

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v5

    move-object v2, v5

    .line 844
    goto/16 :goto_0

    .line 842
    :catch_5
    move-exception v5

    move-object v1, v5

    .line 843
    const-string/jumbo v5, "MediaUtil"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 844
    goto/16 :goto_0

    .line 845
    :cond_5
    move v5, v4

    sget v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->zsMcUi8jymhI0yeycaZW56W8YNMDBLoH4OZHLSlj2A3S38zGlu25pkABN4p8cs:I

    if-ne v5, v6, :cond_6

    .line 847
    move-object v5, v0

    :try_start_7
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v6, v1

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v1, v5

    .line 848
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v5

    .line 849
    move-object v5, v0

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v5

    move-object v2, v5

    .line 852
    goto/16 :goto_0

    .line 850
    :catch_6
    move-exception v5

    move-object v1, v5

    .line 851
    const-string/jumbo v5, "MediaUtil"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 852
    goto/16 :goto_0

    .line 853
    :cond_6
    move v5, v4

    sget v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->LYXVmrSApJtjkX58iaWYcT93zXSX0GhbrHTAKbm3TBRJ5avsjGCN1sJz61Za2zkA:I

    if-eq v5, v6, :cond_7

    move v5, v4

    sget v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->kkTI9AxohjOECYVBpzZOuVO0b9llYVM2xqggkPHvpPoNGTREwN5YZmwC10Gk8X2Q:I

    if-ne v5, v6, :cond_a

    .line 855
    :cond_7
    :try_start_8
    new-instance v5, Ljava/net/URL;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 856
    move-object v3, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 857
    move-object v5, v0

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v5

    move-object v2, v5

    .line 861
    move-object v5, v3

    if-eqz v5, :cond_9

    .line 863
    move-object v5, v3

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 866
    goto/16 :goto_0

    .line 864
    :catch_7
    move-exception v5

    move-object v1, v5

    .line 865
    const-string/jumbo v5, "MediaUtil"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 866
    goto/16 :goto_0

    .line 858
    :catch_8
    move-exception v5

    move-object v1, v5

    .line 859
    :try_start_a
    const-string/jumbo v5, "MediaUtil"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v5

    .line 861
    move-object v5, v3

    if-eqz v5, :cond_9

    .line 863
    move-object v5, v3

    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 866
    goto/16 :goto_0

    .line 864
    :catch_9
    move-exception v5

    move-object v1, v5

    .line 865
    const-string/jumbo v5, "MediaUtil"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 866
    goto/16 :goto_0

    .line 861
    :catchall_1
    move-exception v5

    move-object v0, v5

    move-object v5, v3

    if-eqz v5, :cond_8

    .line 863
    move-object v5, v3

    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 866
    .line 868
    :cond_8
    :goto_2
    move-object v5, v0

    throw v5

    .line 864
    :catch_a
    move-exception v5

    move-object v1, v5

    .line 865
    const-string/jumbo v5, "MediaUtil"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    .line 868
    :cond_9
    goto/16 :goto_0

    .line 869
    :cond_a
    move v5, v4

    sget v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->Y32BqWfeOgj0oQvRmJ9m9e2zU29bRliwner9JMtAtUwBfF75tSr3PcVpECeplsq5:I

    if-ne v5, v6, :cond_0

    .line 871
    :try_start_d
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v8, v0

    .line 872
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080066

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    move-object v2, v5

    .line 876
    goto/16 :goto_0

    .line 874
    :catch_b
    move-exception v5

    move-object v1, v5

    .line 875
    const-string/jumbo v5, "MediaUtil"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    sget v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->qGWPhAhbC1tFmaPVJJBRlTuvq3PUzuXLHqwJdn0xNpZNZK6IOnxu2nEwTjRZ3Ww:I

    move v0, v2

    .line 173
    :goto_0
    return v0

    .line 139
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    sget v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->VihNyRIYpiuVGhDxhZD9FEeZY0Q1YjvMZGuz6ngatU6E3Tfj3PPYt3ibIHEBq90c:I

    move v0, v2

    goto :goto_0

    .line 142
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    const-string/jumbo v3, "/sdcard/"

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    :cond_2
    sget v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->KYHvnTv0AWOO8SeFCXsiNXCxcIirISbo8kAOvMnivJLnqAuCVxfixET1OT3ZpHhw:I

    move v0, v2

    goto :goto_0

    .line 146
    :cond_3
    move-object v2, v1

    const-string/jumbo v3, "content://contacts/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 147
    sget v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->Y32BqWfeOgj0oQvRmJ9m9e2zU29bRliwner9JMtAtUwBfF75tSr3PcVpECeplsq5:I

    move v0, v2

    goto :goto_0

    .line 149
    :cond_4
    move-object v2, v1

    const-string/jumbo v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 150
    sget v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->zsMcUi8jymhI0yeycaZW56W8YNMDBLoH4OZHLSlj2A3S38zGlu25pkABN4p8cs:I

    move v0, v2

    goto :goto_0

    .line 154
    :cond_5
    :try_start_0
    new-instance v2, Ljava/net/URL;

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 156
    move-object v2, v1

    const-string/jumbo v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 157
    sget v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->LYXVmrSApJtjkX58iaWYcT93zXSX0GhbrHTAKbm3TBRJ5avsjGCN1sJz61Za2zkA:I

    move v0, v2

    goto :goto_0

    .line 160
    :cond_6
    sget v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->kkTI9AxohjOECYVBpzZOuVO0b9llYVM2xqggkPHvpPoNGTREwN5YZmwC10Gk8X2Q:I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    .line 166
    :catch_0
    move-exception v2

    move-object v2, v0

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v2, :cond_8

    .line 167
    move-object v2, v0

    check-cast v2, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/ReplForm;->isAssetsLoaded()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 168
    sget v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->siVQGK7skYIQ7zI3RxZVmSEN1N3qEwDlBDPORHd716EIgwqH2EWQFUJrvV0SXYUL:I

    move v0, v2

    goto :goto_0

    .line 170
    :cond_7
    sget v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->f3jXQdr7SaO4jKCWPTlGDFsZc4anfRmkf59KPIcTiLfRAexdccxYBXXB8h0vpeF7:I

    move v0, v2

    goto :goto_0

    .line 173
    :cond_8
    sget v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->f3jXQdr7SaO4jKCWPTlGDFsZc4anfRmkf59KPIcTiLfRAexdccxYBXXB8h0vpeF7:I

    move v0, v2

    goto :goto_0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 599
    :goto_0
    return-object v0

    .line 594
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 595
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 596
    move-object v1, v4

    if-nez v3, :cond_0

    .line 597
    move-object v3, v2

    throw v3

    .line 599
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 511
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/MediaUtil$a;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil$a;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 12

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    move-object v0, v7

    .line 2542
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    .line 2543
    move-object v3, v8

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2544
    move-object v7, v1

    move-object v8, v3

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2545
    move-object v7, v3

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move v1, v7

    .line 2546
    move-object v7, v3

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v3, v7

    .line 2549
    move-object v7, v0

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 2550
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object v4, v7

    .line 2560
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getCompatibilityMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2561
    const/16 v7, 0x2d0

    move v5, v7

    .line 2562
    const/16 v7, 0x348

    move v0, v7

    .line 2568
    :goto_0
    const/4 v7, 0x1

    move v6, v7

    .line 2569
    :goto_1
    move v7, v1

    move v8, v6

    div-int/2addr v7, v8

    move v8, v5

    if-le v7, v8, :cond_1

    move v7, v3

    move v8, v6

    div-int/2addr v7, v8

    move v8, v0

    if-le v7, v8, :cond_1

    .line 2570
    move v7, v6

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    move v6, v7

    goto :goto_1

    .line 2564
    :cond_0
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v7

    int-to-float v7, v7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    move v5, v7

    .line 2565
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    move v0, v7

    goto :goto_0

    .line 2572
    :cond_1
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v3, v7

    .line 2573
    const-string/jumbo v7, "MediaUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "getBitmapOptions: sampleSize = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " mediaPath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " maxWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " maxHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " display width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    .line 2575
    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " display height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2573
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2576
    move-object v7, v3

    move v8, v6

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2577
    move-object v7, v3

    .line 50
    move-object v0, v7

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    .line 786
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    :try_start_0
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 787
    move-object v1, v4

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 791
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getCompatibilityMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 792
    const/16 v3, 0x2d0

    move v2, v3

    .line 793
    const/16 v3, 0x348

    move v0, v3

    .line 798
    :goto_0
    move-object v3, v1

    .line 799
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v2

    move v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 800
    move-object v3, v1

    move-object v0, v3

    .line 803
    :goto_1
    return-object v0

    .line 795
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v2, v3

    .line 796
    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v0, v3

    goto :goto_0

    .line 801
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 802
    const-string/jumbo v3, "MediaUtil"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 803
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    .line 292
    const/4 v3, 0x0

    move-object v1, v3

    .line 294
    :try_start_0
    const-string/jumbo v3, "AI_Media_"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 295
    move-object v1, v4

    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    .line 296
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/FileUtil;->writeStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 297
    move-object v3, v1

    move-object v2, v3

    .line 304
    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 305
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 306
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    .line 297
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 301
    :catch_0
    move-exception v3

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 305
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 306
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    .line 308
    :cond_1
    move-object v3, v2

    throw v3
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 228
    :goto_0
    return-object v0

    .line 223
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 224
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 225
    move-object v1, v4

    if-nez v3, :cond_0

    .line 226
    move-object v3, v2

    throw v3

    .line 228
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v3, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:[I

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 269
    new-instance v3, Ljava/io/IOException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Unable to open media "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 237
    :pswitch_0
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    .line 264
    :goto_0
    return-object v0

    .line 240
    :pswitch_1
    new-instance v3, Ljava/io/FileInputStream;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 242
    :pswitch_2
    move-object v3, v0

    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 243
    new-instance v3, Ljava/io/FileInputStream;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Ljava/io/File;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    goto :goto_0

    .line 246
    :pswitch_3
    move-object v3, v0

    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 247
    new-instance v3, Ljava/io/FileInputStream;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 250
    :pswitch_4
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    move-object v3, v0

    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 254
    :cond_0
    :pswitch_5
    new-instance v3, Ljava/net/URL;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 257
    :pswitch_6
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v4, v1

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 262
    :pswitch_7
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v4, v1

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->openContactPhotoInputStreamHelper(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    .line 263
    move-object v0, v4

    if-eqz v3, :cond_1

    .line 264
    move-object v3, v0

    move-object v0, v3

    goto/16 :goto_0

    .line 267
    :cond_1
    new-instance v3, Ljava/io/IOException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Unable to open contact photo "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, p1

    sget-object v6, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 181
    move-object v6, v0

    move-object v7, v1

    move-object v2, v7

    .line 1200
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    .line 1201
    move-object v0, v7

    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move v3, v6

    .line 1202
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 1203
    move-object v6, v0

    move v7, v4

    aget-object v6, v6, v7

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    .line 1204
    move-object v5, v7

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1205
    move-object v6, v5

    .line 181
    :goto_1
    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    .line 182
    move-object v0, v7

    if-nez v6, :cond_2

    .line 183
    const/4 v6, 0x0

    move-object v0, v6

    .line 187
    :goto_2
    return-object v0

    .line 1202
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1208
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 185
    :cond_2
    sget-object v6, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 187
    :cond_3
    sget-object v6, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v0, v6

    goto :goto_2
.end method

.method public static isExternalFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    .line 945
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    .line 947
    const/4 v2, 0x0

    move v0, v2

    .line 950
    :goto_0
    return v0

    .line 949
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    const-string/jumbo v3, "/sdcard/"

    .line 950
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 949
    move v0, v2

    goto :goto_0
.end method

.method public static isExternalFile(Ljava/lang/String;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 931
    move-object v0, p0

    const-string/jumbo v1, "MediaUtil"

    const-string/jumbo v2, "Calling deprecated version of isExternalFile"

    new-instance v3, Ljava/lang/IllegalAccessException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/IllegalAccessException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 932
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    const-string/jumbo v2, "/sdcard/"

    .line 933
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    .line 932
    move v0, v1

    goto :goto_0
.end method

.method public static isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    .line 909
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    .line 911
    const/4 v2, 0x0

    move v0, v2

    .line 914
    :goto_0
    return v0

    .line 913
    :cond_0
    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "file://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    const-string/jumbo v3, "file:///sdcard"

    .line 914
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 913
    move v0, v2

    goto :goto_0
.end method

.method public static isExternalFileUrl(Ljava/lang/String;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 895
    move-object v0, p0

    const-string/jumbo v1, "MediaUtil"

    const-string/jumbo v2, "Calling deprecated version of isExternalFileUrl"

    new-instance v3, Ljava/lang/IllegalAccessException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/IllegalAccessException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 896
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    const-string/jumbo v2, "file:///sdcard/"

    .line 897
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    .line 896
    move v0, v1

    goto :goto_0
.end method

.method public static loadMediaPlayer(Landroid/media/MediaPlayer;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 662
    sget-object v4, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:[I

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 709
    :pswitch_0
    new-instance v4, Ljava/io/IOException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "Unable to load audio or video "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 664
    :pswitch_1
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    move-object v1, v4

    .line 666
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 669
    .line 704
    :goto_0
    return-void

    .line 668
    :catchall_0
    move-exception v4

    move-object v2, v4

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 669
    move-object v4, v2

    throw v4

    .line 674
    :pswitch_2
    move-object v4, v1

    const-string/jumbo v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 675
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 676
    goto :goto_0

    .line 679
    :pswitch_3
    move-object v4, v1

    const-string/jumbo v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 680
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 681
    goto :goto_0

    .line 684
    :pswitch_4
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 685
    move-object v4, v1

    const-string/jumbo v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 687
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 688
    goto :goto_0

    .line 694
    :pswitch_5
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 695
    goto :goto_0

    .line 698
    :pswitch_6
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 699
    goto :goto_0

    .line 702
    :pswitch_7
    new-instance v4, Ljava/io/FileInputStream;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 703
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 704
    goto :goto_0

    .line 707
    :pswitch_8
    new-instance v4, Ljava/io/IOException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "Unable to load audio or video for contact "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public static loadSoundPool(Landroid/media/SoundPool;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 619
    sget-object v4, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:[I

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 646
    :pswitch_0
    new-instance v4, Ljava/io/IOException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "Unable to load audio "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 621
    :pswitch_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v4

    move v0, v4

    .line 640
    :goto_0
    return v0

    .line 624
    :pswitch_2
    move-object v4, v1

    const-string/jumbo v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 625
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 628
    :pswitch_3
    move-object v4, v1

    const-string/jumbo v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 629
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 632
    :pswitch_4
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 633
    move-object v4, v1

    const-string/jumbo v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 635
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 639
    :pswitch_5
    move-object v4, v1

    move-object v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    move-object v1, v4

    .line 640
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 643
    :pswitch_6
    new-instance v4, Ljava/io/IOException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "Unable to load audio for contact "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 728
    sget-object v4, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:[I

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 762
    :pswitch_0
    new-instance v4, Ljava/io/IOException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "Unable to load video "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 730
    :pswitch_1
    move-object v4, v1

    move-object v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    move-object v1, v4

    .line 731
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 732
    .line 757
    :goto_0
    return-void

    .line 735
    :pswitch_2
    move-object v4, v0

    move-object v5, v2

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 736
    goto :goto_0

    .line 739
    :pswitch_3
    move-object v4, v1

    const-string/jumbo v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 740
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 741
    goto :goto_0

    .line 744
    :pswitch_4
    move-object v4, v1

    const-string/jumbo v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 745
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 746
    goto :goto_0

    .line 749
    :pswitch_5
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 750
    move-object v4, v1

    const-string/jumbo v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 752
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 753
    goto :goto_0

    .line 756
    :pswitch_6
    move-object v4, v0

    move-object v5, v2

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 757
    goto :goto_0

    .line 760
    :pswitch_7
    new-instance v4, Ljava/io/IOException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "Unable to load video for contact "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 728
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    :try_start_0
    new-instance v1, Ljava/io/File;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Ljava/net/URL;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v0, v1

    return-object v0

    .line 109
    :catch_0
    move-exception v1

    new-instance v1, Ljava/io/IOException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "Unable to determine file path of file url "

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :catch_1
    move-exception v1

    new-instance v1, Ljava/io/IOException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "Unable to determine file path of file url "

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
