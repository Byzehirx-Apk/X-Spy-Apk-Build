.class public Lcom/bumptech/glide/load/model/GenericLoaderFactory;
.super Ljava/lang/Object;
.source "GenericLoaderFactory.java"


# static fields
.field private static final NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;


# instance fields
.field private final cachedModelLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/bumptech/glide/load/model/ModelLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final modelClassToResourceFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/load/model/GenericLoaderFactory$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 17
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    .line 19
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    .line 37
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v2, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    move-object v1, p1

    .local v1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    move-object v3, p3

    .local v3, "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TT;TY;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    move-object v4, v5

    .line 155
    .local v4, "resourceToLoaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;>;"
    move-object v5, v4

    if-nez v5, :cond_0

    .line 156
    new-instance v5, Ljava/util/HashMap;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v4, v5

    .line 157
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    move-object v6, v1

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 159
    :cond_0
    move-object v5, v4

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 160
    return-void
.end method

.method private cacheNullLoader(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    move-object v1, p1

    .local v1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget-object v6, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-direct {v3, v4, v5, v6}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 151
    return-void
.end method

.method private getCachedLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    move-object v1, p1

    .local v1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    move-object v3, v5

    .line 164
    .local v3, "resourceToLoaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;>;"
    const/4 v5, 0x0

    move-object v4, v5

    .line 165
    .local v4, "result":Lcom/bumptech/glide/load/model/ModelLoader;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 166
    move-object v5, v3

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/model/ModelLoader;

    move-object v4, v5

    .line 169
    :cond_0
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    return-object v0
.end method

.method private getFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    move-object v1, p1

    .local v1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    move-object v9, v1

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    move-object v3, v8

    .line 174
    .local v3, "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    const/4 v8, 0x0

    move-object v4, v8

    .line 175
    .local v4, "result":Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    move-object v8, v3

    if-eqz v8, :cond_0

    .line 176
    move-object v8, v3

    move-object v9, v2

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-object v4, v8

    .line 179
    :cond_0
    move-object v8, v4

    if-nez v8, :cond_1

    .line 180
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    move-object v6, v8

    .line 186
    .local v6, "registeredModelClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    move-object v8, v6

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 187
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    move-object v9, v6

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    move-object v7, v8

    .line 189
    .local v7, "currentResourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    move-object v8, v7

    if-eqz v8, :cond_2

    .line 190
    move-object v8, v7

    move-object v9, v2

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-object v4, v8

    .line 191
    move-object v8, v4

    if-eqz v8, :cond_2

    .line 192
    .line 199
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "registeredModelClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    .end local v7    # "currentResourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    :cond_1
    move-object v8, v4

    move-object v0, v8

    .end local v0    # "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    return-object v0

    .line 196
    .restart local v0    # "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "registeredModelClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    :cond_2
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    move-object v1, p1

    .local v1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    move-object v9, p0

    monitor-enter v9

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    :try_start_0
    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->getCachedLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v5

    move-object v3, v5

    .line 127
    .local v3, "result":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TT;TY;>;"
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 131
    sget-object v5, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    const/4 v5, 0x0

    move-object v0, v5

    .line 146
    .end local v0    # "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    :goto_0
    monitor-exit v9

    return-object v0

    .line 134
    .restart local v0    # "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    :cond_0
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 138
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    :try_start_1
    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->getFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v5

    move-object v4, v5

    .line 139
    .local v4, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<TT;TY;>;"
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 140
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->context:Landroid/content/Context;

    move-object v7, v0

    invoke-interface {v5, v6, v7}, Lcom/bumptech/glide/load/model/ModelLoaderFactory;->build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v5

    move-object v3, v5

    .line 141
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 146
    :goto_1
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 144
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cacheNullLoader(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 126
    .end local v3    # "result":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TT;TY;>;"
    .end local v4    # "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<TT;TY;>;"
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    throw v0
.end method

.method public declared-synchronized buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    move-object v1, p1

    .local v1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    move-object v3, p3

    .local v3, "context":Landroid/content/Context;
    move-object v7, p0

    monitor-enter v7

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    :try_start_0
    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    monitor-exit v7

    return-object v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    throw v0
.end method

.method public declared-synchronized register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    move-object v1, p1

    .local v1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    move-object/from16 v3, p3

    .local v3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<TT;TY;>;"
    move-object v11, p0

    monitor-enter v11

    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 75
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    move-object v9, v1

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    move-object v4, v8

    .line 76
    .local v4, "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    move-object v8, v4

    if-nez v8, :cond_0

    .line 77
    new-instance v8, Ljava/util/HashMap;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v4, v8

    .line 78
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    move-object v9, v1

    move-object v10, v4

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 81
    :cond_0
    move-object v8, v4

    move-object v9, v2

    move-object v10, v3

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-object v5, v8

    .line 83
    .local v5, "previous":Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    move-object v8, v5

    if-eqz v8, :cond_1

    .line 86
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    move-object v7, v8

    .line 87
    .local v7, "factories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    move-object v8, v7

    move-object v9, v5

    invoke-interface {v8, v9}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_2

    .line 88
    const/4 v8, 0x0

    move-object v5, v8

    .line 94
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "factories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    :cond_1
    move-object v8, v5

    move-object v0, v8

    .end local v0    # "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    monitor-exit v11

    return-object v0

    .line 91
    .restart local v0    # "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "factories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    :cond_2
    goto :goto_0

    .line 73
    .end local v4    # "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    .end local v5    # "previous":Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "factories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    :catchall_0
    move-exception v0

    monitor-exit v11

    .end local v0    # "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    throw v0
.end method

.method public declared-synchronized unregister(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    move-object v1, p1

    .local v1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    move-object v7, p0

    monitor-enter v7

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 52
    const/4 v5, 0x0

    move-object v3, v5

    .line 53
    .local v3, "result":Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    move-object v4, v5

    .line 54
    .local v4, "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 55
    move-object v5, v4

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 57
    :cond_0
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    monitor-exit v7

    return-object v0

    .line 50
    .end local v3    # "result":Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .end local v4    # "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;>;"
    .restart local v0    # "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    throw v0
.end method
