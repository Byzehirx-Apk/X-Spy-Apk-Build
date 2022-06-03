.class public Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/KodularAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Consent"
.end annotation


# static fields
.field private static bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:Z

.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/ump/ConsentInformation;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/ump/ConsentInformation;

    .line 161
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:Z

    .line 162
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Lcom/google/android/ump/ConsentInformation;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/ump/ConsentInformation;

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    .line 1165
    new-instance v2, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$3;-><init>(Landroid/app/Activity;)V

    new-instance v3, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$4;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$4;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/google/android/ump/UserMessagingPlatform;->loadConsentForm(Landroid/content/Context;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;)V

    .line 105
    return-void
.end method

.method public static request(Landroid/app/Activity;Landroid/content/Context;Z)V
    .locals 12

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance v4, Lcom/google/android/ump/ConsentRequestParameters$Builder;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-direct {v5}, Lcom/google/android/ump/ConsentRequestParameters$Builder;-><init>()V

    const/4 v5, 0x0

    .line 114
    invoke-virtual {v4, v5}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->setTagForUnderAgeOfConsent(Z)Lcom/google/android/ump/ConsentRequestParameters$Builder;

    move-result-object v4

    move-object v3, v4

    .line 115
    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    move-result-object v4

    sput-object v4, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/ump/ConsentInformation;

    .line 117
    move v4, v2

    if-eqz v4, :cond_0

    .line 118
    new-instance v4, Lcom/google/android/ump/ConsentDebugSettings$Builder;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/android/ump/ConsentDebugSettings$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 119
    invoke-virtual {v4, v5}, Lcom/google/android/ump/ConsentDebugSettings$Builder;->setDebugGeography(I)Lcom/google/android/ump/ConsentDebugSettings$Builder;

    move-result-object v4

    move-object v5, v1

    .line 120
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/KodularAdsUtil;->guessSelfDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/ump/ConsentDebugSettings$Builder;->addTestDeviceHashedId(Ljava/lang/String;)Lcom/google/android/ump/ConsentDebugSettings$Builder;

    move-result-object v4

    .line 121
    invoke-virtual {v4}, Lcom/google/android/ump/ConsentDebugSettings$Builder;->build()Lcom/google/android/ump/ConsentDebugSettings;

    move-result-object v4

    move-object v2, v4

    .line 123
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->setConsentDebugSettings(Lcom/google/android/ump/ConsentDebugSettings;)Lcom/google/android/ump/ConsentRequestParameters$Builder;

    move-result-object v4

    .line 125
    sget-boolean v4, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:Z

    if-nez v4, :cond_0

    .line 126
    sget-object v4, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/ump/ConsentInformation;

    invoke-interface {v4}, Lcom/google/android/ump/ConsentInformation;->reset()V

    .line 127
    const/4 v4, 0x1

    sput-boolean v4, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:Z

    .line 131
    :cond_0
    sget-object v4, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/ump/ConsentInformation;

    move-object v5, v0

    move-object v6, v3

    .line 133
    invoke-virtual {v6}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->build()Lcom/google/android/ump/ConsentRequestParameters;

    move-result-object v6

    new-instance v7, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    new-instance v8, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$2;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$2;-><init>()V

    .line 131
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/google/android/ump/ConsentInformation;->requestConsentInfoUpdate(Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V

    .line 156
    return-void
.end method
