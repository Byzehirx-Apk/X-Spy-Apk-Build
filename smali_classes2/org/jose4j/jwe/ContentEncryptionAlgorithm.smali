.class public interface abstract Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
.super Ljava/lang/Object;
.source "ContentEncryptionAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwa/Algorithm;


# virtual methods
.method public abstract decrypt(Lorg/jose4j/jwe/ContentEncryptionParts;[B[BLorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation
.end method

.method public abstract encrypt([B[B[BLorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionParts;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation
.end method

.method public abstract getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
.end method
