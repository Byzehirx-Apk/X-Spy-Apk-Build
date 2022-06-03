.class public Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;
.super Lcom/microsoft/appcenter/http/HttpClientDecorator;
.source "HttpClientNetworkStateHandler.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;
    }
.end annotation


# instance fields
.field private final mCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkStateHelper:Lcom/microsoft/appcenter/utils/NetworkStateHelper;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/http/HttpClient;Lcom/microsoft/appcenter/utils/NetworkStateHelper;)V
    .locals 7

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;
    move-object v1, p1

    .local v1, "decoratedApi":Lcom/microsoft/appcenter/http/HttpClient;
    move-object v2, p2

    .local v2, "networkStateHelper":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/http/HttpClientDecorator;-><init>(Lcom/microsoft/appcenter/http/HttpClient;)V

    .line 31
    move-object v3, v0

    new-instance v4, Ljava/util/HashSet;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v3, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;->mCalls:Ljava/util/Set;

    .line 41
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;->mNetworkStateHelper:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    .line 42
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;->mNetworkStateHelper:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->addListener(Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;)V
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;
    move-object v1, p1

    .local v1, "x1":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;->cancelCall(Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;)V

    return-void
.end method

.method private declared-synchronized cancelCall(Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;)V
    .locals 5

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;
    move-object v1, p1

    .local v1, "call":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v1

    :try_start_0
    iget-object v2, v2, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;->mServiceCall:Lcom/microsoft/appcenter/http/ServiceCall;

    if-eqz v2, :cond_0

    .line 88
    move-object v2, v1

    iget-object v2, v2, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;->mServiceCall:Lcom/microsoft/appcenter/http/ServiceCall;

    invoke-interface {v2}, Lcom/microsoft/appcenter/http/ServiceCall;->cancel()V

    .line 90
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;->mCalls:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 91
    monitor-exit v4

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;
    throw v0
.end method


# virtual methods
.method public declared-synchronized callAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;
    .locals 18
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
    .line 47
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;
    move-object/from16 v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "method":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v4, p4

    .local v4, "callTemplate":Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;
    move-object/from16 v5, p5

    .local v5, "serviceCallback":Lcom/microsoft/appcenter/http/ServiceCallback;
    move-object/from16 v16, p0

    monitor-enter v16

    :try_start_0
    new-instance v7, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;->mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    invoke-direct/range {v8 .. v15}, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;-><init>(Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;Lcom/microsoft/appcenter/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)V

    move-object v6, v7

    .line 48
    .local v6, "call":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;->mNetworkStateHelper:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    invoke-virtual {v7}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->isNetworkConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 49
    move-object v7, v6

    invoke-virtual {v7}, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_0
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;
    monitor-exit v16

    return-object v0

    .line 51
    .restart local v0    # "this":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;
    :cond_0
    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;->mCalls:Ljava/util/Set;

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 52
    const-string/jumbo v7, "AppCenter"

    const-string/jumbo v8, "Call triggered with no network connectivity, waiting network to become available..."

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    .end local v6    # "call":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;
    :catchall_0
    move-exception v0

    monitor-exit v16

    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;
    throw v0
.end method

.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;->mNetworkStateHelper:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->removeListener(Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;)V

    .line 60
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;->mCalls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 61
    move-object v1, v0

    invoke-super {v1}, Lcom/microsoft/appcenter/http/HttpClientDecorator;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v3

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;
    throw v0
.end method

.method public declared-synchronized onNetworkStateUpdated(Z)V
    .locals 9

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;
    move v1, p1

    .local v1, "connected":Z
    move-object v7, p0

    monitor-enter v7

    move v4, v1

    if-eqz v4, :cond_1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;->mCalls:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 73
    const-string/jumbo v4, "AppCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Network is available. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;->mCalls:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pending call(s) to submit now."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;->mCalls:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;

    move-object v3, v4

    .line 75
    .local v3, "call":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;->run()V

    .line 76
    goto :goto_0

    .line 77
    .end local v3    # "call":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler$Call;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;->mCalls:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_1
    monitor-exit v7

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;
    throw v0
.end method

.method public reopen()V
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/HttpClientNetworkStateHandler;->mNetworkStateHelper:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->addListener(Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;)V

    .line 67
    move-object v1, v0

    invoke-super {v1}, Lcom/microsoft/appcenter/http/HttpClientDecorator;->reopen()V

    .line 68
    return-void
.end method
