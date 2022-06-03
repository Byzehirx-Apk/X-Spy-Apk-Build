.class Lcom/microsoft/appcenter/UncaughtExceptionHandler$1;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/UncaughtExceptionHandler;Ljava/util/concurrent/Semaphore;)V
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/UncaughtExceptionHandler$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/UncaughtExceptionHandler;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/UncaughtExceptionHandler$1;->this$0:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/UncaughtExceptionHandler$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/UncaughtExceptionHandler$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/UncaughtExceptionHandler$1;->this$0:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    invoke-static {v1}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->access$000(Lcom/microsoft/appcenter/UncaughtExceptionHandler;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/appcenter/channel/Channel;->shutdown()V

    .line 65
    const-string/jumbo v1, "AppCenter"

    const-string/jumbo v2, "Channel completed shutdown."

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/UncaughtExceptionHandler$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 67
    return-void
.end method
