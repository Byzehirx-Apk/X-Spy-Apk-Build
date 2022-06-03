.class public Lcom/google/appinventor/components/runtime/MakeroidNotification;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to send a notification to the users device"
    iconName = "images/notification.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Ljava/lang/String;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

.field private o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

.field private xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 48
    move-object v2, v0

    const-string/jumbo v3, "MakeroidNotification"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Ljava/lang/String;

    .line 53
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 54
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    .line 56
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->Priority(I)V

    .line 57
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->Visiblity(I)V

    .line 59
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE()V

    .line 60
    return-void
.end method

.method public static ScreenshotNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZZLandroid/graphics/Bitmap;)V
    .locals 18

    .prologue
    .line 210
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    const-string/jumbo v12, "MakeroidScreenshot"

    move-object v9, v12

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    move v10, v12

    .line 213
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    .line 214
    move-object v11, v13

    const-string/jumbo v13, "android.intent.action.VIEW"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 215
    move-object v12, v11

    move-object v13, v5

    const-string/jumbo v14, "image/*"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 217
    new-instance v12, Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    move-object v15, v9

    invoke-direct {v13, v14, v15}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v13, v2

    .line 218
    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    move-object v13, v3

    .line 219
    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    const v13, 0x108003f

    .line 220
    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    move-object v13, v1

    const/4 v14, 0x0

    move-object v15, v11

    const/16 v16, 0x0

    .line 221
    invoke-static/range {v13 .. v16}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x0

    .line 222
    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x1

    .line 223
    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    move-object v2, v12

    .line 225
    move v12, v7

    if-eqz v12, :cond_0

    .line 226
    move-object v12, v2

    new-instance v13, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    move-object v14, v8

    invoke-virtual {v13, v14}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    .line 229
    :cond_0
    move v12, v6

    if-eqz v12, :cond_1

    .line 230
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    .line 231
    move-object v3, v13

    const-string/jumbo v13, "android.intent.action.SEND"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 232
    move-object v12, v3

    const-string/jumbo v13, "android.intent.extra.STREAM"

    move-object v14, v5

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v12

    .line 233
    move-object v12, v3

    const-string/jumbo v13, "EXTRA_DETAILS_ID"

    move v14, v10

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    .line 234
    move-object v12, v3

    const-string/jumbo v13, "image/*"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 236
    move-object v12, v1

    const/4 v13, 0x0

    move-object v14, v3

    const/high16 v15, 0x10000000

    invoke-static {v12, v13, v14, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    move-object v5, v12

    .line 238
    move-object v12, v2

    const v13, 0x1080052

    move-object v14, v4

    move-object v15, v5

    invoke-virtual {v12, v13, v14, v15}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    .line 241
    :cond_1
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1a

    if-lt v12, v13, :cond_2

    .line 242
    new-instance v12, Landroid/app/NotificationChannel;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v9

    const-string/jumbo v15, "Makeroid"

    const/16 v16, 0x3

    invoke-direct/range {v13 .. v16}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    .line 243
    move-object v3, v13

    const-string/jumbo v13, "Makeroid Notification Channel"

    invoke-virtual {v12, v13}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 244
    move-object v12, v1

    const-class v13, Landroid/app/NotificationManager;

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 245
    move-object v13, v3

    invoke-virtual {v12, v13}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 248
    :cond_2
    move-object v12, v1

    invoke-static {v12}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v12

    .line 250
    move v13, v10

    move-object v14, v2

    invoke-virtual {v14}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 251
    const-string/jumbo v12, "MakeroidNotification"

    const-string/jumbo v13, "Notification Send"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 252
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;
    .locals 8

    .prologue
    .line 286
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v2, v4

    .line 287
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 288
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 289
    move-object v2, v5

    if-eqz v4, :cond_0

    .line 290
    move-object v4, v2

    const-string/jumbo v5, "APP_INVENTOR_START"

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 292
    :cond_0
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method

.method private vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE()V
    .locals 8

    .prologue
    .line 296
    move-object v0, p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 297
    new-instance v2, Landroid/app/NotificationChannel;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidNotification;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Ljava/lang/String;

    const-string/jumbo v5, "Makeroid"

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidNotification;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:I

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    .line 298
    move-object v1, v3

    const-string/jumbo v3, "Makeroid Notification Channel"

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 299
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 300
    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 303
    :cond_0
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    invoke-static {v3}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    .line 304
    return-void
.end method


# virtual methods
.method public AreNotificationsEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check wether the app can send Notifications"
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v1}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public BigPictureNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a normal notification"
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    const/4 v8, 0x0

    move-object v7, v8

    .line 184
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/google/appinventor/components/runtime/MakeroidNotification;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v8}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v8

    move-object v9, v4

    invoke-static {v8, v9}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v7, v8

    .line 187
    .line 189
    :goto_0
    new-instance v8, Landroidx/core/app/NotificationCompat$Builder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    move-object v11, v0

    iget-object v11, v11, Lcom/google/appinventor/components/runtime/MakeroidNotification;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v9, 0x108009b

    .line 190
    invoke-virtual {v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    move-object v9, v2

    .line 191
    invoke-virtual {v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    move-object v9, v3

    .line 192
    invoke-virtual {v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    new-instance v9, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    move-object v10, v7

    .line 194
    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v9

    const/4 v10, 0x0

    .line 195
    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v9

    .line 193
    invoke-virtual {v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    move-object v9, v7

    .line 196
    invoke-virtual {v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Lcom/google/appinventor/components/runtime/MakeroidNotification;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 197
    invoke-virtual {v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Lcom/google/appinventor/components/runtime/MakeroidNotification;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:I

    .line 198
    invoke-virtual {v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    move v9, v6

    .line 199
    invoke-virtual {v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    const/4 v10, 0x0

    move-object v11, v0

    move-object v12, v5

    .line 200
    invoke-direct {v11, v12}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    move-object v4, v8

    .line 202
    move-object v8, v0

    invoke-direct {v8}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE()V

    .line 204
    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    move v9, v1

    move-object v10, v4

    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 205
    const-string/jumbo v8, "MakeroidNotification"

    const-string/jumbo v9, "Notification Send"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 206
    return-void

    .line 185
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 186
    const-string/jumbo v8, "MakeroidNotification"

    move-object v9, v4

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_0
.end method

.method public CancelAll()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Cancel all Notifications"
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v1}, Landroidx/core/app/NotificationManagerCompat;->cancelAll()V

    .line 268
    const-string/jumbo v1, "MakeroidNotification"

    const-string/jumbo v2, "All Notifications Cancelled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 269
    return-void
.end method

.method public CancelNotification(I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Cancel a Notification with an id"
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 277
    const-string/jumbo v2, "MakeroidNotification"

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

    .line 278
    return-void
.end method

.method public NormalNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a normal notification"
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    new-instance v6, Landroidx/core/app/NotificationCompat$Builder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/MakeroidNotification;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v7, 0x108009b

    .line 164
    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    move-object v7, v2

    .line 165
    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    move-object v7, v3

    .line 166
    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v7, Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object v8, v3

    .line 168
    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    .line 167
    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/MakeroidNotification;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 169
    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/MakeroidNotification;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:I

    .line 170
    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    move v7, v5

    .line 171
    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    const/4 v8, 0x0

    move-object v9, v0

    move-object v10, v4

    .line 172
    invoke-direct {v9, v10}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    move-object v2, v6

    .line 174
    move-object v6, v0

    invoke-direct {v6}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE()V

    .line 176
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    move v7, v1

    move-object v8, v2

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 177
    const-string/jumbo v6, "MakeroidNotification"

    const-string/jumbo v7, "Notification Send"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 178
    return-void
.end method

.method public Priority()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Priority of the notification"
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    const-string/jumbo v1, "MakeroidNotification"

    const-string/jumbo v2, "Notification Priority returned"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 109
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidNotification;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    move v0, v1

    return v0
.end method

.method public Priority(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "notification_priority"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the priority level. 1 = \"Default\", 2 = \"high\", 3 = \"low\", 4 = \"max\", 5 = \"min\""
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 94
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 95
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 96
    move-object v2, v0

    const/4 v3, 0x3

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:I

    .line 100
    :cond_0
    :goto_0
    const-string/jumbo v2, "MakeroidNotification"

    const-string/jumbo v3, "Notification Priority set"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 101
    return-void

    .line 70
    :pswitch_0
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 71
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 72
    move-object v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:I

    goto :goto_0

    .line 76
    :pswitch_1
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 77
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 78
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:I

    goto :goto_0

    .line 82
    :pswitch_2
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 83
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 84
    move-object v2, v0

    const/4 v3, 0x5

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:I

    goto :goto_0

    .line 88
    :pswitch_3
    move-object v2, v0

    const/4 v3, -0x2

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 89
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 90
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:I

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public SimpleNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a simple notification"
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidNotification;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x108009b

    .line 145
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    move-object v4, v1

    .line 146
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    move-object v4, v2

    .line 147
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v4, Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object v5, v2

    .line 149
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v4

    .line 148
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidNotification;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:I

    .line 150
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidNotification;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:I

    .line 151
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 152
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v6, v0

    const-string/jumbo v7, ""

    .line 153
    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    move-object v1, v3

    .line 155
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE()V

    .line 157
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 158
    const-string/jumbo v3, "MakeroidNotification"

    const-string/jumbo v4, "Notification Send"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 159
    return-void
.end method

.method public Visiblity()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Visibility of the notification"
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    const-string/jumbo v1, "MakeroidNotification"

    const-string/jumbo v2, "Notification Visibility returned"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 138
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidNotification;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:I

    move v0, v1

    return v0
.end method

.method public Visiblity(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "notification_visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the visibility property. 1 = \"public\", 2 = \"private\", 3 = \"secret\"."
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 126
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:I

    .line 129
    :goto_0
    const-string/jumbo v2, "MakeroidNotification"

    const-string/jumbo v3, "Notification Visibility set"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 130
    return-void

    .line 120
    :pswitch_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:I

    .line 121
    goto :goto_0

    .line 123
    :pswitch_1
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNotification;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:I

    .line 124
    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
