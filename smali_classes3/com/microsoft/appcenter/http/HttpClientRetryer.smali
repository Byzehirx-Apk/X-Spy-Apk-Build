.class public Lcom/microsoft/appcenter/http/HttpClientRetryer;
.super Lcom/microsoft/appcenter/http/HttpClientDecorator;
.source "HttpClientRetryer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;
    }
.end annotation


# static fields
.field static final RETRY_INTERVALS:[J
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [J

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    .line 32
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    aput-wide v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    .line 33
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    aput-wide v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x14

    .line 34
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    aput-wide v3, v1, v2

    sput-object v0, Lcom/microsoft/appcenter/http/HttpClientRetryer;->RETRY_INTERVALS:[J

    .line 31
    return-void
.end method

.method constructor <init>(Lcom/microsoft/appcenter/http/HttpClient;)V
    .locals 8

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientRetryer;
    move-object v1, p1

    .local v1, "decoratedApi":Lcom/microsoft/appcenter/http/HttpClient;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Landroid/os/Handler;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, v3, v4}, Lcom/microsoft/appcenter/http/HttpClientRetryer;-><init>(Lcom/microsoft/appcenter/http/HttpClient;Landroid/os/Handler;)V

    .line 54
    return-void
.end method

.method constructor <init>(Lcom/microsoft/appcenter/http/HttpClient;Landroid/os/Handler;)V
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientRetryer;
    move-object v1, p1

    .local v1, "decoratedApi":Lcom/microsoft/appcenter/http/HttpClient;
    move-object v2, p2

    .local v2, "handler":Landroid/os/Handler;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/microsoft/appcenter/http/HttpClientDecorator;-><init>(Lcom/microsoft/appcenter/http/HttpClient;)V

    .line 45
    move-object v3, v0

    new-instance v4, Ljava/util/Random;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    iput-object v4, v3, Lcom/microsoft/appcenter/http/HttpClientRetryer;->mRandom:Ljava/util/Random;

    .line 65
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/http/HttpClientRetryer;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/http/HttpClientRetryer;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/http/HttpClientRetryer;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/HttpClientRetryer;->mHandler:Landroid/os/Handler;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/http/HttpClientRetryer;
    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/http/HttpClientRetryer;)Ljava/util/Random;
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/http/HttpClientRetryer;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/HttpClientRetryer;->mRandom:Ljava/util/Random;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/http/HttpClientRetryer;
    return-object v0
.end method


# virtual methods
.method public callAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;
    .locals 17
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
    .line 72
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientRetryer;
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
    new-instance v7, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/microsoft/appcenter/http/HttpClientRetryer;->mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    invoke-direct/range {v8 .. v15}, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;-><init>(Lcom/microsoft/appcenter/http/HttpClientRetryer;Lcom/microsoft/appcenter/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)V

    move-object v6, v7

    .line 73
    .local v6, "retryableCall":Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;
    move-object v7, v6

    invoke-virtual {v7}, Lcom/microsoft/appcenter/http/HttpClientRetryer$RetryableCall;->run()V

    .line 74
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpClientRetryer;
    return-object v0
.end method
