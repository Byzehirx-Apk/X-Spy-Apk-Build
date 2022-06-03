.class public Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes256Gcm;
.super Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
.source "AesGcmContentEncryptionAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aes256Gcm"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes256Gcm;
    move-object v1, v0

    const-string/jumbo v2, "A256GCM"

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;-><init>(Ljava/lang/String;I)V

    .line 94
    return-void
.end method
