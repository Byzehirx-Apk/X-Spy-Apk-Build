.class public Landroidx/core/app/ActivityCompat;
.super Landroidx/core/content/ContextCompat;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;,
        Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;,
        Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;,
        Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
    }
.end annotation


# static fields
.field private static sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ActivityCompat;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/content/ContextCompat;-><init>()V

    .line 151
    return-void
.end method

.method public static finishAffinity(Landroid/app/Activity;)V
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 288
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->finishAffinity()V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static finishAfterTransition(Landroid/app/Activity;)V
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 305
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->finishAfterTransition()V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static getPermissionCompatDelegate()Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 169
    sget-object v0, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    return-object v0
.end method

.method public static getReferrer(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-lt v4, v5, :cond_0

    .line 330
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v4

    move-object v0, v4

    .line 341
    .end local v0    # "activity":Landroid/app/Activity;
    .local v1, "intent":Landroid/content/Intent;
    .local v2, "referrer":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 332
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "referrer":Landroid/net/Uri;
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    move-object v1, v4

    .line 333
    .restart local v1    # "intent":Landroid/content/Intent;
    move-object v4, v1

    const-string/jumbo v5, "android.intent.extra.REFERRER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    move-object v2, v4

    .line 334
    .restart local v2    # "referrer":Landroid/net/Uri;
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 335
    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    .line 337
    :cond_1
    move-object v4, v1

    const-string/jumbo v5, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 338
    .local v3, "referrerName":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 339
    move-object v4, v3

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 341
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 208
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "activity":Landroid/app/Activity;
    return v0
.end method

.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 412
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->postponeEnterTransition()V

    .line 414
    :cond_0
    return-void
.end method

.method public static requestDragAndDropPermissions(Landroid/app/Activity;Landroid/view/DragEvent;)Landroidx/core/view/DragAndDropPermissionsCompat;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .local v1, "dragEvent":Landroid/view/DragEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/view/DragAndDropPermissionsCompat;->request(Landroid/app/Activity;Landroid/view/DragEvent;)Landroidx/core/view/DragAndDropPermissionsCompat;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "activity":Landroid/app/Activity;
    return-object v0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 11
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .local v1, "permissions":[Ljava/lang/String;
    move v2, p2

    .local v2, "requestCode":I
    sget-object v4, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    if-eqz v4, :cond_0

    sget-object v4, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    .line 492
    invoke-interface {v4, v5, v6, v7}, Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 494
    .line 524
    :goto_0
    return-void

    .line 497
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_3

    .line 498
    move-object v4, v0

    instance-of v4, v4, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    if-eqz v4, :cond_1

    .line 499
    move-object v4, v0

    check-cast v4, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    move v5, v2

    .line 500
    invoke-interface {v4, v5}, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 502
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 524
    :cond_2
    :goto_1
    goto :goto_0

    .line 503
    :cond_3
    move-object v4, v0

    instance-of v4, v4, Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;

    if-eqz v4, :cond_2

    .line 504
    new-instance v4, Landroid/os/Handler;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v3, v4

    .line 505
    .local v3, "handler":Landroid/os/Handler;
    move-object v4, v3

    new-instance v5, Landroidx/core/app/ActivityCompat$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v0

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Landroidx/core/app/ActivityCompat$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    goto :goto_1
.end method

.method public static requireViewById(Landroid/app/Activity;I)Landroid/view/View;
    .locals 7
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move v1, p1

    .local v1, "id":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    .line 363
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .line 370
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v0

    .line 366
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 367
    .local v2, "view":Landroid/view/View;, "TT;"
    move-object v3, v2

    if-nez v3, :cond_1

    .line 368
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "ID does not reference a View inside this Activity"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 370
    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V
    .locals 7
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/app/SharedElementCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .local v1, "callback":Landroidx/core/app/SharedElementCallback;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 384
    move-object v3, v1

    if-eqz v3, :cond_1

    new-instance v3, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroidx/core/app/SharedElementCallback;)V

    :goto_0
    move-object v2, v3

    .line 387
    .local v2, "frameworkCallback":Landroid/app/SharedElementCallback;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 389
    .end local v2    # "frameworkCallback":Landroid/app/SharedElementCallback;
    :cond_0
    return-void

    .line 384
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V
    .locals 7
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/app/SharedElementCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .local v1, "callback":Landroidx/core/app/SharedElementCallback;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 403
    move-object v3, v1

    if-eqz v3, :cond_1

    new-instance v3, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroidx/core/app/SharedElementCallback;)V

    :goto_0
    move-object v2, v3

    .line 406
    .local v2, "frameworkCallback":Landroid/app/SharedElementCallback;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 408
    .end local v2    # "frameworkCallback":Landroid/app/SharedElementCallback;
    :cond_0
    return-void

    .line 403
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setPermissionCompatDelegate(Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;)V
    .locals 2
    .param p0    # Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "delegate":Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;
    move-object v1, v0

    sput-object v1, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    .line 162
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 548
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .local v1, "permission":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 549
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 551
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return v0

    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 8
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move v2, p2

    .local v2, "requestCode":I
    move-object v3, p3

    .local v3, "options":Landroid/os/Bundle;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 234
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 16
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 270
    move-object/from16 v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move-object/from16 v1, p1

    .local v1, "intent":Landroid/content/IntentSender;
    move/from16 v2, p2

    .local v2, "requestCode":I
    move-object/from16 v3, p3

    .local v3, "fillInIntent":Landroid/content/Intent;
    move/from16 v4, p4

    .local v4, "flagsMask":I
    move/from16 v5, p5

    .local v5, "flagsValues":I
    move/from16 v6, p6

    .local v6, "extraFlags":I
    move-object/from16 v7, p7

    .local v7, "options":Landroid/os/Bundle;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_0

    .line 271
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move-object v15, v7

    invoke-virtual/range {v8 .. v15}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 277
    :goto_0
    return-void

    .line 274
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-virtual/range {v8 .. v14}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 418
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->startPostponedEnterTransition()V

    .line 420
    :cond_0
    return-void
.end method
