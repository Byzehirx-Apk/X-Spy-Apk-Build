.class public Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$Rsa1_5;
.super Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;
.source "RsaKeyManagementAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rsa1_5"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$Rsa1_5;
    move-object v1, v0

    const-string/jumbo v2, "RSA/ECB/PKCS1Padding"

    const-string/jumbo v3, "RSA1_5"

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method
