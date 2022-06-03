.class public Lorg/jose4j/keys/HmacKey;
.super Ljavax/crypto/spec/SecretKeySpec;
.source "HmacKey.java"


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "HMAC"


# direct methods
.method public constructor <init>([B)V
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/HmacKey;
    move-object v1, p1

    .local v1, "bytes":[B
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "HMAC"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 30
    return-void
.end method
