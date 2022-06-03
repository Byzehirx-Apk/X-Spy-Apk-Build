.class public final Landroidx/browser/customtabs/CustomTabsIntent$Builder;
.super Ljava/lang/Object;
.source "CustomTabsIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomTabsIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActionButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mInstantAppsEnabled:Z

.field private final mIntent:Landroid/content/Intent;

.field private mMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mStartAnimationBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 288
    return-void
.end method

.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsSession;)V
    .locals 8
    .param p1    # Landroidx/browser/customtabs/CustomTabsSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    move-object v1, p1

    .local v1, "session":Landroidx/browser/customtabs/CustomTabsSession;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 276
    move-object v3, v0

    new-instance v4, Landroid/content/Intent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    .line 277
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    .line 278
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mStartAnimationBundle:Landroid/os/Bundle;

    .line 279
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    .line 280
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mInstantAppsEnabled:Z

    .line 300
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/browser/customtabs/CustomTabsSession;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 301
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 302
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v3, v2

    const-string/jumbo v4, "android.support.customtabs.extra.SESSION"

    move-object v5, v1

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    invoke-static {v3, v4, v5}, Landroidx/core/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 304
    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    .line 305
    return-void

    .line 302
    :cond_1
    move-object v5, v1

    .line 303
    invoke-virtual {v5}, Landroidx/browser/customtabs/CustomTabsSession;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public addDefaultShareMenuItem()Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 4

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.support.customtabs.extra.SHARE_MENU_ITEM"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 366
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    return-object v0
.end method

.method public addMenuItem(Ljava/lang/String;Landroid/app/PendingIntent;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    move-object v1, p1

    .local v1, "label":Ljava/lang/String;
    move-object v2, p2

    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    move-object v4, v0

    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    .line 354
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v3, v4

    .line 355
    .local v3, "bundle":Landroid/os/Bundle;
    move-object v4, v3

    const-string/jumbo v5, "android.support.customtabs.customaction.MENU_ITEM_TITLE"

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    move-object v4, v3

    const-string/jumbo v5, "android.support.customtabs.customaction.PENDING_INTENT"

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 357
    move-object v4, v0

    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 358
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    return-object v0
.end method

.method public addToolbarItem(ILandroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 10
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "icon":Landroid/graphics/Bitmap;
    move-object v3, p3

    .local v3, "description":Ljava/lang/String;
    move-object v4, p4

    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 428
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    .line 430
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x5

    if-lt v6, v7, :cond_1

    .line 431
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "Exceeded maximum toolbar item count of 5"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 434
    :cond_1
    new-instance v6, Landroid/os/Bundle;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v5, v6

    .line 435
    .local v5, "bundle":Landroid/os/Bundle;
    move-object v6, v5

    const-string/jumbo v7, "android.support.customtabs.customaction.ID"

    move v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    move-object v6, v5

    const-string/jumbo v7, "android.support.customtabs.customaction.ICON"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 437
    move-object v6, v5

    const-string/jumbo v7, "android.support.customtabs.customaction.DESCRIPTION"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    move-object v6, v5

    const-string/jumbo v7, "android.support.customtabs.customaction.PENDING_INTENT"

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 439
    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 440
    move-object v6, v0

    move-object v0, v6

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    return-object v0
.end method

.method public build()Landroidx/browser/customtabs/CustomTabsIntent;
    .locals 6

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 520
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.support.customtabs.extra.MENU_ITEMS"

    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    .line 522
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 523
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mActionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    .line 525
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mInstantAppsEnabled:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 526
    new-instance v1, Landroidx/browser/customtabs/CustomTabsIntent;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    move-object v4, v0

    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mStartAnimationBundle:Landroid/os/Bundle;

    invoke-direct {v2, v3, v4}, Landroidx/browser/customtabs/CustomTabsIntent;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    return-object v0
.end method

.method public enableUrlBarHiding()Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 4

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.support.customtabs.extra.ENABLE_URLBAR_HIDING"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 322
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    return-object v0
.end method

.method public setActionButton(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 9
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/Bitmap;
    move-object v2, p2

    .local v2, "description":Ljava/lang/String;
    move-object v3, p3

    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setActionButton(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    return-object v0
.end method

.method public setActionButton(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 10
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/Bitmap;
    move-object v2, p2

    .local v2, "description":Ljava/lang/String;
    move-object v3, p3

    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    move v4, p4

    .local v4, "shouldTint":Z
    new-instance v6, Landroid/os/Bundle;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object v5, v6

    .line 386
    .local v5, "bundle":Landroid/os/Bundle;
    move-object v6, v5

    const-string/jumbo v7, "android.support.customtabs.customaction.ID"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 387
    move-object v6, v5

    const-string/jumbo v7, "android.support.customtabs.customaction.ICON"

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 388
    move-object v6, v5

    const-string/jumbo v7, "android.support.customtabs.customaction.DESCRIPTION"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    move-object v6, v5

    const-string/jumbo v7, "android.support.customtabs.customaction.PENDING_INTENT"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 390
    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v7, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    .line 391
    move-object v6, v0

    iget-object v6, v6, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v7, "android.support.customtabs.extra.TINT_ACTION_BUTTON"

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    .line 392
    move-object v6, v0

    move-object v0, v6

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    return-object v0
.end method

.method public setCloseButtonIcon(Landroid/graphics/Bitmap;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 5
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/Bitmap;
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.support.customtabs.extra.CLOSE_BUTTON_ICON"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 332
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    return-object v0
.end method

.method public setExitAnimations(Landroid/content/Context;II)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "enterResId":I
    move v3, p3

    .local v3, "exitResId":I
    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-static {v5, v6, v7}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v5

    .line 509
    invoke-virtual {v5}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    move-object v4, v5

    .line 510
    .local v4, "bundle":Landroid/os/Bundle;
    move-object v5, v0

    iget-object v5, v5, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v6, "android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE"

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    .line 511
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    return-object v0
.end method

.method public setInstantAppsEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 4

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mInstantAppsEnabled:Z

    .line 482
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    return-object v0
.end method

.method public setSecondaryToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR"

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 449
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    return-object v0
.end method

.method public setSecondaryToolbarViews(Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 7
    .param p1    # Landroid/widget/RemoteViews;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    move-object v1, p1

    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    move-object v2, p2

    .local v2, "clickableIDs":[I
    move-object v3, p3

    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    move-object v4, v0

    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS"

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    .line 470
    move-object v4, v0

    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS"

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v4

    .line 471
    move-object v4, v0

    iget-object v4, v4, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    .line 472
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    return-object v0
.end method

.method public setShowTitle(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 5

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    move v1, p1

    .local v1, "showTitle":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.support.customtabs.extra.TITLE_VISIBILITY"

    move v4, v1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 343
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    return-object v0

    .line 341
    .restart local v0    # "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setStartAnimations(Landroid/content/Context;II)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "enterResId":I
    move v3, p3

    .local v3, "exitResId":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-static {v5, v6, v7}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v5

    .line 495
    invoke-virtual {v5}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, v4, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mStartAnimationBundle:Landroid/os/Bundle;

    .line 496
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    return-object v0
.end method

.method public setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.support.customtabs.extra.TOOLBAR_COLOR"

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 314
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    return-object v0
.end method
