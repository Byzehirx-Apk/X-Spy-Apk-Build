.class public interface abstract Lorg/jose4j/jwt/consumer/JwsCustomizer;
.super Ljava/lang/Object;
.source "JwsCustomizer.java"


# virtual methods
.method public abstract customize(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jws/JsonWebSignature;",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;)V"
        }
    .end annotation
.end method
