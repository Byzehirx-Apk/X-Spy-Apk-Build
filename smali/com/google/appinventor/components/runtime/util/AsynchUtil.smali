.class public Lcom/google/appinventor/components/runtime/util/AsynchUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 9

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-direct {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    move-object v0, v3

    .line 49
    new-instance v3, Ljava/lang/Thread;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 51
    return-void
.end method

.method public static runAsynchronously(Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 24
    move-object v0, p0

    new-instance v1, Ljava/lang/Thread;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 25
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 26
    return-void
.end method
