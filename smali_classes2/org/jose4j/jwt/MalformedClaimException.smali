.class public Lorg/jose4j/jwt/MalformedClaimException;
.super Lorg/jose4j/jwt/GeneralJwtException;
.source "MalformedClaimException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/MalformedClaimException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/jose4j/jwt/GeneralJwtException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/MalformedClaimException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "cause":Ljava/lang/Throwable;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/jose4j/jwt/GeneralJwtException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method
