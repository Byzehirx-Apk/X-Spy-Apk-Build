.class public Lorg/jose4j/keys/AesKey;
.super Ljavax/crypto/spec/SecretKeySpec;
.source "AesKey.java"


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "AES"


# direct methods
.method public constructor <init>([B)V
    .locals 5

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/AesKey;
    move-object v1, p1

    .local v1, "bytes":[B
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/keys/AesKey;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Lorg/jose4j/keys/AesKey;->getEncoded()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "AES"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/keys/AesKey;
    return-object v0
.end method
