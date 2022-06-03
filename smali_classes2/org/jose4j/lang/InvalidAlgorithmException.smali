.class public Lorg/jose4j/lang/InvalidAlgorithmException;
.super Lorg/jose4j/lang/JoseException;
.source "InvalidAlgorithmException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/lang/InvalidAlgorithmException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method
