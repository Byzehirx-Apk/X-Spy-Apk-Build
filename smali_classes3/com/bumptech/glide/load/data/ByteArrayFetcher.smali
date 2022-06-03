.class public Lcom/bumptech/glide/load/data/ByteArrayFetcher;
.super Ljava/lang/Object;
.source "ByteArrayFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final bytes:[B

.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 5

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/ByteArrayFetcher;
    move-object v1, p1

    .local v1, "bytes":[B
    move-object v2, p2

    .local v2, "id":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 17
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/data/ByteArrayFetcher;->bytes:[B

    .line 18
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/data/ByteArrayFetcher;->id:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/ByteArrayFetcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/data/ByteArrayFetcher;->id:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/data/ByteArrayFetcher;
    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/ByteArrayFetcher;
    move-object v1, p1

    .local v1, "priority":Lcom/bumptech/glide/Priority;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/data/ByteArrayFetcher;->bytes:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/data/ByteArrayFetcher;
    return-object v0
.end method

.method public bridge synthetic loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/data/ByteArrayFetcher;
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/Priority;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/data/ByteArrayFetcher;->loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/data/ByteArrayFetcher;
    return-object v0
.end method
