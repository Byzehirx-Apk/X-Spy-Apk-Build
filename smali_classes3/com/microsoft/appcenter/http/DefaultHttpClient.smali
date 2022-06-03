.class public Lcom/microsoft/appcenter/http/DefaultHttpClient;
.super Ljava/lang/Object;
.source "DefaultHttpClient.java"

# interfaces
.implements Lcom/microsoft/appcenter/http/HttpClient;
.implements Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask$Tracker;


# static fields
.field static final CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field static final CONTENT_ENCODING_KEY:Ljava/lang/String; = "Content-Encoding"

.field static final CONTENT_ENCODING_VALUE:Ljava/lang/String; = "gzip"

.field public static final CONTENT_TYPE_KEY:Ljava/lang/String; = "Content-Type"

.field static final CONTENT_TYPE_VALUE:Ljava/lang/String; = "application/json"

.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field static final X_MS_RETRY_AFTER_MS_HEADER:Ljava/lang/String; = "x-ms-retry-after-ms"


# instance fields
.field private final mCompressionEnabled:Z

.field private final mTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClient;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/http/DefaultHttpClient;-><init>(Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClient;
    move v1, p1

    .local v1, "compressionEnabled":Z
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 74
    move-object v2, v0

    new-instance v3, Ljava/util/HashSet;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/microsoft/appcenter/http/DefaultHttpClient;->mTasks:Ljava/util/Set;

    .line 86
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/microsoft/appcenter/http/DefaultHttpClient;->mCompressionEnabled:Z

    .line 87
    return-void
.end method


# virtual methods
.method public callAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;",
            "Lcom/microsoft/appcenter/http/ServiceCallback;",
            ")",
            "Lcom/microsoft/appcenter/http/ServiceCall;"
        }
    .end annotation

    .prologue
    .line 96
    move-object/from16 v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/http/DefaultHttpClient;
    move-object/from16 v2, p1

    .local v2, "url":Ljava/lang/String;
    move-object/from16 v3, p2

    .local v3, "method":Ljava/lang/String;
    move-object/from16 v4, p3

    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v5, p4

    .local v5, "callTemplate":Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;
    move-object/from16 v6, p5

    .local v6, "serviceCallback":Lcom/microsoft/appcenter/http/ServiceCallback;
    new-instance v9, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/microsoft/appcenter/http/DefaultHttpClient;->mCompressionEnabled:Z

    move/from16 v17, v0

    invoke-direct/range {v10 .. v17}, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask$Tracker;Z)V

    move-object v7, v9

    .line 98
    .local v7, "task":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    move-object v9, v7

    :try_start_0
    sget-object v10, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v9, v10, v11}, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 114
    .line 115
    :goto_0
    new-instance v9, Lcom/microsoft/appcenter/http/DefaultHttpClient$2;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v1

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Lcom/microsoft/appcenter/http/DefaultHttpClient$2;-><init>(Lcom/microsoft/appcenter/http/DefaultHttpClient;Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;)V

    move-object v1, v9

    .end local v1    # "this":Lcom/microsoft/appcenter/http/DefaultHttpClient;
    return-object v1

    .line 99
    .restart local v1    # "this":Lcom/microsoft/appcenter/http/DefaultHttpClient;
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 107
    .local v8, "e":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v9, Lcom/microsoft/appcenter/http/DefaultHttpClient$1;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v1

    move-object v12, v6

    move-object v13, v8

    invoke-direct {v10, v11, v12, v13}, Lcom/microsoft/appcenter/http/DefaultHttpClient$1;-><init>(Lcom/microsoft/appcenter/http/DefaultHttpClient;Lcom/microsoft/appcenter/http/ServiceCallback;Ljava/util/concurrent/RejectedExecutionException;)V

    invoke-static {v9}, Lcom/microsoft/appcenter/utils/HandlerUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 8

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClient;
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/microsoft/appcenter/http/DefaultHttpClient;->mTasks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 139
    const-string/jumbo v3, "AppCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cancelling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/http/DefaultHttpClient;->mTasks:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " network call(s)."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/http/DefaultHttpClient;->mTasks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;

    move-object v2, v3

    .line 141
    .local v2, "task":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;->cancel(Z)Z

    move-result v3

    .line 142
    goto :goto_0

    .line 143
    .end local v2    # "task":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/http/DefaultHttpClient;->mTasks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_1
    monitor-exit v6

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/microsoft/appcenter/http/DefaultHttpClient;
    throw v0
.end method

.method getTasks()Ljava/util/Set;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClient;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/DefaultHttpClient;->mTasks:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/http/DefaultHttpClient;
    return-object v0
.end method

.method isCompressionEnabled()Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClient;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/microsoft/appcenter/http/DefaultHttpClient;->mCompressionEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/http/DefaultHttpClient;
    return v0
.end method

.method public declared-synchronized onFinish(Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;)V
    .locals 5

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClient;
    move-object v1, p1

    .local v1, "task":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/microsoft/appcenter/http/DefaultHttpClient;->mTasks:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 134
    monitor-exit v4

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/http/DefaultHttpClient;
    throw v0
.end method

.method public declared-synchronized onStart(Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;)V
    .locals 5

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/DefaultHttpClient;
    move-object v1, p1

    .local v1, "task":Lcom/microsoft/appcenter/http/DefaultHttpClientCallTask;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/microsoft/appcenter/http/DefaultHttpClient;->mTasks:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 129
    monitor-exit v4

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/http/DefaultHttpClient;
    throw v0
.end method

.method public reopen()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method
