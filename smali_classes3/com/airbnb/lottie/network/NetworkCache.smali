.class Lcom/airbnb/lottie/network/NetworkCache;
.super Ljava/lang/Object;
.source "NetworkCache.java"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/network/NetworkCache;
    move-object v1, p1

    .local v1, "appContext":Landroid/content/Context;
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v3, Lcom/airbnb/lottie/network/NetworkCache;->appContext:Landroid/content/Context;

    .line 27
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/airbnb/lottie/network/NetworkCache;->url:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private static filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;
    .locals 8

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "url":Ljava/lang/String;
    move-object v1, p1

    .local v1, "extension":Lcom/airbnb/lottie/network/FileExtension;
    move v2, p2

    .local v2, "isTemp":Z
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lottie_cache_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    const-string/jumbo v5, "\\W+"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/airbnb/lottie/network/FileExtension;->tempExtension()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "url":Ljava/lang/String;
    return-object v0

    .restart local v0    # "url":Ljava/lang/String;
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/airbnb/lottie/network/FileExtension;->extension:Ljava/lang/String;

    goto :goto_0
.end method

.method private getCachedFile(Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/network/NetworkCache;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/network/NetworkCache;->appContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    move-object v7, v1

    sget-object v8, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v4

    .line 120
    .local v2, "jsonFile":Ljava/io/File;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    move-object v4, v2

    move-object v0, v4

    .line 127
    .end local v0    # "this":Lcom/airbnb/lottie/network/NetworkCache;
    :goto_0
    return-object v0

    .line 123
    .restart local v0    # "this":Lcom/airbnb/lottie/network/NetworkCache;
    :cond_0
    new-instance v4, Ljava/io/File;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/network/NetworkCache;->appContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    move-object v7, v1

    sget-object v8, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v4

    .line 124
    .local v3, "zipFile":Ljava/io/File;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 127
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method fetch()Landroidx/core/util/Pair;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair",
            "<",
            "Lcom/airbnb/lottie/network/FileExtension;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/network/NetworkCache;
    const/4 v4, 0x0

    move-object v1, v4

    .line 42
    .local v1, "cachedFile":Ljava/io/File;
    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/airbnb/lottie/network/NetworkCache;->url:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/network/NetworkCache;->getCachedFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v1, v4

    .line 45
    .line 46
    move-object v4, v1

    if-nez v4, :cond_0

    .line 47
    const/4 v4, 0x0

    move-object v0, v4

    .line 65
    .end local v0    # "this":Lcom/airbnb/lottie/network/NetworkCache;
    :goto_0
    return-object v0

    .line 43
    .restart local v0    # "this":Lcom/airbnb/lottie/network/NetworkCache;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 44
    .local v2, "e":Ljava/io/FileNotFoundException;
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 52
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v4

    .line 55
    .line 58
    .local v2, "inputStream":Ljava/io/FileInputStream;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    sget-object v4, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    move-object v3, v4

    .line 64
    .local v3, "extension":Lcom/airbnb/lottie/network/FileExtension;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cache hit for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/network/NetworkCache;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 65
    new-instance v4, Landroidx/core/util/Pair;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_0

    .line 53
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "extension":Lcom/airbnb/lottie/network/FileExtension;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 54
    .local v3, "e":Ljava/io/FileNotFoundException;
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 61
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    :cond_1
    sget-object v4, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    move-object v3, v4

    .local v3, "extension":Lcom/airbnb/lottie/network/FileExtension;
    goto :goto_1
.end method

.method renameTempFile(Lcom/airbnb/lottie/network/FileExtension;)V
    .locals 12

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/network/NetworkCache;
    move-object v1, p1

    .local v1, "extension":Lcom/airbnb/lottie/network/FileExtension;
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/network/NetworkCache;->url:Ljava/lang/String;

    move-object v8, v1

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 103
    .local v2, "fileName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/network/NetworkCache;->appContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v7

    .line 104
    .local v3, "file":Ljava/io/File;
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ".temp"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 105
    .local v4, "newFileName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v4

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 106
    .local v5, "newFile":Ljava/io/File;
    move-object v7, v3

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    move v6, v7

    .line 107
    .local v6, "renamed":Z
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Copying temp file to real file ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 108
    move v7, v6

    if-nez v7, :cond_0

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to rename cache file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method writeTempCacheFile(Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/network/NetworkCache;
    move-object/from16 v1, p1

    .local v1, "stream":Ljava/io/InputStream;
    move-object/from16 v2, p2

    .local v2, "extension":Lcom/airbnb/lottie/network/FileExtension;
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/network/NetworkCache;->url:Ljava/lang/String;

    move-object v11, v2

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 75
    .local v3, "fileName":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget-object v12, v12, Lcom/airbnb/lottie/network/NetworkCache;->appContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    move-object v13, v3

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v10

    .line 77
    .local v4, "file":Ljava/io/File;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v4

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v10

    .line 80
    .local v5, "output":Ljava/io/OutputStream;
    const/16 v10, 0x400

    :try_start_1
    new-array v10, v10, [B

    move-object v6, v10

    .line 83
    .local v6, "buffer":[B
    :goto_0
    move-object v10, v1

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v14, v10

    move v10, v14

    move v11, v14

    move v7, v11

    .local v7, "read":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 84
    move-object v10, v5

    move-object v11, v6

    const/4 v12, 0x0

    move v13, v7

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 87
    :cond_0
    move-object v10, v5

    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    move-object v10, v5

    :try_start_2
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    .line 92
    move-object v10, v1

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 93
    .line 94
    move-object v10, v4

    move-object v0, v10

    .end local v0    # "this":Lcom/airbnb/lottie/network/NetworkCache;
    return-object v0

    .line 89
    .end local v6    # "buffer":[B
    .end local v7    # "read":I
    .restart local v0    # "this":Lcom/airbnb/lottie/network/NetworkCache;
    :catchall_0
    move-exception v10

    move-object v8, v10

    move-object v10, v5

    :try_start_3
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 90
    move-object v10, v8

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    .end local v5    # "output":Ljava/io/OutputStream;
    :catchall_1
    move-exception v10

    move-object v9, v10

    move-object v10, v1

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 93
    move-object v10, v9

    throw v10
.end method
