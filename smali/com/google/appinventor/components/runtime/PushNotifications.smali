.class public final Lcom/google/appinventor/components/runtime/PushNotifications;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Push Notifications component powered by OneSignal"
    iconName = "images/pushNotifications.png"
    nonVisible = true
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "OneSignal.jar",
        "OneSignal.aar",
        "play-services-base.aar",
        "play-services-base.jar",
        "play-services-basement.aar",
        "play-services-basement.jar",
        "play-services-gcm.aar",
        "play-services-gcm.jar",
        "play-services-iid.aar",
        "play-services-iid.jar",
        "play-services-location.aar",
        "play-services-location.jar",
        "play-services-places-placereport.aar",
        "play-services-places-placereport.jar",
        "play-services-stats.aar",
        "play-services-stats.jar",
        "play-services-tasks.aar",
        "play-services-tasks.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "com.google.android.c2dm.permission.RECEIVE",
        "android.permission.WAKE_LOCK",
        "android.permission.VIBRATE",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.RECEIVE_BOOT_COMPLETED",
        "android.permission.READ_APP_BADGE",
        "com.sec.android.provider.badge.permission.READ",
        "com.sec.android.provider.badge.permission.WRITE",
        "com.htc.launcher.permission.READ_SETTINGS",
        "com.htc.launcher.permission.UPDATE_SHORTCUT",
        "com.sonyericsson.home.permission.BROADCAST_BADGE",
        "com.sonymobile.home.permission.PROVIDER_INSERT_BADGE",
        "com.anddoes.launcher.permission.UPDATE_COUNT",
        "com.majeur.launcher.permission.UPDATE_BADGE",
        "com.huawei.android.launcher.permission.CHANGE_BADGE",
        "com.huawei.android.launcher.permission.READ_SETTINGS",
        "com.huawei.android.launcher.permission.WRITE_SETTINGS",
        "com.oppo.launcher.permission.READ_SETTINGS",
        "com.oppo.launcher.permission.WRITE_SETTINGS",
        "me.everything.badger.permission.BADGE_COUNT_READ",
        "me.everything.badger.permission.BADGE_COUNT_WRITE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/PushNotifications$a;,
        Lcom/google/appinventor/components/runtime/PushNotifications$b;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private appId:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 8

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 100
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/PushNotifications;->appId:Ljava/lang/String;

    .line 104
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/PushNotifications;->context:Landroid/content/Context;

    .line 105
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/PushNotifications;->activity:Landroid/app/Activity;

    .line 107
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/PushNotifications;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->startInit(Landroid/content/Context;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 108
    invoke-virtual {v2, v3}, Lcom/onesignal/OneSignal$Builder;->autoPromptLocation(Z)Lcom/onesignal/OneSignal$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 109
    invoke-virtual {v2, v3}, Lcom/onesignal/OneSignal$Builder;->unsubscribeWhenNotificationsAreDisabled(Z)Lcom/onesignal/OneSignal$Builder;

    move-result-object v2

    sget-object v3, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 110
    invoke-virtual {v2, v3}, Lcom/onesignal/OneSignal$Builder;->inFocusDisplaying(Lcom/onesignal/OneSignal$OSInFocusDisplayOption;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/PushNotifications$b;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/PushNotifications$b;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications;B)V

    .line 111
    invoke-virtual {v2, v3}, Lcom/onesignal/OneSignal$Builder;->setNotificationReceivedHandler(Lcom/onesignal/OneSignal$NotificationReceivedHandler;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/PushNotifications$a;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/PushNotifications$a;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications;B)V

    .line 112
    invoke-virtual {v2, v3}, Lcom/onesignal/OneSignal$Builder;->setNotificationOpenedHandler(Lcom/onesignal/OneSignal$NotificationOpenedHandler;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcom/onesignal/OneSignal$Builder;->init()V

    .line 115
    const-string/jumbo v2, "Push Notifications"

    const-string/jumbo v3, "OneSignal Initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 116
    return-void
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .prologue
    .line 390
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v5, 0x0

    move-object v4, v5

    .line 393
    :try_start_0
    new-instance v5, Ljava/net/URL;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "https://onesignal.com/api/v1/notifications"

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 395
    move-object v4, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 396
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 397
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 399
    move-object v5, v4

    const-string/jumbo v6, "Content-Type"

    const-string/jumbo v7, "application/json; charset=UTF-8"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    move-object v5, v4

    const-string/jumbo v6, "Authorization"

    const-string/jumbo v7, "Basic "

    move-object v8, v3

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    move-object v5, v4

    const-string/jumbo v6, "POST"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "{\"app_id\": \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/PushNotifications;->appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\",\"included_segments\": [\"All\"],\"headings\": {\"en\": \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\"},\"contents\": {\"en\": \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\"}}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 412
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_1

    .line 413
    move-object v5, v1

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    move-object v1, v5

    .line 417
    :goto_0
    move-object v5, v4

    move-object v6, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 418
    move-object v5, v4

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 419
    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 421
    move-object v5, v4

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_1
    move v1, v5

    .line 426
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 427
    move-object v5, v4

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 421
    :cond_0
    move v5, v1

    move v0, v5

    .line 424
    :goto_2
    return v0

    .line 415
    :cond_1
    move-object v5, v1

    :try_start_1
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 421
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 422
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 423
    :try_start_2
    const-string/jumbo v5, "Push Notifications"

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .line 426
    move-object v5, v4

    if-eqz v5, :cond_3

    .line 427
    move-object v5, v4

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 424
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_2

    .line 426
    :catchall_0
    move-exception v5

    move-object v1, v5

    move-object v5, v4

    if-eqz v5, :cond_4

    .line 427
    move-object v5, v4

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 429
    :cond_4
    move-object v5, v1

    throw v5
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/PushNotifications;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/PushNotifications;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    return v0
.end method


# virtual methods
.method public final ClearAllNotifications()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear All Notifications."
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/onesignal/OneSignal;->clearOneSignalNotifications()V

    .line 169
    return-void
.end method

.method public final DeleteTag(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes a single tag that was previously set on a user."
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Lcom/onesignal/OneSignal;->deleteTag(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public final EnableLog(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If you want to enable the log then set it to true."
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 174
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->setLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;Lcom/onesignal/OneSignal$LOG_LEVEL;)V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->setLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;Lcom/onesignal/OneSignal$LOG_LEVEL;)V

    .line 180
    goto :goto_0
.end method

.method public final EnableSound(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Enable Sound."
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Lcom/onesignal/OneSignal;->enableSound(Z)V

    .line 190
    return-void
.end method

.method public final EnableVibration(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Enable Vibration."
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Lcom/onesignal/OneSignal;->enableVibrate(Z)V

    .line 185
    return-void
.end method

.method public final GetAvailableTags()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get a list of available tags."
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    new-instance v1, Lcom/google/appinventor/components/runtime/PushNotifications$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/PushNotifications$1;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method public final GetEmailSubscriptionEmailAddress()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the email subscription email address."
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSPermissionSubscriptionState;->getEmailSubscriptionStatus()Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSEmailSubscriptionState;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 206
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 207
    move-object v2, v1

    move-object v0, v2

    .line 209
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public final GetEmailSubscriptionUserId()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the email subscription user id."
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSPermissionSubscriptionState;->getEmailSubscriptionStatus()Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSEmailSubscriptionState;->getEmailUserId()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 196
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 197
    move-object v2, v1

    move-object v0, v2

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public final GetPermissionStatus()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get Permission Status"
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lcom/onesignal/OSPermissionSubscriptionState;->getPermissionStatus()Lcom/onesignal/OSPermissionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/OSPermissionState;->getEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final GetSubscriptionStatus()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the subscription Status"
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    :try_start_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lcom/onesignal/OSPermissionSubscriptionState;->getSubscriptionStatus()Lcom/onesignal/OSSubscriptionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/OSSubscriptionState;->getSubscribed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v0, v1

    .line 142
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public final GetUserId()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the User ID. If there is no user id it will return \'-1\'."
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    :try_start_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 151
    move-object v1, v3

    invoke-virtual {v2}, Lcom/onesignal/OSPermissionSubscriptionState;->getSubscriptionStatus()Lcom/onesignal/OSSubscriptionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSSubscriptionState;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 152
    const-string/jumbo v2, "-1"

    move-object v0, v2

    .line 157
    :goto_0
    return-object v0

    .line 154
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lcom/onesignal/OSPermissionSubscriptionState;->getSubscriptionStatus()Lcom/onesignal/OSSubscriptionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSSubscriptionState;->getUserId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    const-string/jumbo v2, "-1"

    move-object v0, v2

    goto :goto_0
.end method

.method public final GetValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get value for tag."
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/google/appinventor/components/runtime/PushNotifications$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/PushNotifications$2;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method public final GotAvailableTags(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect available one signal tags."
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/PushNotifications;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/google/appinventor/components/runtime/PushNotifications$3;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/PushNotifications$3;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 287
    return-void
.end method

.method public final GotValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to receive value for a tag."
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/PushNotifications;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/google/appinventor/components/runtime/PushNotifications$4;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/PushNotifications$4;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 296
    return-void
.end method

.method public final NotificationOpened(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User opened a notification."
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    const-string/jumbo v5, "NotificationOpened"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    .line 354
    return-void
.end method

.method public final NotificationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User received a notification."
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    const-string/jumbo v5, "NotificationReceived"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    .line 330
    return-void
.end method

.method public final OneSignalAppId(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set here your One Signal App ID"
        userVisible = false
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/PushNotifications;->appId:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public final SendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a message to all users. The message and your REST Api Key can not be empty! You will find your REST Api Key in your OneSignal account settings."
    .end annotation

    .prologue
    .line 360
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v4, v8

    move-object v3, v7

    move-object v2, v6

    move-object v1, v5

    .line 1370
    new-instance v5, Lcom/google/appinventor/components/runtime/PushNotifications$5;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/PushNotifications$5;-><init>(Lcom/google/appinventor/components/runtime/PushNotifications;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Integer;

    .line 1384
    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/PushNotifications$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    .line 361
    return-void
.end method

.method public final SendMessageDone(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Returns true if your message was send with success out of your app to all users."
    .end annotation

    .prologue
    .line 365
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "SendMessageDone"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 366
    return-void
.end method

.method public final SendTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Tag a user based on an app event of your choosing so later you can create segments in to target these users."
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/onesignal/OneSignal;->sendTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    return-void
.end method

.method public final SetSubscription(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If you want to subscribe then set it to true."
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Lcom/onesignal/OneSignal;->setSubscription(Z)V

    .line 164
    return-void
.end method
