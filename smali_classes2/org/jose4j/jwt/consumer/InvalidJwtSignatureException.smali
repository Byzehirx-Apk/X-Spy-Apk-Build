.class public Lorg/jose4j/jwt/consumer/InvalidJwtSignatureException;
.super Lorg/jose4j/jwt/consumer/InvalidJwtException;
.source "InvalidJwtSignatureException.java"


# direct methods
.method public constructor <init>(Lorg/jose4j/jws/JsonWebSignature;Lorg/jose4j/jwt/consumer/JwtContext;)V
    .locals 11

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/InvalidJwtSignatureException;
    move-object v1, p1

    .local v1, "jws":Lorg/jose4j/jws/JsonWebSignature;
    move-object v2, p2

    .local v2, "jwtContext":Lorg/jose4j/jwt/consumer/JwtContext;
    move-object v3, v0

    const-string/jumbo v4, "JWT rejected due to invalid signature."

    new-instance v5, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/16 v7, 0x9

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid JWS Signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/jose4j/jwt/consumer/JwtContext;)V

    .line 17
    return-void
.end method
