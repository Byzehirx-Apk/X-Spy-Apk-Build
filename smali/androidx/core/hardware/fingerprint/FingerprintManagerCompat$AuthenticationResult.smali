.class public final Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private final mCryptoObject:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;


# direct methods
.method public constructor <init>(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)V
    .locals 4

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;
    move-object v1, p1

    .local v1, "crypto":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 246
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;->mCryptoObject:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .line 247
    return-void
.end method


# virtual methods
.method public getCryptoObject()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .locals 2

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;->mCryptoObject:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;
    return-object v0
.end method
