.class public Lcom/bumptech/glide/load/resource/bytes/BytesResource;
.super Ljava/lang/Object;
.source "BytesResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 6

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bytes/BytesResource;
    move-object v1, p1

    .local v1, "bytes":[B
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 12
    move-object v2, v1

    if-nez v2, :cond_0

    .line 13
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Bytes must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/bytes/BytesResource;->bytes:[B

    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bytes/BytesResource;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bytes/BytesResource;->get()[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bytes/BytesResource;
    return-object v0
.end method

.method public get()[B
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bytes/BytesResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bytes/BytesResource;->bytes:[B

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bytes/BytesResource;
    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/bytes/BytesResource;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/bytes/BytesResource;->bytes:[B

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/bytes/BytesResource;
    return v0
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
