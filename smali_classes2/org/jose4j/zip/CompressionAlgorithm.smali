.class public interface abstract Lorg/jose4j/zip/CompressionAlgorithm;
.super Ljava/lang/Object;
.source "CompressionAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwa/Algorithm;


# virtual methods
.method public abstract compress([B)[B
.end method

.method public abstract decompress([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation
.end method
