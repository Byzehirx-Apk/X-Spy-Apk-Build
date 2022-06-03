.class public Lkawa/Version;
.super Ljava/lang/Object;
.source "Version.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3
    move-object v0, p0

    .local v0, "this":Lkawa/Version;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    const-string/jumbo v0, "1.11"

    return-object v0
.end method
