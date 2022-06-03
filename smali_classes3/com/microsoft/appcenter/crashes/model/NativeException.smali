.class public Lcom/microsoft/appcenter/crashes/model/NativeException;
.super Ljava/lang/RuntimeException;
.source "NativeException.java"


# static fields
.field private static final CRASH_MESSAGE:Ljava/lang/String; = "Native exception read from a minidump file"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/model/NativeException;
    move-object v1, v0

    const-string/jumbo v2, "Native exception read from a minidump file"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method
