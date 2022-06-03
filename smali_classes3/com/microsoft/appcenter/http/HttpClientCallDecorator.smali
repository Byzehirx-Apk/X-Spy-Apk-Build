.class abstract Lcom/microsoft/appcenter/http/HttpClientCallDecorator;
.super Ljava/lang/Object;
.source "HttpClientCallDecorator.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/microsoft/appcenter/http/ServiceCall;
.implements Lcom/microsoft/appcenter/http/ServiceCallback;


# instance fields
.field private final mCallTemplate:Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;

.field private final mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;

.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMethod:Ljava/lang/String;

.field mServiceCall:Lcom/microsoft/appcenter/http/ServiceCall;

.field final mServiceCallback:Lcom/microsoft/appcenter/http/ServiceCallback;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)V
    .locals 9
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
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientCallDecorator;
    move-object v1, p1

    .local v1, "decoratedApi":Lcom/microsoft/appcenter/http/HttpClient;
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move-object v3, p3

    .local v3, "method":Ljava/lang/String;
    move-object v4, p4

    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v5, p5

    .local v5, "callTemplate":Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;
    move-object v6, p6

    .local v6, "serviceCallback":Lcom/microsoft/appcenter/http/ServiceCallback;
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;

    .line 40
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mUrl:Ljava/lang/String;

    .line 41
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mMethod:Ljava/lang/String;

    .line 42
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mHeaders:Ljava/util/Map;

    .line 43
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mCallTemplate:Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;

    .line 44
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mServiceCallback:Lcom/microsoft/appcenter/http/ServiceCallback;

    .line 45
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientCallDecorator;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mServiceCall:Lcom/microsoft/appcenter/http/ServiceCall;

    invoke-interface {v1}, Lcom/microsoft/appcenter/http/ServiceCall;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v2

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpClientCallDecorator;
    throw v0
.end method

.method public onCallFailed(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientCallDecorator;
    move-object v1, p1

    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mServiceCallback:Lcom/microsoft/appcenter/http/ServiceCallback;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/microsoft/appcenter/http/ServiceCallback;->onCallFailed(Ljava/lang/Exception;)V

    .line 65
    return-void
.end method

.method public onCallSucceeded(Lcom/microsoft/appcenter/http/HttpResponse;)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientCallDecorator;
    move-object v1, p1

    .local v1, "httpResponse":Lcom/microsoft/appcenter/http/HttpResponse;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mServiceCallback:Lcom/microsoft/appcenter/http/ServiceCallback;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/microsoft/appcenter/http/ServiceCallback;->onCallSucceeded(Lcom/microsoft/appcenter/http/HttpResponse;)V

    .line 60
    return-void
.end method

.method public declared-synchronized run()V
    .locals 9

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientCallDecorator;
    move-object v8, p0

    monitor-enter v8

    move-object v1, v0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mUrl:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mMethod:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mHeaders:Ljava/util/Map;

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mCallTemplate:Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Lcom/microsoft/appcenter/http/HttpClient;->callAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;

    move-result-object v2

    iput-object v2, v1, Lcom/microsoft/appcenter/http/HttpClientCallDecorator;->mServiceCall:Lcom/microsoft/appcenter/http/ServiceCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v8

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpClientCallDecorator;
    throw v0
.end method
