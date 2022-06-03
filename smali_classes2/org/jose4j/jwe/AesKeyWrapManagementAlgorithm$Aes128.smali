.class public Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes128;
.super Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
.source "AesKeyWrapManagementAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aes128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes128;
    move-object v1, v0

    const-string/jumbo v2, "A128KW"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;-><init>(Ljava/lang/String;I)V

    .line 82
    return-void
.end method
