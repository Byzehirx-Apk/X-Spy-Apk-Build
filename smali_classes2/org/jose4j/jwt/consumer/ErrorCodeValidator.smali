.class public interface abstract Lorg/jose4j/jwt/consumer/ErrorCodeValidator;
.super Ljava/lang/Object;
.source "ErrorCodeValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    }
.end annotation


# virtual methods
.method public abstract validate(Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation
.end method
