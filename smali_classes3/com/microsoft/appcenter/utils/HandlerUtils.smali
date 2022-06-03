.class public Lcom/microsoft/appcenter/utils/HandlerUtils;
.super Ljava/lang/Object;
.source "HandlerUtils.java"


# static fields
.field static final sMainHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 21
    new-instance v0, Landroid/os/Handler;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/microsoft/appcenter/utils/HandlerUtils;->sMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/HandlerUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/microsoft/appcenter/utils/HandlerUtils;->sMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Lcom/microsoft/appcenter/utils/HandlerUtils;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 30
    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    sget-object v1, Lcom/microsoft/appcenter/utils/HandlerUtils;->sMainHandler:Landroid/os/Handler;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    goto :goto_0
.end method
