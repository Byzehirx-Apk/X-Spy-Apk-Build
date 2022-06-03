.class Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "ReflectiveGenericLifecycleObserver.java"

# interfaces
.implements Landroidx/lifecycle/GenericLifecycleObserver;


# instance fields
.field private final mInfo:Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

.field private final mWrapped:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;
    move-object v1, p1

    .local v1, "wrapped":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    .line 31
    move-object v2, v0

    sget-object v3, Landroidx/lifecycle/ClassesInfoCache;->sInstance:Landroidx/lifecycle/ClassesInfoCache;

    move-object v4, v0

    iget-object v4, v4, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v3

    iput-object v3, v2, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->mInfo:Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    .line 32
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 7

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;
    move-object v1, p1

    .local v1, "source":Landroidx/lifecycle/LifecycleOwner;
    move-object v2, p2

    .local v2, "event":Landroidx/lifecycle/Lifecycle$Event;
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->mInfo:Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;->invokeCallbacks(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    .line 37
    return-void
.end method
