.class public final Lcom/google/appinventor/components/runtime/NotificationComponent;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to send a notification to the users device"
    iconName = "images/notification.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:I

.field private ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

.field private o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 50
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:I

    .line 63
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 64
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    .line 66
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    invoke-static {v3}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    .line 67
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;
    .locals 8

    .prologue
    .line 380
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v2, v4

    .line 381
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 382
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 383
    move-object v2, v5

    const-string/jumbo v5, "APP_INVENTOR_START"

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 384
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public final AreNotificationsEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check whether the app can send Notifications"
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v1}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final CancelAll()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Cancel all Notifications"
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v1}, Landroidx/core/app/NotificationManagerCompat;->cancelAll()V

    .line 225
    const-string/jumbo v1, "NotificationComponent"

    const-string/jumbo v2, "All Notifications Cancelled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 226
    return-void
.end method

.method public final CancelNotification(I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Cancel a Notification with an id"
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 234
    const-string/jumbo v2, "NotificationComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Notification with id "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " canceled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 235
    return-void
.end method

.method public final NotificationBuilderAndroidCar(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the accent color for Android Car devices"
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v3, Landroidx/core/app/NotificationCompat$CarExtender;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$CarExtender;-><init>()V

    move v4, v1

    .line 316
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$CarExtender;->setColor(I)Landroidx/core/app/NotificationCompat$CarExtender;

    move-result-object v3

    .line 315
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 318
    const-string/jumbo v2, "NotificationComponent"

    const-string/jumbo v3, "Android Car Accent Color Added"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 319
    return-void
.end method

.method public final NotificationBuilderAndroidWear(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the background image for Android Wear devices"
    .end annotation

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    :goto_0
    move-object v1, v2

    .line 301
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v1, v2

    .line 306
    .line 307
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v3, Landroidx/core/app/NotificationCompat$WearableExtender;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$WearableExtender;-><init>()V

    move-object v4, v1

    .line 308
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$WearableExtender;->setBackground(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$WearableExtender;

    move-result-object v3

    .line 307
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 310
    const-string/jumbo v2, "NotificationComponent"

    const-string/jumbo v3, "Android Wear Background Image Added"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 311
    :goto_1
    return-void

    .line 298
    :cond_0
    move-object v2, v1

    goto :goto_0

    .line 302
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 303
    const-string/jumbo v2, "Notification IOException"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 305
    goto :goto_1
.end method

.method public final NotificationBuilderAutoCancel(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set whether the notification should me removed after the user clicks on it."
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 267
    const-string/jumbo v2, "NotificationComponent"

    const-string/jumbo v3, "Notification Auto Cancel Added"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 268
    return-void
.end method

.method public final NotificationBuilderBigPicture(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the big picture for the notification"
    .end annotation

    .prologue
    .line 280
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    :goto_0
    move-object v1, v2

    .line 283
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v1, v2

    .line 288
    .line 289
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v3, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    move-object v4, v1

    .line 290
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v3

    .line 289
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 292
    const-string/jumbo v2, "NotificationComponent"

    const-string/jumbo v3, "Notifications Big Picture Added"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 293
    :goto_1
    return-void

    .line 280
    :cond_0
    move-object v2, v1

    goto :goto_0

    .line 284
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 285
    const-string/jumbo v2, "Notification IOException"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 287
    goto :goto_1
.end method

.method public final NotificationBuilderID(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the notification id."
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:I

    .line 255
    const-string/jumbo v2, "NotificationComponent"

    const-string/jumbo v3, "Notification ID Added"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 256
    return-void
.end method

.method public final NotificationBuilderPriority(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the notification builder priority. 1 = \"Default\", 2 = \"high\", 3 = \"low\", 4 = \"max\", 5 = \"min\""
    .end annotation

    .prologue
    .line 323
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 340
    const/4 v2, 0x0

    move v1, v2

    .line 343
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 344
    const-string/jumbo v2, "NotificationComponent"

    const-string/jumbo v3, "Notification Priority Added"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 345
    return-void

    .line 325
    :pswitch_0
    const/4 v2, 0x0

    move v1, v2

    .line 326
    goto :goto_0

    .line 328
    :pswitch_1
    const/4 v2, 0x1

    move v1, v2

    .line 329
    goto :goto_0

    .line 331
    :pswitch_2
    const/4 v2, -0x1

    move v1, v2

    .line 332
    goto :goto_0

    .line 334
    :pswitch_3
    const/4 v2, 0x2

    move v1, v2

    .line 335
    goto :goto_0

    .line 337
    :pswitch_4
    const/4 v2, -0x2

    move v1, v2

    .line 338
    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final NotificationBuilderSend()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send the notification that you build"
    .end annotation

    .prologue
    .line 372
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:I

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 373
    const-string/jumbo v1, "NotificationComponent"

    const-string/jumbo v2, "Notification Send"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 374
    return-void
.end method

.method public final NotificationBuilderStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start building a new notification"
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/NotificationComponent;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:I

    .line 243
    move-object v3, v0

    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v5, v1

    .line 244
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    move-object v5, v2

    .line 245
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x108009b

    .line 246
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 247
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    move-object v7, v0

    const-string/jumbo v8, ""

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    .line 249
    const-string/jumbo v3, "NotificationComponent"

    const-string/jumbo v4, "Notification Building Started"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 250
    return-void
.end method

.method public final NotificationBuilderStartValue(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the start value of the notification."
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 261
    const-string/jumbo v2, "NotificationComponent"

    const-string/jumbo v3, "Notification Start Value Added"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 262
    return-void
.end method

.method public final NotificationBuilderVisibility(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the notification builder visibility. 1 = \"public\", 2 = \"private\", 3 = \"secret\"."
    .end annotation

    .prologue
    .line 349
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 360
    const/4 v2, 0x1

    move v1, v2

    .line 363
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 364
    const-string/jumbo v2, "NotificationComponent"

    const-string/jumbo v3, "Notification Visiblity Added"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 365
    return-void

    .line 351
    :pswitch_0
    const/4 v2, 0x1

    move v1, v2

    .line 352
    goto :goto_0

    .line 354
    :pswitch_1
    const/4 v2, 0x0

    move v1, v2

    .line 355
    goto :goto_0

    .line 357
    :pswitch_2
    const/4 v2, -0x1

    move v1, v2

    .line 358
    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final Priority()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Priority of the notification"
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    const-string/jumbo v1, "NotificationComponent"

    const-string/jumbo v2, "Notification Priority returned"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 126
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/NotificationComponent;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    move v0, v1

    return v0
.end method

.method public final Priority(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "notification_priority"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the priority level. 1 = \"Default\", 2 = \"high\", 3 = \"low\", 4 = \"max\", 5 = \"min\""
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 112
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 115
    :goto_0
    const-string/jumbo v2, "NotificationComponent"

    const-string/jumbo v3, "Notification Priority set"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 116
    return-void

    .line 97
    :pswitch_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 98
    goto :goto_0

    .line 100
    :pswitch_1
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 101
    goto :goto_0

    .line 103
    :pswitch_2
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 104
    goto :goto_0

    .line 106
    :pswitch_3
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 107
    goto :goto_0

    .line 109
    :pswitch_4
    move-object v2, v0

    const/4 v3, -0x2

    iput v3, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 110
    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final SendAdvancedNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a advanced notification (Android Wear Support)"
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    new-instance v7, Landroidx/core/app/NotificationCompat$Builder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v8, v2

    .line 199
    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    move-object v8, v3

    .line 200
    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    const v8, 0x108009b

    .line 201
    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/NotificationComponent;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 203
    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/NotificationComponent;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:I

    .line 204
    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    const/4 v8, 0x1

    .line 205
    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v9, v9

    move-object v10, v0

    move-object v11, v4

    invoke-direct {v10, v11}, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    move-object v2, v7

    .line 207
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    move v8, v1

    move-object v9, v2

    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 208
    const-string/jumbo v7, "NotificationComponent"

    const-string/jumbo v8, "Advanced Notification Send"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 209
    return-void
.end method

.method public final SendNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a notification"
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    move-object v4, v1

    .line 77
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    move-object v4, v2

    .line 78
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x108009b

    .line 79
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/NotificationComponent;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 80
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/NotificationComponent;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:I

    .line 81
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 83
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-int v5, v5

    move-object v6, v0

    const-string/jumbo v7, ""

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    move-object v1, v3

    .line 85
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 86
    const-string/jumbo v3, "NotificationComponent"

    const-string/jumbo v4, "Notification Send"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 87
    return-void
.end method

.method public final Visiblity()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Visiblity of the notification"
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    const-string/jumbo v1, "NotificationComponent"

    const-string/jumbo v2, "Notification Visibity returned"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 160
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/NotificationComponent;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:I

    move v0, v1

    return v0
.end method

.method public final Visiblity(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "notification_visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the visibility property. 1 = \"public\", 2 = \"private\", 3 = \"secret\"."
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 146
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:I

    .line 149
    :goto_0
    const-string/jumbo v2, "NotificationComponent"

    const-string/jumbo v3, "Notification Visibity set"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 150
    return-void

    .line 137
    :pswitch_0
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:I

    .line 138
    goto :goto_0

    .line 140
    :pswitch_1
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:I

    .line 141
    goto :goto_0

    .line 143
    :pswitch_2
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/NotificationComponent;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:I

    .line 144
    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
