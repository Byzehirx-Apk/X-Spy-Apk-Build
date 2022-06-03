.class public Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private fAlnFrzRyM2sCUVmNXgAumx383He1buRJXamXMT9T0hNFh1WxfF7xQU1M3W9TIGM:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 20
    move-object v1, v0

    const/16 v2, 0x45d

    iput v2, v1, Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;->fAlnFrzRyM2sCUVmNXgAumx383He1buRJXamXMT9T0hNFh1WxfF7xQU1M3W9TIGM:I

    .line 21
    return-void
.end method
