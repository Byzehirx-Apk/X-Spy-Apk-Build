.class public abstract Lcom/google/appinventor/components/runtime/errors/RuntimeError;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 22
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static convertToRuntimeError(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/errors/RuntimeError;
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/errors/RuntimeError;

    if-eqz v1, :cond_0

    .line 42
    move-object v1, v0

    check-cast v1, Lcom/google/appinventor/components/runtime/errors/RuntimeError;

    move-object v0, v1

    .line 53
    :goto_0
    return-object v0

    .line 46
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    if-eqz v1, :cond_1

    .line 47
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/ArrayIndexOutOfBoundsError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/errors/ArrayIndexOutOfBoundsError;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 49
    :cond_1
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_2

    .line 50
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 52
    :cond_2
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_3

    .line 53
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/UninitializedInstanceError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/errors/UninitializedInstanceError;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 57
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
