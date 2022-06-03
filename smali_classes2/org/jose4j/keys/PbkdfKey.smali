.class public Lorg/jose4j/keys/PbkdfKey;
.super Ljavax/crypto/spec/SecretKeySpec;
.source "PbkdfKey.java"


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "PBKDF2"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/PbkdfKey;
    move-object v1, p1

    .local v1, "password":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lorg/jose4j/lang/StringUtil;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v3

    const-string/jumbo v4, "PBKDF2"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 31
    return-void
.end method
