.class public Lorg/jose4j/jwt/consumer/ErrorCodeValidatorAdapter;
.super Ljava/lang/Object;
.source "ErrorCodeValidatorAdapter.java"

# interfaces
.implements Lorg/jose4j/jwt/consumer/ErrorCodeValidator;


# instance fields
.field private validator:Lorg/jose4j/jwt/consumer/Validator;


# direct methods
.method public constructor <init>(Lorg/jose4j/jwt/consumer/Validator;)V
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/ErrorCodeValidatorAdapter;
    move-object v1, p1

    .local v1, "validator":Lorg/jose4j/jwt/consumer/Validator;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/ErrorCodeValidatorAdapter;->validator:Lorg/jose4j/jwt/consumer/Validator;

    .line 30
    return-void
.end method


# virtual methods
.method public validate(Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/ErrorCodeValidatorAdapter;
    move-object v1, p1

    .local v1, "jwtContext":Lorg/jose4j/jwt/consumer/JwtContext;
    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwt/consumer/ErrorCodeValidatorAdapter;->validator:Lorg/jose4j/jwt/consumer/Validator;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/jose4j/jwt/consumer/Validator;->validate(Lorg/jose4j/jwt/consumer/JwtContext;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 36
    .local v2, "result":Ljava/lang/String;
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/ErrorCodeValidatorAdapter;
    return-object v0

    .restart local v0    # "this":Lorg/jose4j/jwt/consumer/ErrorCodeValidatorAdapter;
    :cond_0
    new-instance v3, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x11

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method
