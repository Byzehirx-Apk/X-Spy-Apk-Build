.class public Lcom/bumptech/glide/manager/RequestManagerRetriever;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field static final FRAGMENT_TAG:Ljava/lang/String; = "com.bumptech.glide.manager"

.field private static final ID_REMOVE_FRAGMENT_MANAGER:I = 0x1

.field private static final ID_REMOVE_SUPPORT_FRAGMENT_MANAGER:I = 0x2

.field private static final INSTANCE:Lcom/bumptech/glide/manager/RequestManagerRetriever;

.field private static final TAG:Ljava/lang/String; = "RMRetriever"


# instance fields
.field private volatile applicationManager:Lcom/bumptech/glide/RequestManager;

.field private final handler:Landroid/os/Handler;

.field final pendingRequestManagerFragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field final pendingSupportRequestManagerFragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;-><init>()V

    sput-object v0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->INSTANCE:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    .line 47
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    .line 62
    move-object v1, v0

    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, v1, Lcom/bumptech/glide/manager/RequestManagerRetriever;->handler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method private static assertNotDestroyed(Landroid/app/Activity;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "You cannot start a load for a destroyed activity"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_0
    return-void
.end method

.method public static get()Lcom/bumptech/glide/manager/RequestManagerRetriever;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->INSTANCE:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    return-object v0
.end method

.method private getApplicationManager(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 12

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/bumptech/glide/RequestManager;

    if-nez v4, :cond_1

    .line 68
    move-object v4, v0

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v2, v5

    monitor-enter v4

    .line 69
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/bumptech/glide/RequestManager;

    if-nez v4, :cond_0

    .line 73
    move-object v4, v0

    new-instance v5, Lcom/bumptech/glide/RequestManager;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/bumptech/glide/manager/ApplicationLifecycle;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lcom/bumptech/glide/manager/ApplicationLifecycle;-><init>()V

    new-instance v9, Lcom/bumptech/glide/manager/EmptyRequestManagerTreeNode;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Lcom/bumptech/glide/manager/EmptyRequestManagerTreeNode;-><init>()V

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/RequestManager;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)V

    iput-object v5, v4, Lcom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/bumptech/glide/RequestManager;

    .line 76
    :cond_0
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/bumptech/glide/RequestManager;

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    return-object v0

    .line 76
    .restart local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method


# virtual methods
.method fragmentGet(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/bumptech/glide/RequestManager;
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "fm":Landroid/app/FragmentManager;
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getRequestManagerFragment(Landroid/app/FragmentManager;)Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object v5

    move-object v3, v5

    .line 169
    .local v3, "current":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v5, v3

    invoke-virtual {v5}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getRequestManager()Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    move-object v4, v5

    .line 170
    .local v4, "requestManager":Lcom/bumptech/glide/RequestManager;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 171
    new-instance v5, Lcom/bumptech/glide/RequestManager;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v8}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v9}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/RequestManager;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)V

    move-object v4, v5

    .line 172
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/manager/RequestManagerFragment;->setRequestManager(Lcom/bumptech/glide/RequestManager;)V

    .line 174
    :cond_0
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    return-object v0
.end method

.method public get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_1

    .line 123
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    move-object v0, v3

    .line 127
    .end local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    :goto_0
    return-object v0

    .line 125
    .restart local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    :cond_1
    move-object v3, v1

    invoke-static {v3}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->assertNotDestroyed(Landroid/app/Activity;)V

    .line 126
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    move-object v2, v3

    .line 127
    .local v2, "fm":Landroid/app/FragmentManager;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->fragmentGet(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public get(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    move-object v1, p1

    .local v1, "fragment":Landroid/app/Fragment;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 141
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "You cannot start a load on a fragment before it is attached"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v3

    if-nez v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v3, v4, :cond_2

    .line 144
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    move-object v0, v3

    .line 147
    .end local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    :goto_0
    return-object v0

    .line 146
    .restart local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    move-object v2, v3

    .line 147
    .local v2, "fm":Landroid/app/FragmentManager;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->fragmentGet(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 6

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "You cannot start a load on a null Context"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnMainThread()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v1

    instance-of v2, v2, Landroid/app/Application;

    if-nez v2, :cond_3

    .line 86
    move-object v2, v1

    instance-of v2, v2, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_1

    .line 87
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    move-object v0, v2

    .line 95
    .end local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    :goto_0
    return-object v0

    .line 88
    .restart local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 89
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 90
    :cond_2
    move-object v2, v1

    instance-of v2, v2, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_3

    .line 91
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 95
    :cond_3
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getApplicationManager(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public get(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 7

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 110
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "You cannot start a load on a fragment before it is attached"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    move-object v0, v3

    .line 116
    .end local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    :goto_0
    return-object v0

    .line 115
    .restart local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    move-object v2, v3

    .line 116
    .local v2, "fm":Landroidx/fragment/app/FragmentManager;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->supportFragmentGet(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public get(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;
    .locals 6

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    move-object v1, p1

    .local v1, "activity":Landroidx/fragment/app/FragmentActivity;
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    move-object v0, v3

    .line 104
    .end local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    :goto_0
    return-object v0

    .line 102
    .restart local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->assertNotDestroyed(Landroid/app/Activity;)V

    .line 103
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    move-object v2, v3

    .line 104
    .local v2, "fm":Landroidx/fragment/app/FragmentManager;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->supportFragmentGet(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method getRequestManagerFragment(Landroid/app/FragmentManager;)Lcom/bumptech/glide/manager/RequestManagerFragment;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    move-object v1, p1

    .local v1, "fm":Landroid/app/FragmentManager;
    move-object v3, v1

    const-string/jumbo v4, "com.bumptech.glide.manager"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-object v2, v3

    .line 154
    .local v2, "current":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 155
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-object v2, v3

    .line 156
    move-object v3, v2

    if-nez v3, :cond_0

    .line 157
    new-instance v3, Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/bumptech/glide/manager/RequestManagerFragment;-><init>()V

    move-object v2, v3

    .line 158
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 159
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    move-object v4, v2

    const-string/jumbo v5, "com.bumptech.glide.manager"

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v3

    .line 160
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/RequestManagerRetriever;->handler:Landroid/os/Handler;

    const/4 v4, 0x1

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 163
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    return-object v0
.end method

.method getSupportRequestManagerFragment(Landroidx/fragment/app/FragmentManager;)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    move-object v1, p1

    .local v1, "fm":Landroidx/fragment/app/FragmentManager;
    move-object v3, v1

    const-string/jumbo v4, "com.bumptech.glide.manager"

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-object v2, v3

    .line 182
    .local v2, "current":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 183
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-object v2, v3

    .line 184
    move-object v3, v2

    if-nez v3, :cond_0

    .line 185
    new-instance v3, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;-><init>()V

    move-object v2, v3

    .line 186
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 187
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    move-object v4, v2

    const-string/jumbo v5, "com.bumptech.glide.manager"

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v3

    .line 188
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/RequestManagerRetriever;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 191
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    move-object v1, p1

    .local v1, "message":Landroid/os/Message;
    const/4 v7, 0x1

    move v2, v7

    .line 207
    .local v2, "handled":Z
    const/4 v7, 0x0

    move-object v3, v7

    .line 208
    .local v3, "removed":Ljava/lang/Object;
    const/4 v7, 0x0

    move-object v4, v7

    .line 209
    .local v4, "key":Ljava/lang/Object;
    move-object v7, v1

    iget v7, v7, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 221
    const/4 v7, 0x0

    move v2, v7

    .line 223
    .end local v3    # "removed":Ljava/lang/Object;
    .end local v4    # "key":Ljava/lang/Object;
    :goto_0
    move v7, v2

    if-eqz v7, :cond_0

    move-object v7, v3

    if-nez v7, :cond_0

    const-string/jumbo v7, "RMRetriever"

    const/4 v8, 0x5

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 224
    const-string/jumbo v7, "RMRetriever"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 226
    :cond_0
    move v7, v2

    move v0, v7

    .end local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    return v0

    .line 211
    .restart local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    .restart local v3    # "removed":Ljava/lang/Object;
    .restart local v4    # "key":Ljava/lang/Object;
    :pswitch_0
    move-object v7, v1

    iget-object v7, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/app/FragmentManager;

    move-object v5, v7

    .line 212
    .local v5, "fm":Landroid/app/FragmentManager;
    move-object v7, v5

    move-object v4, v7

    .line 213
    .local v4, "key":Landroid/app/FragmentManager;
    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    move-object v8, v5

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 214
    goto :goto_0

    .line 216
    .end local v5    # "fm":Landroid/app/FragmentManager;
    .local v4, "key":Ljava/lang/Object;
    :pswitch_1
    move-object v7, v1

    iget-object v7, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroidx/fragment/app/FragmentManager;

    move-object v6, v7

    .line 217
    .local v6, "supportFm":Landroidx/fragment/app/FragmentManager;
    move-object v7, v6

    move-object v4, v7

    .line 218
    .local v4, "key":Landroidx/fragment/app/FragmentManager;
    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 219
    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method supportFragmentGet(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)Lcom/bumptech/glide/RequestManager;
    .locals 11

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "fm":Landroidx/fragment/app/FragmentManager;
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getSupportRequestManagerFragment(Landroidx/fragment/app/FragmentManager;)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-result-object v5

    move-object v3, v5

    .line 196
    .local v3, "current":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v5, v3

    invoke-virtual {v5}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getRequestManager()Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    move-object v4, v5

    .line 197
    .local v4, "requestManager":Lcom/bumptech/glide/RequestManager;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 198
    new-instance v5, Lcom/bumptech/glide/RequestManager;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v8}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v9}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/bumptech/glide/RequestManager;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)V

    move-object v4, v5

    .line 199
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->setRequestManager(Lcom/bumptech/glide/RequestManager;)V

    .line 201
    :cond_0
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerRetriever;
    return-object v0
.end method
