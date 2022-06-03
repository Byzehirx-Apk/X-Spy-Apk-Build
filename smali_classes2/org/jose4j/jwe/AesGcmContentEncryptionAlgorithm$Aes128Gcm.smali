.class public Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes128Gcm;
.super Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
.source "AesGcmContentEncryptionAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aes128Gcm"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes128Gcm;
    move-object v1, v0

    const-string/jumbo v2, "A128GCM"

    const/16 v3, 0x80

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;-><init>(Ljava/lang/String;I)V

    .line 110
    return-void
.end method
