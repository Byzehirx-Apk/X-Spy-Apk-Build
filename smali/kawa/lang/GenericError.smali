.class public Lkawa/lang/GenericError;
.super Ljava/lang/RuntimeException;
.source "GenericError.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lkawa/lang/GenericError;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
