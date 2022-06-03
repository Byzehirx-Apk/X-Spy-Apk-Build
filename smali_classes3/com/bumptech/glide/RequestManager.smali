.class public Lcom/bumptech/glide/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/manager/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;,
        Lcom/bumptech/glide/RequestManager$OptionsApplier;,
        Lcom/bumptech/glide/RequestManager$GenericModelRequest;,
        Lcom/bumptech/glide/RequestManager$ImageModelRequest;,
        Lcom/bumptech/glide/RequestManager$VideoModelRequest;,
        Lcom/bumptech/glide/RequestManager$DefaultOptions;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final glide:Lcom/bumptech/glide/Glide;

.field private final lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

.field private options:Lcom/bumptech/glide/RequestManager$DefaultOptions;

.field private final optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

.field private final requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

.field private final treeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)V
    .locals 12

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "lifecycle":Lcom/bumptech/glide/manager/Lifecycle;
    move-object v3, p3

    .local v3, "treeNode":Lcom/bumptech/glide/manager/RequestManagerTreeNode;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    new-instance v8, Lcom/bumptech/glide/manager/RequestTracker;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lcom/bumptech/glide/manager/RequestTracker;-><init>()V

    new-instance v9, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;-><init>()V

    invoke-direct/range {v4 .. v9}, Lcom/bumptech/glide/RequestManager;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;)V
    .locals 13

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "lifecycle":Lcom/bumptech/glide/manager/Lifecycle;
    move-object/from16 v3, p3

    .local v3, "treeNode":Lcom/bumptech/glide/manager/RequestManagerTreeNode;
    move-object/from16 v4, p4

    .local v4, "requestTracker":Lcom/bumptech/glide/manager/RequestTracker;
    move-object/from16 v5, p5

    .local v5, "factory":Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 58
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, v7, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    .line 59
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    .line 60
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/bumptech/glide/RequestManager;->treeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 61
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 62
    move-object v7, v0

    move-object v8, v1

    invoke-static {v8}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v8

    iput-object v8, v7, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    .line 63
    move-object v7, v0

    new-instance v8, Lcom/bumptech/glide/RequestManager$OptionsApplier;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/bumptech/glide/RequestManager$OptionsApplier;-><init>(Lcom/bumptech/glide/RequestManager;)V

    iput-object v8, v7, Lcom/bumptech/glide/RequestManager;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    .line 65
    move-object v7, v5

    move-object v8, v1

    new-instance v9, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v4

    invoke-direct {v10, v11}, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;-><init>(Lcom/bumptech/glide/manager/RequestTracker;)V

    invoke-virtual {v7, v8, v9}, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;->build(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;

    move-result-object v7

    move-object v6, v7

    .line 71
    .local v6, "connectivityMonitor":Lcom/bumptech/glide/manager/ConnectivityMonitor;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 72
    new-instance v7, Landroid/os/Handler;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/bumptech/glide/RequestManager$1;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Lcom/bumptech/glide/RequestManager$1;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/manager/Lifecycle;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v7

    .line 81
    :goto_0
    move-object v7, v2

    move-object v8, v6

    invoke-interface {v7, v8}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 82
    return-void

    .line 79
    :cond_0
    move-object v7, v2

    move-object v8, v0

    invoke-interface {v7, v8}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lcom/bumptech/glide/RequestManager;->getSafeClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljava/lang/Object;
    return-object v0
.end method

.method static synthetic access$100(Lcom/bumptech/glide/RequestManager;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/RequestManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method static synthetic access$200(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/Glide;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/RequestManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method static synthetic access$300(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/RequestTracker;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/RequestManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method static synthetic access$400(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/Lifecycle;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/RequestManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method static synthetic access$500(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$OptionsApplier;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/RequestManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/RequestManager;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method static synthetic access$800(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$DefaultOptions;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/RequestManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/RequestManager;->options:Lcom/bumptech/glide/RequestManager$DefaultOptions;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method private static getSafeClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "model":Ljava/lang/Object;, "TT;"
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "model":Ljava/lang/Object;, "TT;"
    return-object v0

    .restart local v0    # "model":Ljava/lang/Object;, "TT;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 625
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object/from16 v1, p1

    .local v1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/bumptech/glide/Glide;->buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v4

    move-object v2, v4

    .line 626
    .local v2, "streamModelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TT;Ljava/io/InputStream;>;"
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/bumptech/glide/Glide;->buildFileDescriptorModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v4

    move-object v3, v4

    .line 628
    .local v3, "fileDescriptorModelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TT;Landroid/os/ParcelFileDescriptor;>;"
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v2

    if-nez v4, :cond_0

    move-object v4, v3

    if-nez v4, :cond_0

    .line 629
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". You must provide a Model of a type for"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " which there is a registered ModelLoader, if you are using a custom model, you must first call"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 634
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/RequestManager;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v5, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    move-object v11, v0

    iget-object v11, v11, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    move-object v12, v0

    iget-object v12, v12, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    move-object v13, v0

    iget-object v13, v13, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/RequestManager;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    invoke-direct/range {v6 .. v14}, Lcom/bumptech/glide/DrawableTypeRequest;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method


# virtual methods
.method public from(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, p1

    .local v1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public fromBytes()Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 576
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, v0

    const-class v2, [B

    invoke-direct {v1, v2}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/signature/StringSignature;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bumptech/glide/signature/StringSignature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public fromFile()Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, v0

    const-class v2, Ljava/io/File;

    invoke-direct {v1, v2}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public fromMediaStore()Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    const-class v4, Landroid/net/Uri;

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/bumptech/glide/Glide;->buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v4

    move-object v1, v4

    .line 414
    .local v1, "genericStreamLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;Ljava/io/InputStream;>;"
    new-instance v4, Lcom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V

    move-object v2, v4

    .line 415
    .local v2, "mediaStoreLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const-class v4, Landroid/net/Uri;

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/bumptech/glide/Glide;->buildFileDescriptorModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v4

    move-object v3, v4

    .line 418
    .local v3, "fileDescriptorModelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/RequestManager;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v5, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const-class v7, Landroid/net/Uri;

    move-object v8, v2

    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    move-object v11, v0

    iget-object v11, v11, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    move-object v12, v0

    iget-object v12, v12, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    move-object v13, v0

    iget-object v13, v13, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    move-object v14, v0

    iget-object v14, v14, Lcom/bumptech/glide/RequestManager;->optionsApplier:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    invoke-direct/range {v6 .. v14}, Lcom/bumptech/glide/DrawableTypeRequest;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public fromResource()Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, v0

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->obtain(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public fromString()Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, v0

    const-class v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public fromUri()Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, v0

    const-class v2, Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public fromUrl()Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, v0

    const-class v2, Ljava/net/URL;

    invoke-direct {v1, v2}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 137
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/RequestTracker;->isPaused()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return v0
.end method

.method public load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->fromUri()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public load(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->fromFile()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, p1

    .local v1, "resourceId":Ljava/lang/Integer;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->fromResource()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, p1

    .local v1, "model":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/bumptech/glide/RequestManager;->getSafeClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->fromString()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public load(Ljava/net/URL;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, p1

    .local v1, "url":Ljava/net/URL;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->fromUrl()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public load([B)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, p1

    .local v1, "model":[B
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->fromBytes()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public load([BLjava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<[B>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, p1

    .local v1, "model":[B
    move-object v2, p2

    .local v2, "id":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    new-instance v4, Lcom/bumptech/glide/signature/StringSignature;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/bumptech/glide/signature/StringSignature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public loadFromMediaStore(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->fromMediaStore()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public loadFromMediaStore(Landroid/net/Uri;Ljava/lang/String;JI)Lcom/bumptech/glide/DrawableTypeRequest;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "JI)",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object/from16 v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move-object/from16 v2, p2

    .local v2, "mimeType":Ljava/lang/String;
    move-wide/from16 v3, p3

    .local v3, "dateModified":J
    move/from16 v5, p5

    .local v5, "orientation":I
    new-instance v7, Lcom/bumptech/glide/signature/MediaStoreSignature;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v2

    move-wide v10, v3

    move v12, v5

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/bumptech/glide/signature/MediaStoreSignature;-><init>(Ljava/lang/String;JI)V

    move-object v6, v7

    .line 369
    .local v6, "signature":Lcom/bumptech/glide/load/Key;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/RequestManager;->loadFromMediaStore(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v7

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/DrawableTypeRequest;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/DrawableTypeRequest;

    move-object v0, v7

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/RequestTracker;->clearRequests()V

    .line 222
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 96
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V

    .line 204
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->pauseRequests()V

    .line 213
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move v1, p1

    .local v1, "level":I
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/Glide;->trimMemory(I)V

    .line 89
    return-void
.end method

.method public pauseRequests()V
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 148
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/RequestTracker;->pauseRequests()V

    .line 149
    return-void
.end method

.method public pauseRequestsRecursive()V
    .locals 4

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 166
    move-object v3, v0

    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->pauseRequests()V

    .line 167
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/RequestManager;->treeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    invoke-interface {v3}, Lcom/bumptech/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestManager;

    move-object v2, v3

    .line 168
    .local v2, "requestManager":Lcom/bumptech/glide/RequestManager;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->pauseRequests()V

    .line 169
    goto :goto_0

    .line 170
    .end local v2    # "requestManager":Lcom/bumptech/glide/RequestManager;
    :cond_0
    return-void
.end method

.method public resumeRequests()V
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 180
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/RequestTracker;->resumeRequests()V

    .line 181
    return-void
.end method

.method public resumeRequestsRecursive()V
    .locals 4

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 190
    move-object v3, v0

    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V

    .line 191
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/RequestManager;->treeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    invoke-interface {v3}, Lcom/bumptech/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestManager;

    move-object v2, v3

    .line 192
    .local v2, "requestManager":Lcom/bumptech/glide/RequestManager;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V

    .line 193
    goto :goto_0

    .line 194
    .end local v2    # "requestManager":Lcom/bumptech/glide/RequestManager;
    :cond_0
    return-void
.end method

.method public setDefaultOptions(Lcom/bumptech/glide/RequestManager$DefaultOptions;)V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, p1

    .local v1, "options":Lcom/bumptech/glide/RequestManager$DefaultOptions;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/RequestManager;->options:Lcom/bumptech/glide/RequestManager$DefaultOptions;

    .line 127
    return-void
.end method

.method public using(Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)Lcom/bumptech/glide/RequestManager$GenericModelRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/RequestManager$GenericModelRequest",
            "<TA;TT;>;"
        }
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, p1

    .local v1, "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    move-object v2, p2

    .local v2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v3, Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/bumptech/glide/RequestManager$GenericModelRequest;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public using(Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;)Lcom/bumptech/glide/RequestManager$ImageModelRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;",
            ")",
            "Lcom/bumptech/glide/RequestManager$ImageModelRequest",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, p1

    .local v1, "modelLoader":Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;
    new-instance v2, Lcom/bumptech/glide/RequestManager$ImageModelRequest;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/RequestManager$ImageModelRequest;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public using(Lcom/bumptech/glide/load/model/stream/StreamModelLoader;)Lcom/bumptech/glide/RequestManager$ImageModelRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/model/stream/StreamModelLoader",
            "<TT;>;)",
            "Lcom/bumptech/glide/RequestManager$ImageModelRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, p1

    .local v1, "modelLoader":Lcom/bumptech/glide/load/model/stream/StreamModelLoader;, "Lcom/bumptech/glide/load/model/stream/StreamModelLoader<TT;>;"
    new-instance v2, Lcom/bumptech/glide/RequestManager$ImageModelRequest;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/RequestManager$ImageModelRequest;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method

.method public using(Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader;)Lcom/bumptech/glide/RequestManager$VideoModelRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader",
            "<TT;>;)",
            "Lcom/bumptech/glide/RequestManager$VideoModelRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/RequestManager;
    move-object v1, p1

    .local v1, "modelLoader":Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader;, "Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader<TT;>;"
    new-instance v2, Lcom/bumptech/glide/RequestManager$VideoModelRequest;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/RequestManager$VideoModelRequest;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/RequestManager;
    return-object v0
.end method
