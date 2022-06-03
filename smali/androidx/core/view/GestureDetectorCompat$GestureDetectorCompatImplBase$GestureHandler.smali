.class Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
.super Landroid/os/Handler;
.source "GestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;


# direct methods
.method constructor <init>(Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .line 104
    move-object v2, v0

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 105
    return-void
.end method

.method constructor <init>(Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Landroid/os/Handler;)V
    .locals 5

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
    move-object v1, p1

    move-object v2, p2

    .local v2, "handler":Landroid/os/Handler;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .line 108
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 109
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
    move-object v1, p1

    .local v1, "msg":Landroid/os/Message;
    move-object v2, v1

    iget v2, v2, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 134
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v2, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v3, v3, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v3}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 116
    .line 136
    :cond_0
    :goto_0
    return-void

    .line 119
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    invoke-virtual {v2}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->dispatchLongPress()V

    .line 120
    goto :goto_0

    .line 124
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v2, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v2, :cond_0

    .line 125
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-boolean v2, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    if-nez v2, :cond_1

    .line 126
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v2, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object v3, v3, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v3}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 128
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
