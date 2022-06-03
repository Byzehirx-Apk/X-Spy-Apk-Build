.class public Lorg/jose4j/jws/JsonWebSignature;
.super Lorg/jose4j/jwx/JsonWebStructure;
.source "JsonWebSignature.java"


# static fields
.field public static final COMPACT_SERIALIZATION_PARTS:S = 0x3s


# instance fields
.field private encodedPayload:Ljava/lang/String;

.field private payloadBytes:[B

.field private payloadCharEncoding:Ljava/lang/String;

.field private validSignature:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, v0

    invoke-direct {v1}, Lorg/jose4j/jwx/JsonWebStructure;-><init>()V

    .line 44
    move-object v1, v0

    const-string/jumbo v2, "UTF-8"

    iput-object v2, v1, Lorg/jose4j/jws/JsonWebSignature;->payloadCharEncoding:Ljava/lang/String;

    .line 51
    const-string/jumbo v1, "org.jose4j.jws.default-allow-none"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    move-object v1, v0

    sget-object v2, Lorg/jose4j/jwa/AlgorithmConstraints;->DISALLOW_NONE:Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-virtual {v1, v2}, Lorg/jose4j/jws/JsonWebSignature;->setAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V

    .line 55
    :cond_0
    return-void
.end method

.method private getAlgorithm(Z)Lorg/jose4j/jws/JsonWebSignatureAlgorithm;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move v1, p1

    .local v1, "checkConstraints":Z
    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmHeaderValue()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 243
    .local v2, "algo":Ljava/lang/String;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 245
    new-instance v5, Lorg/jose4j/lang/InvalidAlgorithmException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "Signature algorithm header (alg) not set."

    invoke-direct {v6, v7}, Lorg/jose4j/lang/InvalidAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 248
    :cond_0
    move v5, v1

    if-eqz v5, :cond_1

    .line 250
    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmConstraints()Lorg/jose4j/jwa/AlgorithmConstraints;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/jose4j/jwa/AlgorithmConstraints;->checkConstraint(Ljava/lang/String;)V

    .line 253
    :cond_1
    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object v5

    move-object v3, v5

    .line 254
    .local v3, "factoryFactory":Lorg/jose4j/jwa/AlgorithmFactoryFactory;
    move-object v5, v3

    invoke-virtual {v5}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getJwsAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object v5

    move-object v4, v5

    .line 255
    .local v4, "jwsAlgorithmFactory":Lorg/jose4j/jwa/AlgorithmFactory;, "Lorg/jose4j/jwa/AlgorithmFactory<Lorg/jose4j/jws/JsonWebSignatureAlgorithm;>;"
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object v5

    check-cast v5, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-object v0, v5

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method

.method private getSigningInputBytes()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/jose4j/jws/JsonWebSignature;->isRfc7797UnencodedPayload()Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedHeader()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedPayload()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2}, Lorg/jose4j/jwx/CompactSerializer;->serialize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 277
    .local v1, "signingInputString":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lorg/jose4j/lang/StringUtil;->getBytesAscii(Ljava/lang/String;)[B

    move-result-object v2

    move-object v0, v2

    .line 287
    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    .end local v1    # "signingInputString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 283
    .restart local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v2

    .line 284
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedHeader()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jose4j/lang/StringUtil;->getBytesAscii(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 285
    move-object v2, v1

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 286
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 287
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 289
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 291
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/jose4j/lang/JoseException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "This should never happen from a ByteArrayOutputStream"

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getStringPayload()Ljava/lang/String;
    .locals 3

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jws/JsonWebSignature;->payloadCharEncoding:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jose4j/lang/StringUtil;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getAlgorithm()Lorg/jose4j/jwa/Algorithm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithm()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method

.method public getAlgorithm()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithm(Z)Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method

.method public bridge synthetic getAlgorithmNoConstraintCheck()Lorg/jose4j/jwa/Algorithm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmNoConstraintCheck()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method

.method public getAlgorithmNoConstraintCheck()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithm(Z)Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method

.method public getCompactSerialization()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/jose4j/jws/JsonWebSignature;->sign()V

    .line 142
    move-object v2, v0

    invoke-virtual {v2}, Lorg/jose4j/jws/JsonWebSignature;->isRfc7797UnencodedPayload()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    move-object v2, v0

    invoke-direct {v2}, Lorg/jose4j/jws/JsonWebSignature;->getStringPayload()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 145
    .local v1, "payload":Ljava/lang/String;
    move-object v2, v1

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    new-instance v2, Lorg/jose4j/lang/JoseException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "per https://tools.ietf.org/html/rfc7797#section-5.2 when using the JWS Compact Serialization, unencoded non-detached payloads using period (\'.\') characters would cause parsing errors; such payloads MUST NOT be used with the JWS Compact Serialization."

    invoke-direct {v3, v4}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    .end local v1    # "payload":Ljava/lang/String;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedPayload()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 157
    .restart local v1    # "payload":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedHeader()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v1

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedSignature()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2}, Lorg/jose4j/jwx/CompactSerializer;->serialize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method

.method public getDetachedContentCompactSerialization()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/jose4j/jws/JsonWebSignature;->sign()V

    .line 172
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedHeader()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    move-object v4, v0

    invoke-virtual {v4}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedSignature()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1}, Lorg/jose4j/jwx/CompactSerializer;->serialize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method

.method public getEncodedPayload()Ljava/lang/String;
    .locals 3

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jws/JsonWebSignature;->encodedPayload:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jws/JsonWebSignature;->encodedPayload:Ljava/lang/String;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jws/JsonWebSignature;->base64url:Lorg/jose4j/base64url/Base64Url;

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    invoke-virtual {v1, v2}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getEncodedSignature()Ljava/lang/String;
    .locals 3

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jws/JsonWebSignature;->base64url:Lorg/jose4j/base64url/Base64Url;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/jose4j/jws/JsonWebSignature;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method

.method public getKeyPersuasion()Lorg/jose4j/keys/KeyPersuasion;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmNoConstraintCheck()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v1

    invoke-interface {v1}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->getKeyPersuasion()Lorg/jose4j/keys/KeyPersuasion;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmNoConstraintCheck()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v1

    invoke-interface {v1}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->getKeyType()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    const-string/jumbo v1, "org.jose4j.jws.getPayload-skip-verify"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/jose4j/jws/JsonWebSignature;->verifySignature()Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    new-instance v1, Lorg/jose4j/lang/IntegrityException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "JWS signature is invalid."

    invoke-direct {v2, v3}, Lorg/jose4j/lang/IntegrityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Lorg/jose4j/jws/JsonWebSignature;->getStringPayload()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method

.method public getPayloadBytes()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/jose4j/jws/JsonWebSignature;->verifySignature()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lorg/jose4j/lang/IntegrityException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "JWS signature is invalid."

    invoke-direct {v2, v3}, Lorg/jose4j/lang/IntegrityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method

.method public getPayloadCharEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jws/JsonWebSignature;->payloadCharEncoding:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method

.method protected getSignature()[B
    .locals 2

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/jose4j/jws/JsonWebSignature;->getIntegrity()[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method

.method public getUnverifiedPayload()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, v0

    invoke-direct {v1}, Lorg/jose4j/jws/JsonWebSignature;->getStringPayload()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method

.method public getUnverifiedPayloadBytes()[B
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return-object v0
.end method

.method protected isRfc7797UnencodedPayload()Z
    .locals 4

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jws/JsonWebSignature;->headers:Lorg/jose4j/jwx/Headers;

    const-string/jumbo v3, "b64"

    invoke-virtual {v2, v3}, Lorg/jose4j/jwx/Headers;->getObjectHeaderValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 299
    .local v1, "b64":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return v0

    .restart local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isSupportedCriticalHeader(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, p1

    .local v1, "headerName":Ljava/lang/String;
    const-string/jumbo v2, "b64"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return v0
.end method

.method protected onNewKey()V
    .locals 3

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/jose4j/jws/JsonWebSignature;->validSignature:Ljava/lang/Boolean;

    .line 196
    return-void
.end method

.method protected setCompactSerializationParts([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, p1

    .local v1, "parts":[Ljava/lang/String;
    move-object v2, v1

    array-length v2, v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 107
    new-instance v2, Lorg/jose4j/lang/JoseException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "A JWS Compact Serialization must have exactly 3 parts separated by period (\'.\') characters"

    invoke-direct {v3, v4}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/jose4j/jws/JsonWebSignature;->setEncodedHeader(Ljava/lang/String;)V

    .line 111
    move-object v2, v0

    invoke-virtual {v2}, Lorg/jose4j/jws/JsonWebSignature;->isRfc7797UnencodedPayload()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/jose4j/jws/JsonWebSignature;->setPayload(Ljava/lang/String;)V

    .line 120
    :goto_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jws/JsonWebSignature;->base64url:Lorg/jose4j/base64url/Base64Url;

    move-object v4, v1

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jose4j/jws/JsonWebSignature;->setSignature([B)V

    .line 121
    return-void

    .line 117
    :cond_1
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/jose4j/jws/JsonWebSignature;->setEncodedPayload(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEncodedPayload(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, p1

    .local v1, "encodedPayload":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jws/JsonWebSignature;->encodedPayload:Ljava/lang/String;

    .line 369
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jws/JsonWebSignature;->base64url:Lorg/jose4j/base64url/Base64Url;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v2, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    .line 370
    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, p1

    .local v1, "payload":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/jose4j/jws/JsonWebSignature;->payloadCharEncoding:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/jose4j/lang/StringUtil;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v2, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    .line 66
    return-void
.end method

.method public setPayloadBytes([B)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, p1

    .local v1, "payloadBytes":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    .line 101
    return-void
.end method

.method public setPayloadCharEncoding(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, p1

    .local v1, "payloadCharEncoding":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jws/JsonWebSignature;->payloadCharEncoding:Ljava/lang/String;

    .line 354
    return-void
.end method

.method protected setSignature([B)V
    .locals 4

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v1, p1

    .local v1, "signature":[B
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/jws/JsonWebSignature;->setIntegrity([B)V

    .line 394
    return-void
.end method

.method public sign()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithm()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v5

    move-object v1, v5

    .line 182
    .local v1, "algorithm":Lorg/jose4j/jws/JsonWebSignatureAlgorithm;
    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jws/JsonWebSignature;->getKey()Ljava/security/Key;

    move-result-object v5

    move-object v2, v5

    .line 183
    .local v2, "signingKey":Ljava/security/Key;
    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jws/JsonWebSignature;->isDoKeyValidation()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 185
    move-object v5, v1

    move-object v6, v2

    invoke-interface {v5, v6}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->validateSigningKey(Ljava/security/Key;)V

    .line 187
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Lorg/jose4j/jws/JsonWebSignature;->getSigningInputBytes()[B

    move-result-object v5

    move-object v3, v5

    .line 188
    .local v3, "inputBytes":[B
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Lorg/jose4j/jws/JsonWebSignature;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->sign(Ljava/security/Key;[BLorg/jose4j/jca/ProviderContext;)[B

    move-result-object v5

    move-object v4, v5

    .line 189
    .local v4, "signatureBytes":[B
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lorg/jose4j/jws/JsonWebSignature;->setSignature([B)V

    .line 190
    return-void
.end method

.method public verifySignature()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/JsonWebSignature;
    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithm()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v5

    move-object v1, v5

    .line 206
    .local v1, "algorithm":Lorg/jose4j/jws/JsonWebSignatureAlgorithm;
    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jws/JsonWebSignature;->getKey()Ljava/security/Key;

    move-result-object v5

    move-object v2, v5

    .line 207
    .local v2, "verificationKey":Ljava/security/Key;
    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jws/JsonWebSignature;->isDoKeyValidation()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 209
    move-object v5, v1

    move-object v6, v2

    invoke-interface {v5, v6}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->validateVerificationKey(Ljava/security/Key;)V

    .line 211
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/jws/JsonWebSignature;->validSignature:Ljava/lang/Boolean;

    if-nez v5, :cond_1

    .line 213
    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jws/JsonWebSignature;->checkCrit()V

    .line 214
    move-object v5, v0

    invoke-virtual {v5}, Lorg/jose4j/jws/JsonWebSignature;->getSignature()[B

    move-result-object v5

    move-object v3, v5

    .line 215
    .local v3, "signatureBytes":[B
    move-object v5, v0

    invoke-direct {v5}, Lorg/jose4j/jws/JsonWebSignature;->getSigningInputBytes()[B

    move-result-object v5

    move-object v4, v5

    .line 216
    .local v4, "inputBytes":[B
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    move-object v9, v4

    move-object v10, v0

    invoke-virtual {v10}, Lorg/jose4j/jws/JsonWebSignature;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v10

    invoke-interface {v6, v7, v8, v9, v10}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->verifySignature([BLjava/security/Key;[BLorg/jose4j/jca/ProviderContext;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lorg/jose4j/jws/JsonWebSignature;->validSignature:Ljava/lang/Boolean;

    .line 219
    .end local v3    # "signatureBytes":[B
    .end local v4    # "inputBytes":[B
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/jws/JsonWebSignature;->validSignature:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Lorg/jose4j/jws/JsonWebSignature;
    return v0
.end method
