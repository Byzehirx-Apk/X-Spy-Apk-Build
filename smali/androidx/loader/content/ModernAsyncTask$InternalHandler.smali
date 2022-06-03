.class Landroidx/loader/content/ModernAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask$InternalHandler;
    move-object v1, v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 498
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/ModernAsyncTask$InternalHandler;
    move-object v1, p1

    .local v1, "msg":Landroid/os/Message;
    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;

    move-object v2, v3

    .line 504
    .local v2, "result":Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;
    move-object v3, v1

    iget v3, v3, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 513
    :goto_0
    return-void

    .line 507
    :pswitch_0
    move-object v3, v2

    iget-object v3, v3, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroidx/loader/content/ModernAsyncTask;

    move-object v4, v2

    iget-object v4, v4, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroidx/loader/content/ModernAsyncTask;->finish(Ljava/lang/Object;)V

    .line 508
    goto :goto_0

    .line 510
    :pswitch_1
    move-object v3, v2

    iget-object v3, v3, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroidx/loader/content/ModernAsyncTask;

    move-object v4, v2

    iget-object v4, v4, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroidx/loader/content/ModernAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
