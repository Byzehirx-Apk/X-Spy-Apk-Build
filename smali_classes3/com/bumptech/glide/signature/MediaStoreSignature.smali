.class public Lcom/bumptech/glide/signature/MediaStoreSignature;
.super Ljava/lang/Object;
.source "MediaStoreSignature.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final dateModified:J

.field private final mimeType:Ljava/lang/String;

.field private final orientation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 8

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/signature/MediaStoreSignature;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "dateModified":J
    move v4, p4

    .local v4, "orientation":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 31
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    .line 32
    move-object v5, v0

    move-wide v6, v2

    iput-wide v6, v5, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    .line 33
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 38
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/signature/MediaStoreSignature;
    move-object v2, p1

    .local v2, "o":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    if-ne v4, v5, :cond_0

    .line 39
    const/4 v4, 0x1

    move v1, v4

    .line 57
    .end local v1    # "this":Lcom/bumptech/glide/signature/MediaStoreSignature;
    :goto_0
    return v1

    .line 41
    .restart local v1    # "this":Lcom/bumptech/glide/signature/MediaStoreSignature;
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 42
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 45
    :cond_2
    move-object v4, v2

    check-cast v4, Lcom/bumptech/glide/signature/MediaStoreSignature;

    move-object v3, v4

    .line 47
    .local v3, "that":Lcom/bumptech/glide/signature/MediaStoreSignature;
    move-object v4, v1

    iget-wide v4, v4, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    move-object v6, v3

    iget-wide v6, v6, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 48
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 50
    :cond_3
    move-object v4, v1

    iget v4, v4, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    move-object v5, v3

    iget v5, v5, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    if-eq v4, v5, :cond_4

    .line 51
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 53
    :cond_4
    move-object v4, v1

    iget-object v4, v4, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    if-eqz v4, :cond_6

    move-object v4, v1

    iget-object v4, v4, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    move-object v5, v3

    iget-object v5, v5, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 54
    :cond_5
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 53
    :cond_6
    move-object v4, v3

    iget-object v4, v4, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 57
    :cond_7
    const/4 v4, 0x1

    move v1, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 62
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/signature/MediaStoreSignature;
    move-object v3, v1

    iget-object v3, v3, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v1

    iget-object v3, v3, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    move v2, v3

    .line 63
    .local v2, "result":I
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    move-object v6, v1

    iget-wide v6, v6, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 64
    const/16 v3, 0x1f

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    add-int/2addr v3, v4

    move v2, v3

    .line 65
    move v3, v2

    move v1, v3

    .end local v1    # "this":Lcom/bumptech/glide/signature/MediaStoreSignature;
    return v1

    .line 62
    .end local v2    # "result":I
    .restart local v1    # "this":Lcom/bumptech/glide/signature/MediaStoreSignature;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/signature/MediaStoreSignature;
    move-object v1, p1

    .local v1, "messageDigest":Ljava/security/MessageDigest;
    const/16 v3, 0xc

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v4, v0

    iget-wide v4, v4, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    move-object v2, v3

    .line 74
    .local v2, "data":[B
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 75
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 76
    return-void
.end method
