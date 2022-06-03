.class public Landroidx/core/os/OperationCanceledException;
.super Ljava/lang/RuntimeException;
.source "OperationCanceledException.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/OperationCanceledException;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/core/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/OperationCanceledException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    :goto_0
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void

    .line 29
    :cond_0
    const-string/jumbo v3, "The operation has been canceled."

    goto :goto_0
.end method
