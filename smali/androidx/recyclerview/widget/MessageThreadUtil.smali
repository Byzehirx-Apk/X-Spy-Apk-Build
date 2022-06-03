.class Landroidx/recyclerview/widget/MessageThreadUtil;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;,
        Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ThreadUtil",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil;, "Landroidx/recyclerview/widget/MessageThreadUtil<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 231
    return-void
.end method


# virtual methods
.method public getBackgroundProxy(Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback",
            "<TT;>;)",
            "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil;, "Landroidx/recyclerview/widget/MessageThreadUtil<TT;>;"
    move-object v1, p1

    .local v1, "callback":Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;, "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<TT;>;"
    new-instance v2, Landroidx/recyclerview/widget/MessageThreadUtil$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/MessageThreadUtil$2;-><init>(Landroidx/recyclerview/widget/MessageThreadUtil;Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/MessageThreadUtil;, "Landroidx/recyclerview/widget/MessageThreadUtil<TT;>;"
    return-object v0
.end method

.method public getMainThreadProxy(Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback",
            "<TT;>;)",
            "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/MessageThreadUtil;, "Landroidx/recyclerview/widget/MessageThreadUtil<TT;>;"
    move-object v1, p1

    .local v1, "callback":Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;, "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<TT;>;"
    new-instance v2, Landroidx/recyclerview/widget/MessageThreadUtil$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/MessageThreadUtil$1;-><init>(Landroidx/recyclerview/widget/MessageThreadUtil;Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/MessageThreadUtil;, "Landroidx/recyclerview/widget/MessageThreadUtil<TT;>;"
    return-object v0
.end method
