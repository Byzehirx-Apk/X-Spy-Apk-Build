.class public interface abstract Lorg/jose4j/jwt/consumer/Validator;
.super Ljava/lang/Object;
.source "Validator.java"


# virtual methods
.method public abstract validate(Lorg/jose4j/jwt/consumer/JwtContext;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation
.end method
