.class public Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep;
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
    name = "RsaOaep"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep;
    move-object v1, v0

    const-string/jumbo v2, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    const-string/jumbo v3, "RSA-OAEP"

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method
