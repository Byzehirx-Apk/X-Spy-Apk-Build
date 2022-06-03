.class public final Landroidx/core/app/ShareCompat;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ShareCompat$IntentReader;,
        Landroidx/core/app/ShareCompat$IntentBuilder;
    }
.end annotation


# static fields
.field public static final EXTRA_CALLING_ACTIVITY:Ljava/lang/String; = "androidx.core.app.EXTRA_CALLING_ACTIVITY"

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "androidx.core.app.EXTRA_CALLING_PACKAGE"

.field private static final HISTORY_FILENAME_PREFIX:Ljava/lang/String; = ".sharecompat_"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureMenuItem(Landroid/view/Menu;ILandroidx/core/app/ShareCompat$IntentBuilder;)V
    .locals 9

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "menu":Landroid/view/Menu;
    move v1, p1

    .local v1, "menuItemId":I
    move-object v2, p2

    .local v2, "shareIntent":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v4, v0

    move v5, v1

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    move-object v3, v4

    .line 181
    .local v3, "item":Landroid/view/MenuItem;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 182
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not find menu item with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in the supplied menu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_0
    move-object v4, v3

    move-object v5, v2

    invoke-static {v4, v5}, Landroidx/core/app/ShareCompat;->configureMenuItem(Landroid/view/MenuItem;Landroidx/core/app/ShareCompat$IntentBuilder;)V

    .line 186
    return-void
.end method

.method public static configureMenuItem(Landroid/view/MenuItem;Landroidx/core/app/ShareCompat$IntentBuilder;)V
    .locals 8

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "item":Landroid/view/MenuItem;
    move-object v1, p1

    .local v1, "shareIntent":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v4, v0

    invoke-interface {v4}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v4

    move-object v2, v4

    .line 154
    .local v2, "itemProvider":Landroid/view/ActionProvider;
    move-object v4, v2

    instance-of v4, v4, Landroid/widget/ShareActionProvider;

    if-nez v4, :cond_1

    .line 155
    new-instance v4, Landroid/widget/ShareActionProvider;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-virtual {v6}, Landroidx/core/app/ShareCompat$IntentBuilder;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ShareActionProvider;-><init>(Landroid/content/Context;)V

    move-object v3, v4

    .line 159
    .local v3, "provider":Landroid/widget/ShareActionProvider;
    :goto_0
    move-object v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ".sharecompat_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    .line 160
    invoke-virtual {v6}, Landroidx/core/app/ShareCompat$IntentBuilder;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 159
    invoke-virtual {v4, v5}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 161
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/core/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 162
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    move-result-object v4

    .line 164
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_0

    .line 165
    move-object v4, v0

    invoke-interface {v4}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-nez v4, :cond_0

    .line 166
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/core/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v4

    .line 169
    :cond_0
    return-void

    .line 157
    .end local v3    # "provider":Landroid/widget/ShareActionProvider;
    :cond_1
    move-object v4, v2

    check-cast v4, Landroid/widget/ShareActionProvider;

    move-object v3, v4

    .restart local v3    # "provider":Landroid/widget/ShareActionProvider;
    goto :goto_0
.end method

.method public static getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "calledActivity":Landroid/app/Activity;
    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v2

    move-object v1, v2

    .line 119
    .local v1, "result":Landroid/content/ComponentName;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 120
    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "androidx.core.app.EXTRA_CALLING_ACTIVITY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    move-object v1, v2

    .line 122
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "calledActivity":Landroid/app/Activity;
    return-object v0
.end method

.method public static getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "calledActivity":Landroid/app/Activity;
    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 99
    .local v1, "result":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 100
    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "androidx.core.app.EXTRA_CALLING_PACKAGE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 102
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "calledActivity":Landroid/app/Activity;
    return-object v0
.end method
