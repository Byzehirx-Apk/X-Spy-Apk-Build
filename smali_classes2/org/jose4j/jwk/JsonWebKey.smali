.class public abstract Lorg/jose4j/jwk/JsonWebKey;
.super Ljava/lang/Object;
.source "JsonWebKey.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwk/JsonWebKey$Factory;,
        Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;
    }
.end annotation


# static fields
.field public static final ALGORITHM_PARAMETER:Ljava/lang/String; = "alg"

.field public static final KEY_ID_PARAMETER:Ljava/lang/String; = "kid"

.field public static final KEY_OPERATIONS:Ljava/lang/String; = "key_ops"

.field public static final KEY_TYPE_PARAMETER:Ljava/lang/String; = "kty"

.field public static final USE_PARAMETER:Ljava/lang/String; = "use"


# instance fields
.field private algorithm:Ljava/lang/String;

.field protected key:Ljava/security/Key;

.field private keyId:Ljava/lang/String;

.field private keyOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected otherParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private use:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/security/Key;)V
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, p1

    .local v1, "key":Ljava/security/Key;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedHashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v2, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    .line 60
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwk/JsonWebKey;->key:Ljava/security/Key;

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, p1

    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedHashMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v2, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    .line 65
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 66
    move-object v2, v0

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "kty"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "use"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "kid"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    const-string/jumbo v6, "alg"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    const-string/jumbo v6, "key_ops"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Lorg/jose4j/jwk/JsonWebKey;->removeFromOtherParams([Ljava/lang/String;)V

    .line 67
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "use"

    invoke-static {v3, v4}, Lorg/jose4j/jwk/JsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jose4j/jwk/JsonWebKey;->setUse(Ljava/lang/String;)V

    .line 68
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "kid"

    invoke-static {v3, v4}, Lorg/jose4j/jwk/JsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jose4j/jwk/JsonWebKey;->setKeyId(Ljava/lang/String;)V

    .line 69
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "alg"

    invoke-static {v3, v4}, Lorg/jose4j/jwk/JsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jose4j/jwk/JsonWebKey;->setAlgorithm(Ljava/lang/String;)V

    .line 70
    move-object v2, v1

    const-string/jumbo v3, "key_ops"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "key_ops"

    invoke-static {v3, v4}, Lorg/jose4j/lang/JsonHelp;->getStringArray(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lorg/jose4j/jwk/JsonWebKey;->keyOps:Ljava/util/List;

    .line 74
    :cond_0
    return-void
.end method

.method protected static getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/jose4j/lang/JsonHelp;->getStringChecked(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0
.end method

.method protected static getString(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "required":Z
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lorg/jose4j/jwk/JsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 225
    .local v3, "value":Ljava/lang/String;
    move-object v4, v3

    if-nez v4, :cond_0

    move v4, v2

    if-eqz v4, :cond_0

    .line 227
    new-instance v4, Lorg/jose4j/lang/JoseException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Missing required \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' parameter."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 230
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0
.end method

.method protected static getStringRequired(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lorg/jose4j/jwk/JsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0
.end method


# virtual methods
.method public calculateBase64urlEncodedThumbprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, p1

    .local v1, "hashAlgorithm":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/jwk/JsonWebKey;->calculateThumbprint(Ljava/lang/String;)[B

    move-result-object v3

    move-object v2, v3

    .line 191
    .local v2, "thumbprint":[B
    move-object v3, v2

    invoke-static {v3}, Lorg/jose4j/base64url/Base64Url;->encode([B)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKey;
    return-object v0
.end method

.method public calculateThumbprint(Ljava/lang/String;)[B
    .locals 7

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, p1

    .local v1, "hashAlgorithm":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v5}, Lorg/jose4j/lang/HashUtil;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    move-object v2, v5

    .line 197
    .local v2, "digest":Ljava/security/MessageDigest;
    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jwk/JsonWebKey;->produceThumbprintHashInput()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 198
    .local v3, "hashInputString":Ljava/lang/String;
    move-object v5, v3

    invoke-static {v5}, Lorg/jose4j/lang/StringUtil;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v5

    move-object v4, v5

    .line 199
    .local v4, "hashInputBytes":[B
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKey;
    return-object v0
.end method

.method protected abstract fillTypeSpecificParams(Ljava/util/Map;Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;",
            ")V"
        }
    .end annotation
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/JsonWebKey;->algorithm:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKey;
    return-object v0
.end method

.method public getKey()Ljava/security/Key;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/JsonWebKey;->key:Ljava/security/Key;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKey;
    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/JsonWebKey;->keyId:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKey;
    return-object v0
.end method

.method public getKeyOps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/JsonWebKey;->keyOps:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKey;
    return-object v0
.end method

.method public abstract getKeyType()Ljava/lang/String;
.end method

.method public getOtherParameterValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 147
    .local v3, "o":Ljava/lang/Object;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKey;
    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lorg/jose4j/jwk/JsonWebKey;->key:Ljava/security/Key;

    check-cast v2, Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 90
    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKey;
    :goto_0
    return-object v0

    .line 88
    .restart local v0    # "this":Lorg/jose4j/jwk/JsonWebKey;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getUse()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/JsonWebKey;->use:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKey;
    return-object v0
.end method

.method protected abstract produceThumbprintHashInput()Ljava/lang/String;
.end method

.method protected putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 208
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 210
    :cond_0
    return-void
.end method

.method protected varargs removeFromOtherParams([Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, p1

    .local v1, "names":[Ljava/lang/String;
    move-object v6, v1

    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .local v3, "len$":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i$":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 154
    .local v5, "name":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 152
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    .end local v5    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, p1

    .local v1, "algorithm":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwk/JsonWebKey;->algorithm:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, p1

    .local v1, "keyId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwk/JsonWebKey;->keyId:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setKeyOps(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, p1

    .local v1, "keyOps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwk/JsonWebKey;->keyOps:Ljava/util/List;

    .line 137
    return-void
.end method

.method public setOtherParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 142
    return-void
.end method

.method public setUse(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, p1

    .local v1, "use":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwk/JsonWebKey;->use:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, v0

    sget-object v2, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->INCLUDE_SYMMETRIC:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    invoke-virtual {v1, v2}, Lorg/jose4j/jwk/JsonWebKey;->toJson(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKey;
    return-object v0
.end method

.method public toJson(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, p1

    .local v1, "outputLevel":Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/jwk/JsonWebKey;->toParams(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/util/Map;

    move-result-object v3

    move-object v2, v3

    .line 179
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v3, v2

    invoke-static {v3}, Lorg/jose4j/json/JsonUtil;->toJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKey;
    return-object v0
.end method

.method public toParams(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    move-object v1, p1

    .local v1, "outputLevel":Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;
    new-instance v3, Ljava/util/LinkedHashMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v2, v3

    .line 161
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v3, v2

    const-string/jumbo v4, "kty"

    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jwk/JsonWebKey;->getKeyType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 162
    move-object v3, v0

    const-string/jumbo v4, "kid"

    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jwk/JsonWebKey;->getKeyId()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lorg/jose4j/jwk/JsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 163
    move-object v3, v0

    const-string/jumbo v4, "use"

    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jwk/JsonWebKey;->getUse()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lorg/jose4j/jwk/JsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 164
    move-object v3, v0

    const-string/jumbo v4, "key_ops"

    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/jwk/JsonWebKey;->keyOps:Ljava/util/List;

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lorg/jose4j/jwk/JsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 165
    move-object v3, v0

    const-string/jumbo v4, "alg"

    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jwk/JsonWebKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lorg/jose4j/jwk/JsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 166
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/jose4j/jwk/JsonWebKey;->fillTypeSpecificParams(Ljava/util/Map;Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)V

    .line 167
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 168
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKey;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/JsonWebKey;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    sget-object v3, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->PUBLIC_ONLY:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    invoke-virtual {v2, v3}, Lorg/jose4j/jwk/JsonWebKey;->toParams(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwk/JsonWebKey;
    return-object v0
.end method
