.class public interface abstract Lorg/jose4j/jws/JsonWebSignatureAlgorithm;
.super Ljava/lang/Object;
.source "JsonWebSignatureAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwa/Algorithm;


# virtual methods
.method public abstract sign(Ljava/security/Key;[BLorg/jose4j/jca/ProviderContext;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation
.end method

.method public abstract validateSigningKey(Ljava/security/Key;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract validateVerificationKey(Ljava/security/Key;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract verifySignature([BLjava/security/Key;[BLorg/jose4j/jca/ProviderContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation
.end method
