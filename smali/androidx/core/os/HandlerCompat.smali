.class public final Landroidx/core/os/HandlerCompat;
.super Ljava/lang/Object;
.source "HandlerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/HandlerCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 13
    .param p0    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    move-object v1, p0

    .local v1, "handler":Landroid/os/Handler;
    move-object v2, p1

    .local v2, "r":Ljava/lang/Runnable;
    move-object v3, p2

    .local v3, "token":Ljava/lang/Object;
    move-wide/from16 v4, p3

    .local v4, "delayMillis":J
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_0

    .line 56
    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-wide v10, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result v7

    move v1, v7

    .line 61
    .end local v1    # "handler":Landroid/os/Handler;
    :goto_0
    return v1

    .line 59
    .restart local v1    # "handler":Landroid/os/Handler;
    :cond_0
    move-object v7, v1

    move-object v8, v2

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v7

    move-object v6, v7

    .line 60
    .local v6, "message":Landroid/os/Message;
    move-object v7, v6

    move-object v8, v3

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    move-object v7, v1

    move-object v8, v6

    move-wide v9, v4

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v7

    move v1, v7

    goto :goto_0
.end method
