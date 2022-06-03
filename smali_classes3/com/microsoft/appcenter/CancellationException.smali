.class public Lcom/microsoft/appcenter/CancellationException;
.super Ljava/lang/Exception;
.source "CancellationException.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/CancellationException;
    move-object v1, v0

    const-string/jumbo v2, "Request cancelled because Channel is disabled."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method
