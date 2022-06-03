.class public Lcom/bumptech/glide/load/model/StreamEncoder;
.super Ljava/lang/Object;
.source "StreamEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Encoder",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamEncoder"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/StreamEncoder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 12

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/StreamEncoder;
    move-object v1, p1

    .local v1, "data":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "os":Ljava/io/OutputStream;
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v7

    move-object v3, v7

    .line 23
    .local v3, "buffer":[B
    :goto_0
    move-object v7, v1

    move-object v8, v3

    :try_start_0
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v11, v7

    move v7, v11

    move v8, v11

    move v4, v8

    .local v4, "read":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 24
    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    move v10, v4

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 26
    :cond_0
    const/4 v7, 0x1

    move v5, v7

    .line 33
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    move-result v7

    move v7, v5

    move v0, v7

    .end local v0    # "this":Lcom/bumptech/glide/load/model/StreamEncoder;
    .end local v4    # "read":I
    :goto_1
    return v0

    .line 27
    .restart local v0    # "this":Lcom/bumptech/glide/load/model/StreamEncoder;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 28
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v7, "StreamEncoder"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 29
    const-string/jumbo v7, "StreamEncoder"

    const-string/jumbo v8, "Failed to encode data onto the OutputStream"

    move-object v9, v4

    invoke-static {v7, v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 31
    :cond_1
    const/4 v7, 0x0

    move v5, v7

    .line 33
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    move-result v7

    move v7, v5

    move v0, v7

    goto :goto_1

    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    move-object v6, v7

    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    move-result v7

    move-object v7, v6

    throw v7
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 6

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/StreamEncoder;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Ljava/io/OutputStream;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/io/InputStream;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/bumptech/glide/load/model/StreamEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/load/model/StreamEncoder;
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/model/StreamEncoder;
    const-string/jumbo v1, ""

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/model/StreamEncoder;
    return-object v0
.end method
