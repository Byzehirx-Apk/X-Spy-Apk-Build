.class Lcom/bumptech/glide/manager/ApplicationLifecycle;
.super Ljava/lang/Object;
.source "ApplicationLifecycle.java"

# interfaces
.implements Lcom/bumptech/glide/manager/Lifecycle;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/ApplicationLifecycle;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V
    .locals 3

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/ApplicationLifecycle;
    move-object v1, p1

    .local v1, "listener":Lcom/bumptech/glide/manager/LifecycleListener;
    move-object v2, v1

    invoke-interface {v2}, Lcom/bumptech/glide/manager/LifecycleListener;->onStart()V

    .line 16
    return-void
.end method
