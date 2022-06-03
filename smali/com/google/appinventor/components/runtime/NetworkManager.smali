.class public Lcom/google/appinventor/components/runtime/NetworkManager;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DEPRECATED:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/network_mgr.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 43
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/NetworkManager;->context:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NetworkManager;->context:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 134
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public GetConnectionType()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = " describe the type of the network, for example WIFI or MOBILE"
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/NetworkManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/net/NetworkInfo;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 128
    move-object v1, v3

    if-nez v2, :cond_0

    const-string/jumbo v2, "UNABLE TO GET CONNECTION TYPE"

    move-object v0, v2

    .line 129
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public IsConnected()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Indicates whether network connectivity exists and it is possible to establish connections and pass data."
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/NetworkManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/net/NetworkInfo;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 122
    move-object v1, v3

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public IsFastConnection()Z
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if using a fast connection"
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/NetworkManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/net/NetworkInfo;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 110
    move-object v1, v4

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    move v2, v4

    move v5, v3

    move v3, v5

    move v4, v5

    .line 1047
    move v1, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1048
    const/4 v3, 0x1

    .line 110
    :goto_0
    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v0, v3

    :goto_1
    return v0

    .line 1049
    :cond_0
    move v3, v1

    if-nez v3, :cond_1

    .line 1050
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 1088
    const/4 v3, 0x0

    goto :goto_0

    .line 1052
    :pswitch_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1054
    :pswitch_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1056
    :pswitch_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1058
    :pswitch_3
    const/4 v3, 0x1

    goto :goto_0

    .line 1060
    :pswitch_4
    const/4 v3, 0x1

    goto :goto_0

    .line 1062
    :pswitch_5
    const/4 v3, 0x0

    goto :goto_0

    .line 1064
    :pswitch_6
    const/4 v3, 0x1

    goto :goto_0

    .line 1066
    :pswitch_7
    const/4 v3, 0x1

    goto :goto_0

    .line 1068
    :pswitch_8
    const/4 v3, 0x1

    goto :goto_0

    .line 1070
    :pswitch_9
    const/4 v3, 0x1

    goto :goto_0

    .line 1076
    :pswitch_a
    const/4 v3, 0x1

    goto :goto_0

    .line 1078
    :pswitch_b
    const/4 v3, 0x1

    goto :goto_0

    .line 1080
    :pswitch_c
    const/4 v3, 0x1

    goto :goto_0

    .line 1082
    :pswitch_d
    const/4 v3, 0x0

    goto :goto_0

    .line 1084
    :pswitch_e
    const/4 v3, 0x1

    goto :goto_0

    .line 1091
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 110
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 1050
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method public IsGPSEnabled()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Checks to see if device is GPS enabled and if so, checks to see if GPS is started or not"
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NetworkManager;->IsGPSEnabledDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    const/4 v1, 0x0

    move v0, v1

    .line 155
    :goto_0
    return v0

    .line 153
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NetworkManager;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 155
    const-string/jumbo v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public IsGPSEnabledDevice()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Checks to see if device is GPS enabled"
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NetworkManager;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v3, "location"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 141
    move-object v1, v3

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 143
    :goto_0
    return v0

    .line 142
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 143
    move-object v1, v3

    if-eqz v2, :cond_1

    move-object v2, v1

    const-string/jumbo v3, "gps"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public IsMobileConnection()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if connection is through Mobile"
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/NetworkManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/net/NetworkInfo;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 104
    move-object v1, v3

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public IsRoaming()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if using using roaming"
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/NetworkManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/net/NetworkInfo;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 116
    move-object v1, v3

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public IsWiFiConnection()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if connection is through WiFi"
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/NetworkManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/net/NetworkInfo;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 98
    move-object v1, v3

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public StartGPSOptions()Z
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Starts up the GPS configuration activity, giving user option to turn turn on the GPS"
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    new-instance v2, Landroid/content/Intent;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 162
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NetworkManager;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V

    .line 163
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method
