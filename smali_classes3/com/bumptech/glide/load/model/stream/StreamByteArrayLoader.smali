.class public Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;
.super Ljava/lang/Object;
.source "StreamByteArrayLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/stream/StreamModelLoader",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;
    move-object v1, p1

    .local v1, "id":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;->id:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 8

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    check-cast v5, [B

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;->getResourceFetcher([BII)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;
    return-object v0
.end method

.method public getResourceFetcher([BII)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;
    move-object v1, p1

    .local v1, "model":[B
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    new-instance v4, Lcom/bumptech/glide/load/data/ByteArrayFetcher;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;->id:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/load/data/ByteArrayFetcher;-><init>([BLjava/lang/String;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;
    return-object v0
.end method
