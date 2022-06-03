.class final Lcom/google/appinventor/components/runtime/PushNotifications$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onesignal/OneSignal$NotificationOpenedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/PushNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/PushNotifications;)V
    .locals 4

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/PushNotifications$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/PushNotifications;B)V
    .locals 5

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/PushNotifications$a;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications;)V

    return-void
.end method


# virtual methods
.method public final notificationOpened(Lcom/onesignal/OSNotificationOpenResult;)V
    .locals 9

    .prologue
    .line 336
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    iget-object v5, v5, Lcom/onesignal/OSNotificationOpenResult;->action:Lcom/onesignal/OSNotificationAction;

    iget-object v5, v5, Lcom/onesignal/OSNotificationAction;->type:Lcom/onesignal/OSNotificationAction$ActionType;

    move-object v2, v5

    .line 337
    move-object v5, v1

    iget-object v5, v5, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v5, v5, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v5, v5, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    move-object v3, v5

    .line 338
    move-object v5, v1

    iget-object v5, v5, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v5, v5, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v5, v5, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    move-object v4, v5

    .line 339
    move-object v5, v1

    iget-object v5, v5, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v5, v5, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v5, v5, Lcom/onesignal/OSNotificationPayload;->body:Ljava/lang/String;

    move-object v1, v5

    .line 341
    move-object v5, v2

    sget-object v6, Lcom/onesignal/OSNotificationAction$ActionType;->ActionTaken:Lcom/onesignal/OSNotificationAction$ActionType;

    if-ne v5, v6, :cond_0

    .line 342
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/PushNotifications$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

    move-object v6, v3

    if-nez v6, :cond_1

    const-string/jumbo v6, ""

    :goto_0
    move-object v7, v4

    if-nez v7, :cond_2

    const-string/jumbo v7, ""

    :goto_1
    move-object v8, v1

    if-nez v8, :cond_3

    const-string/jumbo v8, ""

    :goto_2
    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/PushNotifications;->NotificationOpened(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    return-void

    .line 342
    :cond_1
    move-object v6, v3

    goto :goto_0

    :cond_2
    move-object v7, v4

    goto :goto_1

    :cond_3
    move-object v8, v1

    goto :goto_2
.end method
