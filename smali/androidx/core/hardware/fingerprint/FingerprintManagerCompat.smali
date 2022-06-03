.class public final Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;,
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;,
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private static getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    move-object v1, v0

    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    move-object v0, v1

    .line 126
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method static unwrapCryptoObject(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "cryptoObject":Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 148
    const/4 v1, 0x0

    move-object v0, v1

    .line 156
    .end local v0    # "cryptoObject":Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    :goto_0
    return-object v0

    .line 149
    .restart local v0    # "cryptoObject":Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 150
    new-instance v1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    move-object v0, v1

    goto :goto_0

    .line 151
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 152
    new-instance v1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljava/security/Signature;)V

    move-object v0, v1

    goto :goto_0

    .line 153
    :cond_2
    move-object v1, v0

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 154
    new-instance v1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    move-object v0, v1

    goto :goto_0

    .line 156
    :cond_3
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method private static wrapCallback(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "callback":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
    new-instance v1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;-><init>(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V

    move-object v0, v1

    .end local v0    # "callback":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
    return-object v0
.end method

.method private static wrapCryptoObject(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "cryptoObject":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 133
    const/4 v1, 0x0

    move-object v0, v1

    .line 141
    .end local v0    # "cryptoObject":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    :goto_0
    return-object v0

    .line 134
    .restart local v0    # "cryptoObject":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 135
    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    move-object v0, v1

    goto :goto_0

    .line 136
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 137
    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljava/security/Signature;)V

    move-object v0, v1

    goto :goto_0

    .line 138
    :cond_2
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 139
    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    move-object v0, v1

    goto :goto_0

    .line 141
    :cond_3
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public authenticate(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 14
    .param p1    # Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/core/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.USE_FINGERPRINT"
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    move-object v1, p1

    .local v1, "crypto":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    move/from16 v2, p2

    .local v2, "flags":I
    move-object/from16 v3, p3

    .local v3, "cancel":Landroidx/core/os/CancellationSignal;
    move-object/from16 v4, p4

    .local v4, "callback":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
    move-object/from16 v5, p5

    .local v5, "handler":Landroid/os/Handler;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_0

    .line 105
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v8

    move-object v6, v8

    .line 106
    .local v6, "fp":Landroid/hardware/fingerprint/FingerprintManager;
    move-object v8, v6

    if-eqz v8, :cond_0

    .line 107
    move-object v8, v3

    if-eqz v8, :cond_1

    move-object v8, v3

    .line 108
    invoke-virtual {v8}, Landroidx/core/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/CancellationSignal;

    :goto_0
    move-object v7, v8

    .line 110
    .local v7, "cancellationSignal":Landroid/os/CancellationSignal;
    move-object v8, v6

    move-object v9, v1

    .line 111
    invoke-static {v9}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->wrapCryptoObject(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v9

    move-object v10, v7

    move v11, v2

    move-object v12, v4

    .line 114
    invoke-static {v12}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->wrapCallback(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v12

    move-object v13, v5

    .line 110
    invoke-virtual/range {v8 .. v13}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 118
    .end local v6    # "fp":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v7    # "cancellationSignal":Landroid/os/CancellationSignal;
    :cond_0
    return-void

    .line 108
    .restart local v6    # "fp":Landroid/hardware/fingerprint/FingerprintManager;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public hasEnrolledFingerprints()Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.USE_FINGERPRINT"
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 64
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    move-object v1, v2

    .line 65
    .local v1, "fp":Landroid/hardware/fingerprint/FingerprintManager;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 67
    .end local v0    # "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    :goto_1
    return v0

    .line 65
    .restart local v0    # "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 67
    .end local v1    # "fp":Landroid/hardware/fingerprint/FingerprintManager;
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method public isHardwareDetected()Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.USE_FINGERPRINT"
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 79
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    move-object v1, v2

    .line 80
    .local v1, "fp":Landroid/hardware/fingerprint/FingerprintManager;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 82
    .end local v0    # "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    :goto_1
    return v0

    .line 80
    .restart local v0    # "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 82
    .end local v1    # "fp":Landroid/hardware/fingerprint/FingerprintManager;
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method
