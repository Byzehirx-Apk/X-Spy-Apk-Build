.class public Lcom/airbnb/lottie/network/NetworkFetcher;
.super Ljava/lang/Object;
.source "NetworkFetcher.java"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final networkCache:Lcom/airbnb/lottie/network/NetworkCache;

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v3, Lcom/airbnb/lottie/network/NetworkFetcher;->appContext:Landroid/content/Context;

    .line 36
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 37
    move-object v3, v0

    new-instance v4, Lcom/airbnb/lottie/network/NetworkCache;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/network/NetworkFetcher;->appContext:Landroid/content/Context;

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/network/NetworkCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 38
    return-void
.end method

.method private fetchFromCache()Lcom/airbnb/lottie/LottieComposition;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    invoke-virtual {v5}, Lcom/airbnb/lottie/network/NetworkCache;->fetch()Landroidx/core/util/Pair;

    move-result-object v5

    move-object v1, v5

    .line 58
    .local v1, "cacheResult":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Lcom/airbnb/lottie/network/FileExtension;Ljava/io/InputStream;>;"
    move-object v5, v1

    if-nez v5, :cond_0

    .line 59
    const/4 v5, 0x0

    move-object v0, v5

    .line 73
    .end local v0    # "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    :goto_0
    return-object v0

    .line 62
    .restart local v0    # "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/airbnb/lottie/network/FileExtension;

    move-object v2, v5

    .line 63
    .local v2, "extension":Lcom/airbnb/lottie/network/FileExtension;
    move-object v5, v1

    iget-object v5, v5, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/io/InputStream;

    move-object v3, v5

    .line 65
    .local v3, "inputStream":Ljava/io/InputStream;
    move-object v5, v2

    sget-object v6, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    if-ne v5, v6, :cond_1

    .line 66
    new-instance v5, Ljava/util/zip/ZipInputStream;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v5

    move-object v4, v5

    .line 70
    .local v4, "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    :goto_1
    move-object v5, v4

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 71
    move-object v5, v4

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieComposition;

    move-object v0, v5

    goto :goto_0

    .line 68
    .end local v4    # "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    :cond_1
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v5

    move-object v4, v5

    .restart local v4    # "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    goto :goto_1

    .line 73
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method private fetchFromNetwork()Lcom/airbnb/lottie/LottieResult;
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    move-object v2, v0

    :try_start_0
    invoke-direct {v2}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromNetworkInternal()Lcom/airbnb/lottie/LottieResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 81
    .end local v0    # "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    .local v1, "e":Ljava/io/IOException;
    :goto_0
    return-object v0

    .line 80
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 81
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v2, Lcom/airbnb/lottie/LottieResult;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private fetchFromNetworkInternal()Lcom/airbnb/lottie/LottieResult;
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Fetching "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 90
    new-instance v5, Ljava/net/URL;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v1, v5

    .line 91
    .local v1, "connection":Ljava/net/HttpURLConnection;
    move-object v5, v1

    const-string/jumbo v6, "GET"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 94
    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 96
    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1

    .line 97
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/network/NetworkFetcher;->getErrorFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 98
    .local v2, "error":Ljava/lang/String;
    new-instance v5, Lcom/airbnb/lottie/LottieResult;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to fetch "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ". Failed with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 107
    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 98
    move-object v5, v3

    move-object v0, v5

    .line 105
    .end local v0    # "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    .end local v2    # "error":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 101
    .restart local v0    # "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    :cond_1
    move-object v5, v0

    move-object v6, v1

    :try_start_1
    invoke-direct {v5, v6}, Lcom/airbnb/lottie/network/NetworkFetcher;->getResultFromConnection(Ljava/net/HttpURLConnection;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v5

    move-object v2, v5

    .line 102
    .local v2, "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Completed fetch from network. Success: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    move-object v5, v2

    move-object v3, v5

    .line 107
    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 103
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 102
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 104
    .end local v2    # "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/airbnb/lottie/LottieResult;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v5

    .line 107
    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 105
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 107
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 108
    move-object v5, v4

    throw v5
.end method

.method public static fetchSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/airbnb/lottie/network/NetworkFetcher;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/airbnb/lottie/network/NetworkFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchSync()Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private getErrorFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    move-object/from16 v1, p1

    .local v1, "connection":Ljava/net/HttpURLConnection;
    move-object v9, v1

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    move v2, v9

    .line 113
    .local v2, "responseCode":I
    new-instance v9, Ljava/io/BufferedReader;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/io/InputStreamReader;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v1

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v9

    .line 114
    .local v3, "r":Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v9

    .line 118
    .local v4, "error":Ljava/lang/StringBuilder;
    :goto_0
    move-object v9, v3

    :try_start_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v5, v10

    .local v5, "line":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 119
    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    goto :goto_0

    .line 125
    :cond_0
    move-object v9, v3

    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    .line 130
    :goto_1
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .end local v0    # "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    return-object v0

    .line 126
    .restart local v0    # "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 129
    goto :goto_1

    .line 121
    .end local v5    # "line":Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v6, v9

    .line 122
    .local v6, "e":Ljava/lang/Exception;
    move-object v9, v6

    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    move-object v7, v9

    .line 125
    move-object v9, v3

    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 128
    .line 129
    :goto_2
    move-object v9, v7

    throw v9

    .line 126
    :catch_2
    move-exception v9

    move-object v8, v9

    goto :goto_2
.end method

.method private getResultFromConnection(Ljava/net/HttpURLConnection;)Lcom/airbnb/lottie/LottieResult;
    .locals 14
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    move-object v1, p1

    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    move-object v4, v8

    .line 138
    .local v4, "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    move-object v8, v1

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 139
    .local v5, "contentType":Ljava/lang/String;
    move-object v8, v5

    if-nez v8, :cond_0

    .line 142
    const-string/jumbo v8, "application/json"

    move-object v5, v8

    .line 144
    :cond_0
    move-object v8, v5

    move-object v6, v8

    const/4 v8, -0x1

    move v7, v8

    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_1
    :goto_0
    move v8, v7

    packed-switch v8, :pswitch_data_0

    .line 153
    const-string/jumbo v8, "Received json response."

    invoke-static {v8}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 154
    sget-object v8, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    move-object v3, v8

    .line 155
    .local v3, "extension":Lcom/airbnb/lottie/network/FileExtension;
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    move-object v9, v1

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Lcom/airbnb/lottie/network/NetworkCache;->writeTempCacheFile(Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    move-result-object v8

    move-object v2, v8

    .line 156
    .local v2, "file":Ljava/io/File;
    new-instance v8, Ljava/io/FileInputStream;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/io/File;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v2

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v8

    move-object v4, v8

    .line 160
    :goto_1
    move-object v8, v4

    invoke-virtual {v8}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 161
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    move-object v9, v3

    invoke-virtual {v8, v9}, Lcom/airbnb/lottie/network/NetworkCache;->renameTempFile(Lcom/airbnb/lottie/network/FileExtension;)V

    .line 163
    :cond_2
    move-object v8, v4

    move-object v0, v8

    .end local v0    # "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    return-object v0

    .line 144
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "extension":Lcom/airbnb/lottie/network/FileExtension;
    .restart local v0    # "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    :sswitch_0
    move-object v8, v6

    const-string/jumbo v9, "application/zip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    move v7, v8

    goto :goto_0

    :sswitch_1
    move-object v8, v6

    const-string/jumbo v9, "application/json"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    move v7, v8

    goto :goto_0

    .line 146
    :pswitch_0
    const-string/jumbo v8, "Handling zip response."

    invoke-static {v8}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 147
    sget-object v8, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    move-object v3, v8

    .line 148
    .restart local v3    # "extension":Lcom/airbnb/lottie/network/FileExtension;
    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    move-object v9, v1

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Lcom/airbnb/lottie/network/NetworkCache;->writeTempCacheFile(Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    move-result-object v8

    move-object v2, v8

    .line 149
    .restart local v2    # "file":Ljava/io/File;
    new-instance v8, Ljava/util/zip/ZipInputStream;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/io/FileInputStream;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v2

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v8

    move-object v4, v8

    .line 150
    goto :goto_1

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a67ee1e -> :sswitch_0
        -0x29cf5b9 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public fetchSync()Lcom/airbnb/lottie/LottieResult;
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/LottieResult",
            "<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromCache()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v2

    move-object v1, v2

    .line 43
    .local v1, "result":Lcom/airbnb/lottie/LottieComposition;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 44
    new-instance v2, Lcom/airbnb/lottie/LottieResult;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .line 48
    .end local v0    # "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    :goto_0
    return-object v0

    .line 47
    .restart local v0    # "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Animation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found in cache. Fetching from network."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 48
    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromNetwork()Lcom/airbnb/lottie/LottieResult;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
