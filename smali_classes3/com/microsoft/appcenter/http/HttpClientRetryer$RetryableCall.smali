.class Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;
.super Lcom/microsoft/appcenter/http/HttpClientCallDecorator;
.source "HttpClientRetryer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/http/HttpClientRetryer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryableCall"
.end annotation


# instance fields
.field private mRetryCount:I

.field final synthetic this$0:Lcom/microsoft/appcenter/http/HttpClientRetryer;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/http/HttpClientRetryer;Lcom/microsoft/appcenter/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/http/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;",
            "Lcom/microsoft/appcenter/http/ServiceCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .local v2, "decoratedApi":Lcom/microsoft/appcenter/http/HttpClient;
    move-object/from16 v3, p3

    .local v3, "url":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "method":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v6, p6

    .local v6, "callTemplate":Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;
    move-object/from16 v7, p7

    .local v7, "serviceCallback":Lcom/microsoft/appcenter/http/ServiceCallback;
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->this$0:Lcom/microsoft/appcenter/http/HttpClientRetryer;

    .line 88
    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;-><init>(Lcom/microsoft/appcenter/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)V

    .line 89
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->this$0:Lcom/microsoft/appcenter/http/HttpClientRetryer;

    invoke-static {v1}, Lcom/microsoft/appcenter/http/HttpClientRetryer;->access$000(Lcom/microsoft/appcenter/http/HttpClientRetryer;)Landroid/os/Handler;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    move-object v1, v0

    invoke-super {v1}, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v3

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;
    throw v0
.end method

.method public onCallFailed(Ljava/lang/Exception;)V
    .locals 13

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;
    move-object v1, p1

    .local v1, "e":Ljava/lang/Exception;
    move-object v6, v0

    iget v6, v6, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->mRetryCount:I

    sget-object v7, Lcom/microsoft/appcenter/http/HttpClientRetryer;->RETRY_INTERVALS:[J

    array-length v7, v7

    if-ge v6, v7, :cond_3

    move-object v6, v1

    invoke-static {v6}, Lcom/microsoft/appcenter/http/HttpUtils;->isRecoverableError(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 100
    const-wide/16 v6, 0x0

    move-wide v2, v6

    .line 101
    .local v2, "delay":J
    move-object v6, v1

    instance-of v6, v6, Lcom/microsoft/appcenter/http/HttpException;

    if-eqz v6, :cond_0

    .line 102
    move-object v6, v1

    check-cast v6, Lcom/microsoft/appcenter/http/HttpException;

    move-object v4, v6

    .line 103
    .local v4, "httpException":Lcom/microsoft/appcenter/http/HttpException;
    move-object v6, v4

    invoke-virtual {v6}, Lcom/microsoft/appcenter/http/HttpException;->getHttpResponse()Lcom/microsoft/appcenter/http/HttpResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/appcenter/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v6

    const-string/jumbo v7, "x-ms-retry-after-ms"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 104
    .local v5, "retryAfterMs":Ljava/lang/String;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 105
    move-object v6, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-wide v2, v6

    .line 108
    .end local v4    # "httpException":Lcom/microsoft/appcenter/http/HttpException;
    .end local v5    # "retryAfterMs":Ljava/lang/String;
    :cond_0
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 109
    sget-object v6, Lcom/microsoft/appcenter/http/HttpClientRetryer;->RETRY_INTERVALS:[J

    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->mRetryCount:I

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    move v9, v12

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->mRetryCount:I

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    move-wide v2, v6

    .line 110
    move-wide v6, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->this$0:Lcom/microsoft/appcenter/http/HttpClientRetryer;

    invoke-static {v8}, Lcom/microsoft/appcenter/http/HttpClientRetryer;->access$100(Lcom/microsoft/appcenter/http/HttpClientRetryer;)Ljava/util/Random;

    move-result-object v8

    move-wide v9, v2

    long-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 112
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Try #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->mRetryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " failed and will be retried in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 113
    .local v4, "message":Ljava/lang/String;
    move-object v6, v1

    instance-of v6, v6, Ljava/net/UnknownHostException;

    if-eqz v6, :cond_2

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " (UnknownHostException)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 116
    :cond_2
    const-string/jumbo v6, "AppCenter"

    move-object v7, v4

    move-object v8, v1

    invoke-static {v6, v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->this$0:Lcom/microsoft/appcenter/http/HttpClientRetryer;

    invoke-static {v6}, Lcom/microsoft/appcenter/http/HttpClientRetryer;->access$000(Lcom/microsoft/appcenter/http/HttpClientRetryer;)Landroid/os/Handler;

    move-result-object v6

    move-object v7, v0

    move-wide v8, v2

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v6

    .line 118
    .line 121
    .end local v2    # "delay":J
    .end local v4    # "message":Ljava/lang/String;
    :goto_0
    return-void

    .line 119
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->mServiceCallback:Lcom/microsoft/appcenter/http/ServiceCallback;

    move-object v7, v1

    invoke-interface {v6, v7}, Lcom/microsoft/appcenter/http/ServiceCallback;->onCallFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method
