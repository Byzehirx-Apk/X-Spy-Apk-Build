.class Lcom/bumptech/glide/load/engine/OriginalKey;
.super Ljava/lang/Object;
.source "OriginalKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final id:Ljava/lang/String;

.field private final signature:Lcom/bumptech/glide/load/Key;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;)V
    .locals 5

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/OriginalKey;
    move-object v1, p1

    .local v1, "id":Ljava/lang/String;
    move-object v2, p2

    .local v2, "signature":Lcom/bumptech/glide/load/Key;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 17
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    .line 18
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/OriginalKey;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 24
    const/4 v3, 0x1

    move v0, v3

    .line 39
    .end local v0    # "this":Lcom/bumptech/glide/load/engine/OriginalKey;
    :goto_0
    return v0

    .line 26
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/OriginalKey;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 27
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 30
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/bumptech/glide/load/engine/OriginalKey;

    move-object v2, v3

    .line 32
    .local v2, "that":Lcom/bumptech/glide/load/engine/OriginalKey;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 33
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 35
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v3, v4}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 36
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 39
    :cond_4
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/OriginalKey;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    move v1, v2

    .line 45
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v3}, Lcom/bumptech/glide/load/Key;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 46
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/OriginalKey;
    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/OriginalKey;
    move-object v1, p1

    .local v1, "messageDigest":Ljava/security/MessageDigest;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 52
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 53
    return-void
.end method
