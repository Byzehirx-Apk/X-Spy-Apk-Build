.class public Lcom/bumptech/glide/provider/DataLoadProviderRegistry;
.super Ljava/lang/Object;
.source "DataLoadProviderRegistry.java"


# static fields
.field private static final GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;


# instance fields
.field private final providers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/util/MultiClassKey;",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lcom/bumptech/glide/util/MultiClassKey;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/util/MultiClassKey;-><init>()V

    sput-object v0, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/DataLoadProviderRegistry;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->providers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/DataLoadProviderRegistry;
    move-object v1, p1

    .local v1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    sget-object v6, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v4, v7

    monitor-enter v6

    .line 45
    :try_start_0
    sget-object v6, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/bumptech/glide/util/MultiClassKey;->set(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 46
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->providers:Ljava/util/Map;

    sget-object v7, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/provider/DataLoadProvider;

    move-object v3, v6

    .line 47
    .local v3, "result":Lcom/bumptech/glide/provider/DataLoadProvider;, "Lcom/bumptech/glide/provider/DataLoadProvider<**>;"
    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    move-object v6, v3

    if-nez v6, :cond_0

    .line 49
    invoke-static {}, Lcom/bumptech/glide/provider/EmptyDataLoadProvider;->get()Lcom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v6

    move-object v3, v6

    .line 51
    :cond_0
    move-object v6, v3

    move-object v0, v6

    .end local v0    # "this":Lcom/bumptech/glide/provider/DataLoadProviderRegistry;
    return-object v0

    .line 47
    .end local v3    # "result":Lcom/bumptech/glide/provider/DataLoadProvider;, "Lcom/bumptech/glide/provider/DataLoadProvider<**>;"
    .restart local v0    # "this":Lcom/bumptech/glide/provider/DataLoadProviderRegistry;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TT;TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/provider/DataLoadProviderRegistry;
    move-object v1, p1

    .local v1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    move-object v3, p3

    .local v3, "provider":Lcom/bumptech/glide/provider/DataLoadProvider;, "Lcom/bumptech/glide/provider/DataLoadProvider<TT;TZ;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->providers:Ljava/util/Map;

    new-instance v5, Lcom/bumptech/glide/util/MultiClassKey;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/util/MultiClassKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 31
    return-void
.end method
