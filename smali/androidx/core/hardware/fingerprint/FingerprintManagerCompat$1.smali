.class final Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->wrapCallback(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;


# direct methods
.method constructor <init>(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;->val$callback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    move-object v2, v0

    invoke-direct {v2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 6

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;
    move v1, p1

    .local v1, "errMsgId":I
    move-object v2, p2

    .local v2, "errString":Ljava/lang/CharSequence;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;->val$callback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 167
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;->val$callback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    invoke-virtual {v1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationFailed()V

    .line 183
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 6

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;
    move v1, p1

    .local v1, "helpMsgId":I
    move-object v2, p2

    .local v2, "helpString":Ljava/lang/CharSequence;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;->val$callback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 7

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;
    move-object v1, p1

    .local v1, "result":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;->val$callback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    new-instance v3, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    .line 177
    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getCryptoObject()Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->unwrapCryptoObject(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;-><init>(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)V

    .line 176
    invoke-virtual {v2, v3}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationSucceeded(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V

    .line 178
    return-void
.end method
