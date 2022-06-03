.class public Lcom/google/appinventor/components/runtime/Network;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Provides basic information about the network connectivity of the device"
    iconName = "images/network.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.ACCESS_WIFI_STATE"
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/net/NetworkInfo;

.field private R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/net/ConnectivityManager;

.field private final vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/content/BroadcastReceiver;

.field private xhzCIls1ZjY8rVr9uwfX6Ll4V1k7OjFmFraAgvYK73j7xL9tODrZc0oupoL3seO9:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 48
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Network;->xhzCIls1ZjY8rVr9uwfX6Ll4V1k7OjFmFraAgvYK73j7xL9tODrZc0oupoL3seO9:Z

    .line 49
    move-object v2, v0

    const-string/jumbo v3, "NONE"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Network;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Ljava/lang/String;

    .line 115
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/Network$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Network$1;-><init>(Lcom/google/appinventor/components/runtime/Network;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Network;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/content/BroadcastReceiver;

    .line 62
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Network;->activity:Landroid/app/Activity;

    .line 63
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Network;->context:Landroid/content/Context;

    .line 64
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Network;->context:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Network;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/net/ConnectivityManager;

    .line 65
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Network;->activity:Landroid/app/Activity;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Network;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 67
    const-string/jumbo v2, "Network"

    const-string/jumbo v3, "Network Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 68
    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Network;)Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Network;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/net/NetworkInfo;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Network;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Network;->activity:Landroid/app/Activity;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Network;)Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, v0

    .line 6169
    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Network;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 44
    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Network;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Network;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/net/NetworkInfo;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Network;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Network;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Network;)Z
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Network;->xhzCIls1ZjY8rVr9uwfX6Ll4V1k7OjFmFraAgvYK73j7xL9tODrZc0oupoL3seO9:Z

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Network;Z)Z
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Network;->xhzCIls1ZjY8rVr9uwfX6Ll4V1k7OjFmFraAgvYK73j7xL9tODrZc0oupoL3seO9:Z

    move v0, v2

    return v0
.end method


# virtual methods
.method public IsConnected()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns \"True\" if the device is connected to a network, \"False\" otherwise."
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 1169
    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Network;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 77
    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Network;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/net/NetworkInfo;

    .line 78
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Network;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Network;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 81
    :goto_0
    return v0

    .line 78
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 79
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 80
    const-string/jumbo v2, "Network"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 81
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
    .line 158
    move-object v0, p0

    move-object v3, v0

    .line 4169
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Network;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 158
    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 159
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

    .line 4173
    move v1, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4174
    const/4 v3, 0x1

    .line 159
    :goto_0
    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v0, v3

    :goto_1
    return v0

    .line 4177
    :cond_0
    move v3, v1

    if-nez v3, :cond_1

    .line 4181
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 4215
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 4183
    :pswitch_0
    const/4 v3, 0x0

    goto :goto_0

    .line 4185
    :pswitch_1
    const/4 v3, 0x0

    goto :goto_0

    .line 4187
    :pswitch_2
    const/4 v3, 0x0

    goto :goto_0

    .line 4189
    :pswitch_3
    const/4 v3, 0x1

    goto :goto_0

    .line 4191
    :pswitch_4
    const/4 v3, 0x1

    goto :goto_0

    .line 4193
    :pswitch_5
    const/4 v3, 0x0

    goto :goto_0

    .line 4195
    :pswitch_6
    const/4 v3, 0x1

    goto :goto_0

    .line 4197
    :pswitch_7
    const/4 v3, 0x1

    goto :goto_0

    .line 4199
    :pswitch_8
    const/4 v3, 0x1

    goto :goto_0

    .line 4201
    :pswitch_9
    const/4 v3, 0x1

    goto :goto_0

    .line 4203
    :pswitch_a
    const/4 v3, 0x1

    goto :goto_0

    .line 4205
    :pswitch_b
    const/4 v3, 0x1

    goto :goto_0

    .line 4207
    :pswitch_c
    const/4 v3, 0x1

    goto :goto_0

    .line 4209
    :pswitch_d
    const/4 v3, 0x0

    goto :goto_0

    .line 4211
    :pswitch_e
    const/4 v3, 0x1

    goto :goto_0

    .line 159
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 4181
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

.method public IsMobileConnection()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if connection is through Mobile"
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    move-object v2, v0

    .line 3169
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Network;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 152
    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 153
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
        description = "Returns true if using roaming"
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    move-object v2, v0

    .line 5169
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Network;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 164
    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 165
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
    .line 146
    move-object v0, p0

    move-object v2, v0

    .line 2169
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Network;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 146
    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 147
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

.method public OnConnect()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the device connects to a network."
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnConnect"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 102
    return-void
.end method

.method public OnDisconnect()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the device disconnects from a network."
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnDisconnect"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 110
    return-void
.end method

.method public Type()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the type of network the device is connected to. e.g. \"wifi\" or \"mobile\". This block is deprecated, use the \"IsWiFiConnection\" and \"IsMobileConnection\" blocks instead"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Network;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
