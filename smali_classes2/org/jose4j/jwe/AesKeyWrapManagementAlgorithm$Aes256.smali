.class public Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes256;
.super Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
.source "AesKeyWrapManagementAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aes256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes256;
    move-object v1, v0

    const-string/jumbo v2, "A256KW"

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;-><init>(Ljava/lang/String;I)V

    .line 98
    return-void
.end method
