.class Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;
.super Ljava/lang/Object;
.source "StreamFileDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorSourceDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Ljava/io/InputStream;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$1;)V
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;
    move-object v1, p1

    .local v1, "source":Ljava/io/InputStream;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    new-instance v4, Ljava/lang/Error;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "You cannot decode a File from an InputStream by default, try either #diskCacheStratey(DiskCacheStrategy.SOURCE) to avoid this call or #decoder(ResourceDecoder) to replace this Decoder"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public bridge synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/io/InputStream;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;->decode(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;
    const-string/jumbo v1, ""

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;
    return-object v0
.end method
