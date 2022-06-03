.class public Lcom/bumptech/glide/load/engine/ErrorWrappingGlideException;
.super Ljava/lang/Exception;
.source "ErrorWrappingGlideException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Error;)V
    .locals 6

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/ErrorWrappingGlideException;
    move-object v1, p1

    .local v1, "error":Ljava/lang/Error;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 9
    move-object v2, v1

    if-nez v2, :cond_0

    .line 10
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "The causing error must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Error;
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/ErrorWrappingGlideException;
    move-object v1, v0

    invoke-super {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Error;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/ErrorWrappingGlideException;
    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/ErrorWrappingGlideException;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/ErrorWrappingGlideException;->getCause()Ljava/lang/Error;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/ErrorWrappingGlideException;
    return-object v0
.end method
