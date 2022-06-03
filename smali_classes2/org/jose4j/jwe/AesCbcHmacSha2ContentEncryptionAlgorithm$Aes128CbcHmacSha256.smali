.class public Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes128CbcHmacSha256;
.super Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
.source "AesCbcHmacSha2ContentEncryptionAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/ContentEncryptionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aes128CbcHmacSha256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes128CbcHmacSha256;
    move-object v1, v0

    const-string/jumbo v2, "A128CBC-HS256"

    const/16 v3, 0x20

    const-string/jumbo v4, "HmacSHA256"

    const/16 v5, 0x10

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 201
    return-void
.end method
