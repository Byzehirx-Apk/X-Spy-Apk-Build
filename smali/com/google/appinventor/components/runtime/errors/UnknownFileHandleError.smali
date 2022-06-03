.class public Lcom/google/appinventor/components/runtime/errors/UnknownFileHandleError;
.super Lcom/google/appinventor/components/runtime/errors/RuntimeError;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/errors/RuntimeError;-><init>()V

    return-void
.end method
