.class public Lcom/google/appinventor/components/runtime/util/AssetFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static background:Ljava/util/concurrent/ExecutorService;

.field private static volatile inError:Z

.field private static final semaphore:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const-class v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    .line 55
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->semaphore:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static fetchAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    sget-object v4, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v2

    move-object v8, v1

    move-object v9, v3

    move-object v10, v0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 72
    return-void
.end method

.method private static getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 16

    .prologue
    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    :goto_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v10

    move-object v4, v10

    .line 133
    move v10, v3

    const/4 v11, 0x1

    if-le v10, v11, :cond_1

    .line 134
    sget-object v10, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->semaphore:Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v5, v11

    monitor-enter v10

    .line 135
    :try_start_0
    sget-boolean v10, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    if-eqz v10, :cond_0

    .line 136
    const/4 v10, 0x0

    move-object v11, v5

    monitor-exit v11

    move-object v0, v10

    .line 189
    :goto_1
    return-object v0

    .line 138
    :cond_0
    const/4 v10, 0x1

    sput-boolean v10, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    .line 139
    move-object v10, v4

    new-instance v11, Lcom/google/appinventor/components/runtime/util/AssetFetcher$3;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    invoke-direct {v12, v13}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    const/4 v10, 0x0

    move-object v11, v5

    monitor-exit v11

    move-object v0, v10

    goto :goto_1

    .line 148
    :catchall_0
    move-exception v10

    move-object v6, v10

    move-object v10, v5

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v6

    throw v10

    .line 151
    :cond_1
    const/4 v10, 0x0

    move v5, v10

    .line 152
    const/4 v10, 0x0

    move-object v6, v10

    .line 153
    :try_start_1
    new-instance v10, Ljava/net/URL;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    .line 155
    move-object v7, v11

    if-eqz v10, :cond_4

    .line 156
    move-object v10, v7

    const-string/jumbo v11, "GET"

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 157
    move-object v10, v7

    const-string/jumbo v11, "Cookie"

    const-string/jumbo v12, "Kodular = "

    move-object v13, v1

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    move-object v10, v7

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    move v6, v10

    .line 159
    sget-object v10, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string/jumbo v13, "asset = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " responseCode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 160
    new-instance v10, Ljava/io/File;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v4

    invoke-static {v12}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    move-object v13, v2

    const/4 v14, 0x7

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    .line 161
    move-object v6, v11

    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    .line 162
    move-object v4, v11

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    move-object v10, v4

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-nez v10, :cond_2

    .line 163
    new-instance v10, Ljava/io/IOException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string/jumbo v12, "Unable to create assets directory "

    move-object v13, v4

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 191
    sget-object v10, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "Exception while fetching "

    move-object v12, v0

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v12, v5

    invoke-static {v10, v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v10

    .line 193
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v3, v13

    move-object v2, v12

    move-object v1, v11

    move-object v0, v10

    goto/16 :goto_0

    .line 165
    :cond_2
    :try_start_2
    new-instance v10, Ljava/io/BufferedInputStream;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v7

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    const/16 v13, 0x1000

    invoke-direct {v11, v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v4, v10

    .line 166
    new-instance v10, Ljava/io/BufferedOutputStream;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/io/FileOutputStream;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v6

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v13, 0x1000

    invoke-direct {v11, v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v10

    .line 169
    :goto_2
    move-object v10, v4

    :try_start_3
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->read()I

    move-result v10

    move v15, v10

    move v10, v15

    move v11, v15

    .line 170
    move v9, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 173
    move-object v10, v8

    move v11, v9

    invoke-virtual {v10, v11}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 174
    goto :goto_2

    .line 175
    :cond_3
    move-object v10, v8

    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    move-object v10, v8

    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    .line 181
    .line 182
    :goto_3
    move-object v10, v7

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 183
    .line 186
    :goto_4
    move v10, v5

    if-eqz v10, :cond_5

    .line 187
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-static {v10, v11, v12, v13}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_1

    .line 176
    :catch_1
    move-exception v10

    move-object v9, v10

    .line 177
    :try_start_5
    sget-object v10, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "copying assets"

    move-object v12, v9

    invoke-static {v10, v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v10

    .line 178
    const/4 v10, 0x1

    move v5, v10

    .line 180
    move-object v10, v8

    :try_start_6
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    .line 181
    goto :goto_3

    .line 180
    :catchall_1
    move-exception v10

    move-object v4, v10

    move-object v10, v8

    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    .line 181
    move-object v10, v4

    throw v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 184
    :cond_4
    const/4 v10, 0x1

    move v5, v10

    goto :goto_4

    .line 189
    :cond_5
    move-object v10, v6

    move-object v0, v10

    goto/16 :goto_1
.end method

.method public static loadExtensions(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 100
    move-object v0, p0

    sget-object v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "loadExtensions called jsonString = "

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 102
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v1, v5

    .line 103
    new-instance v5, Lorg/json/JSONArray;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 104
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 105
    move-object v5, v0

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 106
    sget-object v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "loadExtensions: No Extensions"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 107
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->extensionsLoaded()V

    .line 108
    .line 129
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 111
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 112
    move-object v4, v6

    if-eqz v5, :cond_1

    .line 113
    sget-object v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "loadExtensions, extensionName = "

    move-object v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 114
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 116
    :cond_1
    sget-object v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "extensionName was null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 117
    goto :goto_0

    .line 121
    :cond_2
    move-object v5, v1

    move-object v6, v2

    :try_start_1
    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/ReplForm;->loadComponents(Ljava/util/List;)V

    .line 122
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->extensionsLoaded()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 124
    :try_start_2
    sget-object v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error in form.loadComponents"

    move-object v7, v3

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    .line 128
    goto :goto_0

    .line 126
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 127
    sget-object v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "JSON Exception parsing extension string"

    move-object v7, v1

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 129
    goto :goto_0
.end method

.method public static upgradeCompanion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 97
    return-void
.end method
