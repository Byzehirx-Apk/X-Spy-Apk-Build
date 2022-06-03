.class public Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;,
        Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$Ads;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V
    .locals 8

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string/jumbo v3, "Ads"

    new-instance v4, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;-><init>()V

    const-string/jumbo v5, "App ID"

    move-object v6, v2

    .line 72
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object v4

    const-string/jumbo v5, "Network"

    move-object v6, v0

    .line 73
    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object v4

    const-string/jumbo v5, "Format"

    move-object v6, v1

    .line 74
    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object v4

    .line 3133
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Ljava/util/Map;

    .line 71
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 96
    move-object v2, v0

    invoke-static {v2}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 100
    goto :goto_0
.end method

.method public static init(Landroid/app/Application;Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V
    .locals 10

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->isConfigured()Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    move-object v3, v0

    move-object v4, v2

    .line 44
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->IsCompanion()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "18e6b6d5-7c2b-4a1a-9042-e3448b8c323c"

    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-class v8, Lcom/microsoft/appcenter/analytics/Analytics;

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const-class v8, Lcom/microsoft/appcenter/crashes/Crashes;

    aput-object v8, v6, v7

    .line 42
    invoke-static {v3, v4, v5}, Lcom/microsoft/appcenter/AppCenter;->start(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 50
    :cond_0
    const-string/jumbo v3, "App Started"

    new-instance v4, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;-><init>()V

    const-string/jumbo v5, "App ID"

    move-object v6, v2

    .line 51
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object v4

    const-string/jumbo v5, "Regular Package Name"

    move-object v6, v2

    .line 52
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->getKodularPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object v4

    const-string/jumbo v5, "Custom Package Name"

    move-object v6, v2

    .line 53
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object v4

    const-string/jumbo v5, "App Name"

    move-object v6, v1

    .line 54
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Form;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object v4

    const-string/jumbo v5, "Kodular Version"

    .line 55
    invoke-static {}, Lcom/google/appinventor/common/version/GitBuildId;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object v4

    const-string/jumbo v5, "Installed From"

    move-object v6, v2

    .line 56
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->getInstalledFrom()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object v4

    const-string/jumbo v5, "Is Custom"

    move-object v6, v2

    .line 57
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->isCustomPackage()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "Yes"

    :goto_1
    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object v4

    .line 1133
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Ljava/util/Map;

    .line 50
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    return-void

    .line 44
    :cond_1
    const-string/jumbo v4, "34294338-ee8e-4726-a3aa-9a17934f7bcc"

    goto/16 :goto_0

    .line 57
    :cond_2
    const-string/jumbo v6, "No"

    goto :goto_1
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V
    .locals 10

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    const-string/jumbo v5, "Error Occurred"

    new-instance v6, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;-><init>()V

    const-string/jumbo v7, "App ID"

    move-object v8, v4

    .line 81
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object v6

    const-string/jumbo v7, "Component"

    move-object v8, v0

    .line 82
    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object v6

    const-string/jumbo v7, "Block"

    move-object v8, v1

    .line 83
    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object v6

    const-string/jumbo v7, "Code"

    move v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 84
    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object v6

    const-string/jumbo v7, "Message"

    move-object v8, v3

    .line 85
    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object v6

    .line 4133
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Ljava/util/Map;

    .line 80
    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Map;)V

    .line 88
    return-void
.end method

.method public static screenOpen(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "Screen"

    new-instance v3, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;-><init>()V

    const-string/jumbo v4, "App ID"

    move-object v5, v1

    .line 64
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object v3

    const-string/jumbo v4, "Screen Name"

    move-object v5, v0

    .line 65
    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object v3

    .line 2133
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Ljava/util/Map;

    .line 63
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    return-void
.end method
