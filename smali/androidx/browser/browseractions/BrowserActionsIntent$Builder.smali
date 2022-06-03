.class public final Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
.super Ljava/lang/Object;
.source "BrowserActionsIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/browseractions/BrowserActionsIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

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

.field private mOnItemSelectedPendingIntent:Landroid/app/PendingIntent;

.field private mType:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 8

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "uri":Landroid/net/Uri;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 170
    move-object v3, v0

    new-instance v4, Landroid/content/Intent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "androidx.browser.browseractions.browser_action_open"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mIntent:Landroid/content/Intent;

    .line 175
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    .line 176
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mOnItemSelectedPendingIntent:Landroid/app/PendingIntent;

    .line 185
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mContext:Landroid/content/Context;

    .line 186
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mUri:Landroid/net/Uri;

    .line 187
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mType:I

    .line 188
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    .line 189
    return-void
.end method

.method private getBundleFromItem(Landroidx/browser/browseractions/BrowserActionItem;)Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    move-object v1, p1

    .local v1, "item":Landroidx/browser/browseractions/BrowserActionItem;
    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 249
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v3, v2

    const-string/jumbo v4, "androidx.browser.browseractions.TITLE"

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/browser/browseractions/BrowserActionItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    move-object v3, v2

    const-string/jumbo v4, "androidx.browser.browseractions.ACTION"

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/browser/browseractions/BrowserActionItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 251
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/browser/browseractions/BrowserActionItem;->getIconId()I

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    const-string/jumbo v4, "androidx.browser.browseractions.ICON_ID"

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/browser/browseractions/BrowserActionItem;->getIconId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    return-object v0
.end method


# virtual methods
.method public build()Landroidx/browser/browseractions/BrowserActionsIntent;
    .locals 7

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mIntent:Landroid/content/Intent;

    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 261
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "androidx.browser.browseractions.extra.TYPE"

    move-object v4, v0

    iget v4, v4, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mType:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 262
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "androidx.browser.browseractions.extra.MENU_ITEMS"

    move-object v4, v0

    iget-object v4, v4, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    .line 263
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object v1, v2

    .line 264
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "androidx.browser.browseractions.APP_ID"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 265
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mOnItemSelectedPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 266
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "androidx.browser.browseractions.extra.SELECTED_ACTION_PENDING_INTENT"

    move-object v4, v0

    iget-object v4, v4, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mOnItemSelectedPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 269
    :cond_0
    new-instance v2, Landroidx/browser/browseractions/BrowserActionsIntent;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mIntent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroidx/browser/browseractions/BrowserActionsIntent;-><init>(Landroid/content/Intent;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    return-object v0
.end method

.method public setCustomItems(Ljava/util/ArrayList;)Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/browser/browseractions/BrowserActionItem;",
            ">;)",
            "Landroidx/browser/browseractions/BrowserActionsIntent$Builder;"
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    move-object v1, p1

    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/browser/browseractions/BrowserActionItem;>;"
    move-object v3, v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    .line 208
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Exceeded maximum toolbar item count of 5"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 212
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/browser/browseractions/BrowserActionItem;

    invoke-virtual {v3}, Landroidx/browser/browseractions/BrowserActionItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    move v4, v2

    .line 213
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/browser/browseractions/BrowserActionItem;

    invoke-virtual {v3}, Landroidx/browser/browseractions/BrowserActionItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v3

    if-nez v3, :cond_2

    .line 214
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Custom item should contain a non-empty title and non-null intent."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mMenuItems:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/browser/browseractions/BrowserActionItem;

    invoke-direct {v4, v5}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->getBundleFromItem(Landroidx/browser/browseractions/BrowserActionItem;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_3
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    return-object v0
.end method

.method public varargs setCustomItems([Landroidx/browser/browseractions/BrowserActionItem;)Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    .locals 7

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    move-object v1, p1

    .local v1, "items":[Landroidx/browser/browseractions/BrowserActionItem;
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->setCustomItems(Ljava/util/ArrayList;)Landroidx/browser/browseractions/BrowserActionsIntent$Builder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    return-object v0
.end method

.method public setOnItemSelectedAction(Landroid/app/PendingIntent;)Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    .locals 4

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    move-object v1, p1

    .local v1, "onItemSelectedPendingIntent":Landroid/app/PendingIntent;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mOnItemSelectedPendingIntent:Landroid/app/PendingIntent;

    .line 239
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    return-object v0
.end method

.method public setUrlType(I)Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    move v1, p1

    .local v1, "type":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->mType:I

    .line 197
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/browser/browseractions/BrowserActionsIntent$Builder;
    return-object v0
.end method
