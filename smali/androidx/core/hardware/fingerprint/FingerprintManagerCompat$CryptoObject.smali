.class public Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CryptoObject"
.end annotation


# instance fields
.field private final mCipher:Ljavax/crypto/Cipher;

.field private final mMac:Ljavax/crypto/Mac;

.field private final mSignature:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .locals 4
    .param p1    # Ljava/security/Signature;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    move-object v1, p1

    .local v1, "signature":Ljava/security/Signature;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 198
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mSignature:Ljava/security/Signature;

    .line 199
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    .line 200
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mMac:Ljavax/crypto/Mac;

    .line 202
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 4
    .param p1    # Ljavax/crypto/Cipher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    move-object v1, p1

    .local v1, "cipher":Ljavax/crypto/Cipher;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 205
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    .line 206
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mSignature:Ljava/security/Signature;

    .line 207
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mMac:Ljavax/crypto/Mac;

    .line 208
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 4
    .param p1    # Ljavax/crypto/Mac;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    move-object v1, p1

    .local v1, "mac":Ljavax/crypto/Mac;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 211
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mMac:Ljavax/crypto/Mac;

    .line 212
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    .line 213
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mSignature:Ljava/security/Signature;

    .line 214
    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mMac:Ljavax/crypto/Mac;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    return-object v0
.end method

.method public getSignature()Ljava/security/Signature;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mSignature:Ljava/security/Signature;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    return-object v0
.end method
