.class final Lcom/google/appinventor/components/runtime/PushNotifications$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onesignal/OneSignal$NotificationReceivedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/PushNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/PushNotifications;)V
    .locals 4

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/PushNotifications$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/PushNotifications;B)V
    .locals 5

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/PushNotifications$b;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications;)V

    return-void
.end method


# virtual methods
.method public final notificationReceived(Lcom/onesignal/OSNotification;)V
    .locals 8

    .prologue
    .line 302
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget-object v4, v4, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v4, v4, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    move-object v2, v4

    .line 303
    move-object v4, v1

    iget-object v4, v4, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v4, v4, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    move-object v3, v4

    .line 304
    move-object v4, v1

    iget-object v4, v4, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v4, v4, Lcom/onesignal/OSNotificationPayload;->body:Ljava/lang/String;

    move-object v1, v4

    .line 320
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/PushNotifications$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

    move-object v5, v2

    if-nez v5, :cond_0

    const-string/jumbo v5, ""

    :goto_0
    move-object v6, v3

    if-nez v6, :cond_1

    const-string/jumbo v6, ""

    :goto_1
    move-object v7, v1

    if-nez v7, :cond_2

    const-string/jumbo v7, ""

    :goto_2
    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/PushNotifications;->NotificationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void

    .line 320
    :cond_0
    move-object v5, v2

    goto :goto_0

    :cond_1
    move-object v6, v3

    goto :goto_1

    :cond_2
    move-object v7, v1

    goto :goto_2
.end method
