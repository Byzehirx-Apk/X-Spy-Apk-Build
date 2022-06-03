.class public Lcom/microsoft/appcenter/utils/ShutdownHelper;
.super Ljava/lang/Object;
.source "ShutdownHelper.java"


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/ShutdownHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static shutdown(I)V
    .locals 2

    .prologue
    .line 22
    move v0, p0

    .local v0, "status":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 23
    move v1, v0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 24
    return-void
.end method
