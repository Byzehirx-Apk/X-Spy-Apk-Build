.class public Landroidx/browser/browseractions/BrowserActionsIntent;
.super Ljava/lang/Object;
.source "BrowserActionsIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/browseractions/BrowserActionsIntent$Builder;,
        Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsFallDialogListener;,
        Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsItemId;,
        Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsUrlType;
    }
.end annotation


# static fields
.field public static final ACTION_BROWSER_ACTIONS_OPEN:Ljava/lang/String; = "androidx.browser.browseractions.browser_action_open"

.field public static final EXTRA_APP_ID:Ljava/lang/String; = "androidx.browser.browseractions.APP_ID"

.field public static final EXTRA_MENU_ITEMS:Ljava/lang/String; = "androidx.browser.browseractions.extra.MENU_ITEMS"

.field public static final EXTRA_SELECTED_ACTION_PENDING_INTENT:Ljava/lang/String; = "androidx.browser.browseractions.extra.SELECTED_ACTION_PENDING_INTENT"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "androidx.browser.browseractions.extra.TYPE"

.field public static final ITEM_COPY:I = 0x3

.field public static final ITEM_DOWNLOAD:I = 0x2

.field public static final ITEM_INVALID_ITEM:I = -0x1

.field public static final ITEM_OPEN_IN_INCOGNITO:I = 0x1

.field public static final ITEM_OPEN_IN_NEW_TAB:I = 0x0

.field public static final ITEM_SHARE:I = 0x4

.field public static final KEY_ACTION:Ljava/lang/String; = "androidx.browser.browseractions.ACTION"

.field public static final KEY_ICON_ID:Ljava/lang/String; = "androidx.browser.browseractions.ICON_ID"

.field public static final KEY_TITLE:Ljava/lang/String; = "androidx.browser.browseractions.TITLE"

.field public static final MAX_CUSTOM_ITEMS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BrowserActions"

.field private static final TEST_URL:Ljava/lang/String; = "https://www.example.com"

.field public static final URL_TYPE_AUDIO:I = 0x3

.field public static final URL_TYPE_FILE:I = 0x4

.field public static final URL_TYPE_IMAGE:I = 0x1

.field public static final URL_TYPE_NONE:I = 0x0

.field public static final URL_TYPE_PLUGIN:I = 0x5

.field public static final URL_TYPE_VIDEO:I = 0x2

.field private static sDialogListenter:Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsFallDialogListener;


# instance fields
.field private final mIntent:Landroid/content/Intent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsIntent;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 154
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/browser/browseractions/BrowserActionsIntent;->mIntent:Landroid/content/Intent;

    .line 155
    return-void
.end method

.method private static getBrowserActionsIntentHandlers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "androidx.browser.browseractions.browser_action_open"

    const-string/jumbo v6, "https://www.example.com"

    .line 353
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v3

    .line 354
    .local v1, "intent":Landroid/content/Intent;
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v2, v3

    .line 355
    .local v2, "pm":Landroid/content/pm/PackageManager;
    move-object v3, v2

    move-object v4, v1

    const/high16 v5, 0x20000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static getCreatorPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "intent":Landroid/content/Intent;
    move-object v2, v0

    const-string/jumbo v3, "androidx.browser.browseractions.APP_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    move-object v1, v2

    .line 422
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 423
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 424
    move-object v2, v1

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 429
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 426
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 429
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static launchIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v3, v0

    invoke-static {v3}, Landroidx/browser/browseractions/BrowserActionsIntent;->getBrowserActionsIntentHandlers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 315
    .local v2, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroidx/browser/browseractions/BrowserActionsIntent;->launchIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    .line 316
    return-void
.end method

.method static launchIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V
    .locals 13
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v2, p2

    .local v2, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 323
    :cond_0
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Landroidx/browser/browseractions/BrowserActionsIntent;->openFallbackBrowserActionsMenu(Landroid/content/Context;Landroid/content/Intent;)V

    .line 324
    .line 343
    :goto_0
    return-void

    .line 325
    :cond_1
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 326
    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 342
    :cond_2
    :goto_1
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 343
    goto :goto_0

    .line 328
    :cond_3
    new-instance v8, Landroid/content/Intent;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "android.intent.action.VIEW"

    const-string/jumbo v11, "https://www.example.com"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v3, v8

    .line 329
    .local v3, "viewIntent":Landroid/content/Intent;
    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    move-object v4, v8

    .line 330
    .local v4, "pm":Landroid/content/pm/PackageManager;
    move-object v8, v4

    move-object v9, v3

    const/high16 v10, 0x10000

    .line 331
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    move-object v5, v8

    .line 332
    .local v5, "defaultHandler":Landroid/content/pm/ResolveInfo;
    move-object v8, v5

    if-eqz v8, :cond_2

    .line 333
    move-object v8, v5

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v6, v8

    .line 334
    .local v6, "defaultPackageName":Ljava/lang/String;
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_2
    move v8, v7

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 335
    move-object v8, v6

    move-object v9, v2

    move v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 336
    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 337
    goto :goto_1

    .line 334
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public static openBrowserAction(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 8

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    new-instance v3, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v3}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->build()Landroidx/browser/browseractions/BrowserActionsIntent;

    move-result-object v3

    move-object v2, v3

    .line 281
    .local v2, "intent":Landroidx/browser/browseractions/BrowserActionsIntent;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/browser/browseractions/BrowserActionsIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/browser/browseractions/BrowserActionsIntent;->launchIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 282
    return-void
.end method

.method public static openBrowserAction(Landroid/content/Context;Landroid/net/Uri;ILjava/util/ArrayList;Landroid/app/PendingIntent;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/browser/browseractions/BrowserActionItem;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move v2, p2

    .local v2, "type":I
    move-object v3, p3

    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/browser/browseractions/BrowserActionItem;>;"
    move-object v4, p4

    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v6, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    move v7, v2

    .line 297
    invoke-virtual {v6, v7}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->setUrlType(I)Landroidx/browser/browseractions/BrowserActionsIntent$Builder;

    move-result-object v6

    move-object v7, v3

    .line 298
    invoke-virtual {v6, v7}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->setCustomItems(Ljava/util/ArrayList;)Landroidx/browser/browseractions/BrowserActionsIntent$Builder;

    move-result-object v6

    move-object v7, v4

    .line 299
    invoke-virtual {v6, v7}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->setOnItemSelectedAction(Landroid/app/PendingIntent;)Landroidx/browser/browseractions/BrowserActionsIntent$Builder;

    move-result-object v6

    .line 300
    invoke-virtual {v6}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->build()Landroidx/browser/browseractions/BrowserActionsIntent;

    move-result-object v6

    move-object v5, v6

    .line 301
    .local v5, "intent":Landroidx/browser/browseractions/BrowserActionsIntent;
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v7}, Landroidx/browser/browseractions/BrowserActionsIntent;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/browser/browseractions/BrowserActionsIntent;->launchIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 302
    return-void
.end method

.method private static openFallbackBrowserActionsMenu(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    move-object v2, v6

    .line 360
    .local v2, "uri":Landroid/net/Uri;
    move-object v6, v1

    const-string/jumbo v7, "androidx.browser.browseractions.extra.TYPE"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    move v3, v6

    .line 361
    .local v3, "type":I
    move-object v6, v1

    const-string/jumbo v7, "androidx.browser.browseractions.extra.MENU_ITEMS"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v4, v6

    .line 362
    .local v4, "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-static {v6}, Landroidx/browser/browseractions/BrowserActionsIntent;->parseBrowserActionItems(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v6

    :goto_0
    move-object v5, v6

    .line 363
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/browser/browseractions/BrowserActionItem;>;"
    move-object v6, v0

    move-object v7, v2

    move v8, v3

    move-object v9, v5

    invoke-static {v6, v7, v8, v9}, Landroidx/browser/browseractions/BrowserActionsIntent;->openFallbackBrowserActionsMenu(Landroid/content/Context;Landroid/net/Uri;ILjava/util/List;)V

    .line 364
    return-void

    .line 362
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<Landroidx/browser/browseractions/BrowserActionItem;>;"
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static openFallbackBrowserActionsMenu(Landroid/content/Context;Landroid/net/Uri;ILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroidx/browser/browseractions/BrowserActionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move v2, p2

    .local v2, "type":I
    move-object v3, p3

    .local v3, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroidx/browser/browseractions/BrowserActionItem;>;"
    new-instance v5, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;)V

    move-object v4, v5

    .line 384
    .local v4, "menuUi":Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->displayMenu()V

    .line 385
    sget-object v5, Landroidx/browser/browseractions/BrowserActionsIntent;->sDialogListenter:Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsFallDialogListener;

    if-eqz v5, :cond_0

    .line 386
    sget-object v5, Landroidx/browser/browseractions/BrowserActionsIntent;->sDialogListenter:Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsFallDialogListener;

    invoke-interface {v5}, Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsFallDialogListener;->onDialogShown()V

    .line 388
    :cond_0
    return-void
.end method

.method public static parseBrowserActionItems(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroidx/browser/browseractions/BrowserActionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v8, Ljava/util/ArrayList;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v8

    .line 397
    .local v1, "mActions":Ljava/util/List;, "Ljava/util/List<Landroidx/browser/browseractions/BrowserActionItem;>;"
    const/4 v8, 0x0

    move v2, v8

    .local v2, "i":I
    :goto_0
    move v8, v2

    move-object v9, v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 398
    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    move-object v3, v8

    .line 399
    .local v3, "bundle":Landroid/os/Bundle;
    move-object v8, v3

    const-string/jumbo v9, "androidx.browser.browseractions.TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 400
    .local v4, "title":Ljava/lang/String;
    move-object v8, v3

    const-string/jumbo v9, "androidx.browser.browseractions.ACTION"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    move-object v5, v8

    .line 402
    .local v5, "action":Landroid/app/PendingIntent;
    move-object v8, v3

    const-string/jumbo v9, "androidx.browser.browseractions.ICON_ID"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    move v6, v8

    .line 403
    .local v6, "iconId":I
    move-object v8, v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v5

    if-nez v8, :cond_1

    .line 404
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string/jumbo v10, "Custom item should contain a non-empty title and non-null intent."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 407
    :cond_1
    new-instance v8, Landroidx/browser/browseractions/BrowserActionItem;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v4

    move-object v11, v5

    move v12, v6

    invoke-direct {v9, v10, v11, v12}, Landroidx/browser/browseractions/BrowserActionItem;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    move-object v7, v8

    .line 408
    .local v7, "item":Landroidx/browser/browseractions/BrowserActionItem;
    move-object v8, v1

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "action":Landroid/app/PendingIntent;
    .end local v6    # "iconId":I
    .end local v7    # "item":Landroidx/browser/browseractions/BrowserActionItem;
    :cond_2
    move-object v8, v1

    move-object v0, v8

    .end local v0    # "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    return-object v0
.end method

.method static setDialogShownListenter(Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsFallDialogListener;)V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "dialogListener":Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsFallDialogListener;
    move-object v1, v0

    sput-object v1, Landroidx/browser/browseractions/BrowserActionsIntent;->sDialogListenter:Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsFallDialogListener;

    .line 371
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsIntent;
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/browseractions/BrowserActionsIntent;->mIntent:Landroid/content/Intent;

    move-object v0, v1

    .end local v0    # "this":Landroidx/browser/browseractions/BrowserActionsIntent;
    return-object v0
.end method
