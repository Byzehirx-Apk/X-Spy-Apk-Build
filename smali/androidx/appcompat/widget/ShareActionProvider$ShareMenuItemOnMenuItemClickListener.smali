.class Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareMenuItemOnMenuItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ShareActionProvider;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ShareActionProvider;)V
    .locals 4

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 358
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    iget-object v6, v6, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    iget-object v7, v7, Landroidx/appcompat/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v6, v7}, Landroidx/appcompat/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v6

    move-object v2, v6

    .line 364
    .local v2, "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v6, v1

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    move v3, v6

    .line 365
    .local v3, "itemId":I
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v6

    move-object v4, v6

    .line 366
    .local v4, "launchIntent":Landroid/content/Intent;
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 367
    move-object v6, v4

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 368
    .local v5, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.action.SEND"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "android.intent.action.SEND_MULTIPLE"

    move-object v7, v5

    .line 369
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 370
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/ShareActionProvider;->updateIntent(Landroid/content/Intent;)V

    .line 372
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    iget-object v6, v6, Landroidx/appcompat/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 374
    .end local v5    # "action":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    move v0, v6

    .end local v0    # "this":Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;
    return v0
.end method
