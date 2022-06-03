.class public Lcom/bumptech/glide/signature/StringSignature;
.super Ljava/lang/Object;
.source "StringSignature.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/signature/StringSignature;
    move-object v1, p1

    .local v1, "signature":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 15
    move-object v2, v1

    if-nez v2, :cond_0

    .line 16
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Signature cannot be null!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/signature/StringSignature;->signature:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/signature/StringSignature;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 24
    const/4 v3, 0x1

    move v0, v3

    .line 32
    .end local v0    # "this":Lcom/bumptech/glide/signature/StringSignature;
    :goto_0
    return v0

    .line 26
    .restart local v0    # "this":Lcom/bumptech/glide/signature/StringSignature;
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

    check-cast v3, Lcom/bumptech/glide/signature/StringSignature;

    move-object v2, v3

    .line 32
    .local v2, "that":Lcom/bumptech/glide/signature/StringSignature;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/signature/StringSignature;->signature:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/bumptech/glide/signature/StringSignature;->signature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/signature/StringSignature;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/signature/StringSignature;->signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/signature/StringSignature;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/signature/StringSignature;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "StringSignature{signature=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/signature/StringSignature;->signature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/signature/StringSignature;
    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/signature/StringSignature;
    move-object v1, p1

    .local v1, "messageDigest":Ljava/security/MessageDigest;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/signature/StringSignature;->signature:Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 43
    return-void
.end method
