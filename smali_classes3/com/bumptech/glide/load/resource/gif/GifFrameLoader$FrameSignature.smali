.class Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrameSignature"
.end annotation


# instance fields
.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;
    move-object v1, v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;-><init>(Ljava/util/UUID;)V

    .line 193
    return-void
.end method

.method constructor <init>(Ljava/util/UUID;)V
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;
    move-object v1, p1

    .local v1, "uuid":Ljava/util/UUID;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 197
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;->uuid:Ljava/util/UUID;

    .line 198
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;

    if-eqz v3, :cond_0

    .line 203
    move-object v3, v1

    check-cast v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;

    move-object v2, v3

    .line 204
    .local v2, "other":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;
    move-object v3, v2

    iget-object v3, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;->uuid:Ljava/util/UUID;

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    .line 206
    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;
    .end local v2    # "other":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;->uuid:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;
    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature;
    move-object v1, p1

    .local v1, "messageDigest":Ljava/security/MessageDigest;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Not implemented"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
