.class public final Lcom/google/appinventor/components/runtime/FingerPrint;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component to check for a FingerScanner and read fingerprints from the scanner"
    helpUrl = "https://docs.kodular.io/components/sensors/fingerprint/"
    iconName = "images/fingerprint.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.USE_FINGERPRINT"
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/TextView;

.field private ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Ljava/lang/String;

.field private JG8vik3adkKEwGQS5cMPy19gFsDVhfFFU9AjX5Lm2B7MWziHu9erYgT687JlCqd:Z

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/KeyguardManager;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/os/CancellationSignal;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/security/KeyStore;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljavax/crypto/Cipher;

.field private jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:Ljava/lang/String;

.field private qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Z

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 84
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Z

    .line 85
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->JG8vik3adkKEwGQS5cMPy19gFsDVhfFFU9AjX5Lm2B7MWziHu9erYgT687JlCqd:Z

    .line 86
    move-object v2, v0

    const-string/jumbo v3, "Sign in with your fingerprint"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:Ljava/lang/String;

    .line 87
    move-object v2, v0

    const-string/jumbo v3, "Scan your finger"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Ljava/lang/String;

    .line 95
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    .line 97
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-static {v3}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    .line 98
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/KeyguardManager;

    .line 100
    move-object v2, v0

    new-instance v3, Landroid/app/Dialog;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    .line 101
    move-object v2, v0

    new-instance v3, Landroidx/core/os/CancellationSignal;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroidx/core/os/CancellationSignal;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/os/CancellationSignal;

    .line 102
    const-string/jumbo v2, "FingerPrint"

    const-string/jumbo v3, "FingerPrint Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 103
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 2343
    move-object v0, v4

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FingerPrint;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/TextView;

    move-object v4, v1

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2344
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2345
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FingerPrint;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/TextView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FingerPrint;)Z
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint;->JG8vik3adkKEwGQS5cMPy19gFsDVhfFFU9AjX5Lm2B7MWziHu9erYgT687JlCqd:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public final Authenticate()V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Authenticate the user with a Fingerprint scanner"
    .end annotation

    .prologue
    .line 123
    move-object v1, p0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_2

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.USE_FINGERPRINT"

    invoke-static {v6, v7}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 124
    move-object v6, v1

    move-object v2, v6

    .line 1277
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_0

    .line 1278
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    invoke-virtual {v6}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1279
    const-string/jumbo v6, "FingerPrint"

    const-string/jumbo v7, "Fingerprint authentication not supported"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1280
    .line 1292
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 124
    :goto_1
    if-eqz v6, :cond_2

    .line 125
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/FingerPrint;->generateKey()V

    .line 126
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/FingerPrint;->cipherInit()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 127
    move-object v6, v1

    new-instance v7, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljavax/crypto/Cipher;

    invoke-direct {v8, v9}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .line 129
    move-object v6, v1

    new-instance v7, Lcom/google/appinventor/components/runtime/FingerPrint$1;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/FingerPrint$1;-><init>(Lcom/google/appinventor/components/runtime/FingerPrint;)V

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    .line 193
    move-object v6, v1

    new-instance v7, Landroidx/core/os/CancellationSignal;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroidx/core/os/CancellationSignal;-><init>()V

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/os/CancellationSignal;

    .line 194
    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    const/4 v8, 0x0

    move-object v9, v1

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/os/CancellationSignal;

    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->authenticate(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    .line 196
    move-object v6, v1

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->JG8vik3adkKEwGQS5cMPy19gFsDVhfFFU9AjX5Lm2B7MWziHu9erYgT687JlCqd:Z

    if-eqz v6, :cond_2

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_2

    .line 197
    move-object v6, v1

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 1349
    move-object v2, v7

    new-instance v7, Landroid/app/Dialog;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    .line 1351
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "MaterialIcons-Regular.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    move-object v3, v6

    .line 1355
    move-object v6, v2

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Z

    if-eqz v6, :cond_1

    .line 1357
    move-object v6, v2

    :try_start_0
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1360
    .line 1363
    :cond_1
    :goto_2
    move-object v6, v2

    new-instance v7, Landroid/widget/TextView;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/TextView;

    .line 1364
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/TextView;

    move-object v7, v2

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FingerPrint;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/TextView;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1366
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1367
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/TextView;

    move-object v7, v2

    iget-boolean v7, v7, Lcom/google/appinventor/components/runtime/FingerPrint;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Z

    if-eqz v7, :cond_6

    const/high16 v7, -0x1000000

    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1368
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1370
    move-object v6, v2

    new-instance v7, Landroid/widget/TextView;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/TextView;

    .line 1371
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/TextView;

    move-object v7, v2

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FingerPrint;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1372
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/TextView;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1373
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/TextView;

    const v7, -0x616162

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1374
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1376
    move-object v6, v2

    new-instance v7, Landroid/widget/TextView;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    .line 1377
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    const-string/jumbo v7, "&#xE90D;"

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1378
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    const/high16 v7, 0x42900000    # 72.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1379
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    move-object v7, v3

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1380
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    const v7, -0x616162

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1381
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1383
    new-instance v6, Landroid/widget/LinearLayout;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 1384
    move-object v3, v7

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, -0x1

    move-object v10, v2

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1386
    new-instance v6, Landroid/widget/LinearLayout;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 1387
    move-object v4, v7

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1388
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    const/16 v7, 0x18

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v6

    move v5, v6

    .line 1389
    move-object v6, v4

    move v7, v5

    move v12, v7

    move v7, v12

    move v8, v12

    move v9, v5

    move v12, v9

    move v9, v12

    move v10, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1390
    move-object v6, v4

    move-object v7, v2

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1391
    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1392
    move-object v6, v4

    move-object v7, v2

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FingerPrint;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1393
    move-object v6, v4

    move-object v7, v2

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FingerPrint;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1394
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1395
    move-object v6, v4

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1397
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    new-instance v7, Lcom/google/appinventor/components/runtime/FingerPrint$2;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/FingerPrint$2;-><init>(Lcom/google/appinventor/components/runtime/FingerPrint;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1404
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    new-instance v7, Lcom/google/appinventor/components/runtime/FingerPrint$3;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/FingerPrint$3;-><init>(Lcom/google/appinventor/components/runtime/FingerPrint;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1411
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    new-instance v7, Lcom/google/appinventor/components/runtime/FingerPrint$4;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/FingerPrint$4;-><init>(Lcom/google/appinventor/components/runtime/FingerPrint;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1422
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1424
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 1425
    move-object v3, v7

    move-object v7, v2

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    .line 1426
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v6, v6

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v8

    double-to-int v6, v6

    move v4, v6

    .line 1427
    move-object v6, v3

    move-object v7, v2

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    move v8, v4

    const/16 v9, 0x168

    if-le v8, v9, :cond_7

    const/16 v8, 0x168

    :goto_4
    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1428
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 1429
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 202
    :cond_2
    return-void

    .line 1282
    :cond_3
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    invoke-virtual {v6}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1283
    const-string/jumbo v6, "FingerPrint"

    const-string/jumbo v7, "No fingerprint configured."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1284
    goto/16 :goto_0

    .line 1286
    :cond_4
    move-object v6, v2

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1287
    const-string/jumbo v6, "FingerPrint"

    const-string/jumbo v7, "Secure lock screen not enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1288
    goto/16 :goto_0

    .line 1290
    :cond_5
    const/4 v6, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v6

    goto/16 :goto_2

    .line 1367
    :cond_6
    const/4 v7, -0x1

    goto/16 :goto_3

    .line 1427
    :cond_7
    move v8, v4

    goto :goto_4
.end method

.method public final CancelScan()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Cancel the current Fingerprint Scan"
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/os/CancellationSignal;

    invoke-virtual {v1}, Landroidx/core/os/CancellationSignal;->cancel()V

    .line 207
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 210
    :cond_0
    return-void
.end method

.method public final DialogHelpText()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the dialog help text"
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final DialogHelpText(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Scan your finger"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the dialog help text"
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public final DialogTitle()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the dialog title"
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final DialogTitle(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Sign in with your fingerprint"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the dialog title"
    .end annotation

    .prologue
    .line 257
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public final HasFingerPrintScanner()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "True if hardware is present and functional, false otherwise"
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.USE_FINGERPRINT"

    invoke-static {v1, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 108
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    invoke-virtual {v1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v1

    move v0, v1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public final HasFingersAdded()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "True if at least one fingerprint is enrolled, false otherwise"
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint;->context:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.USE_FINGERPRINT"

    invoke-static {v1, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 116
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    invoke-virtual {v1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v1

    move v0, v1

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public final LightTheme(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the current theme"
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Z

    .line 236
    return-void
.end method

.method public final LightTheme()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the current theme"
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Z

    move v0, v1

    return v0
.end method

.method public final OnAuthenticationError(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when there is a Authentication Error"
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "OnAuthenticationError"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 215
    return-void
.end method

.method public final OnAuthenticationFailed()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the Authentication Failed"
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnAuthenticationFailed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 225
    return-void
.end method

.method public final OnAuthenticationHelp(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when there is a Authentication Help"
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "OnAuthenticationHelp"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 220
    return-void
.end method

.method public final OnAuthenticationSucceeded()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Trigger when the Authentication Succeeded"
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnAuthenticationSucceeded"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 230
    return-void
.end method

.method public final UseDialog(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether to use a dialog"
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->JG8vik3adkKEwGQS5cMPy19gFsDVhfFFU9AjX5Lm2B7MWziHu9erYgT687JlCqd:Z

    .line 247
    return-void
.end method

.method public final UseDialog()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether to use a dialog"
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/FingerPrint;->JG8vik3adkKEwGQS5cMPy19gFsDVhfFFU9AjX5Lm2B7MWziHu9erYgT687JlCqd:Z

    move v0, v1

    return v0
.end method

.method public final cipherInit()Z
    .locals 7

    .prologue
    .line 325
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    const-string/jumbo v3, "AES/CBC/PKCS7Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    .line 328
    .line 331
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/security/KeyStore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 332
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/security/KeyStore;

    const-string/jumbo v3, "makeroidApp"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljavax/crypto/SecretKey;

    move-object v1, v2

    .line 333
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_8

    .line 334
    const/4 v2, 0x1

    move v0, v2

    .line 336
    :goto_0
    return v0

    .line 326
    :catch_0
    move-exception v2

    :goto_1
    move-object v1, v2

    .line 327
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Failed to get Cipher"

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 336
    :catch_1
    move-exception v2

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 337
    :catch_2
    move-exception v2

    :goto_2
    move-object v1, v2

    .line 338
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Failed to init Cipher"

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 326
    :catch_3
    move-exception v2

    goto :goto_1

    .line 337
    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_2

    :catch_6
    move-exception v2

    goto :goto_2

    :catch_7
    move-exception v2

    goto :goto_2

    :catch_8
    move-exception v2

    goto :goto_2
.end method

.method protected final generateKey()V
    .locals 9

    .prologue
    .line 298
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    const-string/jumbo v3, "AndroidKeyStore"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .line 305
    :goto_0
    :try_start_1
    const-string/jumbo v2, "AES"

    const-string/jumbo v3, "AndroidKeyStore"

    invoke-static {v2, v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    move-object v1, v2

    .line 308
    .line 311
    move-object v2, v0

    :try_start_2
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FingerPrint;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/security/KeyStore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 312
    move-object v2, v1

    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "makeroidApp"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string/jumbo v7, "CBC"

    aput-object v7, v5, v6

    .line 313
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 314
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string/jumbo v7, "PKCS7Padding"

    aput-object v7, v5, v6

    .line 315
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 316
    invoke-virtual {v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v3

    .line 312
    invoke-virtual {v2, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 317
    move-object v2, v1

    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v2

    .line 320
    return-void

    .line 299
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 300
    const-string/jumbo v2, "FingerPrint"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 306
    :catch_1
    move-exception v2

    :goto_1
    move-object v1, v2

    .line 307
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "Failed to get KeyGenerator instance"

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 318
    :catch_2
    move-exception v2

    :goto_2
    move-object v1, v2

    .line 319
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 306
    :catch_3
    move-exception v2

    goto :goto_1

    .line 318
    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_2

    :catch_6
    move-exception v2

    goto :goto_2
.end method
