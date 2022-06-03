.class Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;
.super Ljava/lang/Object;
.source "BrowserActionsFallbackMenuUi.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowserActionskMenuUi"


# instance fields
.field private mBrowserActionsDialog:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

.field private final mContext:Landroid/content/Context;

.field private final mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/browser/browseractions/BrowserActionItem;",
            ">;"
        }
    .end annotation
.end field

.field mMenuUiListener:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroidx/browser/browseractions/BrowserActionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "uri":Landroid/net/Uri;
    move-object v3, p3

    .local v3, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroidx/browser/browseractions/BrowserActionItem;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 70
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mContext:Landroid/content/Context;

    .line 71
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mUri:Landroid/net/Uri;

    .line 72
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mMenuItems:Ljava/util/List;

    .line 73
    return-void
.end method

.method private initMenuView(Landroid/view/View;)Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;
    .locals 12

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v6, v1

    sget v7, Landroidx/browser/R$id;->browser_actions_menu_view:I

    .line 103
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;

    move-object v2, v6

    .line 105
    .local v2, "menuView":Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;
    move-object v6, v1

    sget v7, Landroidx/browser/R$id;->browser_actions_header_text:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v3, v6

    .line 106
    .local v3, "urlTextView":Landroid/widget/TextView;
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    move-object v6, v3

    new-instance v7, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;-><init>(Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;Landroid/widget/TextView;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    move-object v6, v1

    sget v7, Landroidx/browser/R$id;->browser_actions_menu_items:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    move-object v4, v6

    .line 121
    .local v4, "menuListView":Landroid/widget/ListView;
    new-instance v6, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mMenuItems:Ljava/util/List;

    move-object v9, v0

    iget-object v9, v9, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v9}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    move-object v5, v6

    .line 123
    .local v5, "adapter":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;
    return-object v0
.end method


# virtual methods
.method public displayMenu()V
    .locals 9

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroidx/browser/R$layout;->browser_actions_context_menu_page:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 88
    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    new-instance v3, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->initMenuView(Landroid/view/View;)Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mBrowserActionsDialog:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    .line 89
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mBrowserActionsDialog:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->setContentView(Landroid/view/View;)V

    .line 90
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mMenuUiListener:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;

    if-eqz v2, :cond_0

    .line 91
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mBrowserActionsDialog:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    new-instance v3, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$1;-><init>(Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 98
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mBrowserActionsDialog:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    invoke-virtual {v2}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->show()V

    .line 99
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;
    move-object v1, p1

    .local v1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move v3, p3

    .local v3, "position":I
    move-wide/from16 v4, p4

    .local v4, "id":J
    move-object v8, v0

    iget-object v8, v8, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mMenuItems:Ljava/util/List;

    move v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/browser/browseractions/BrowserActionItem;

    invoke-virtual {v8}, Landroidx/browser/browseractions/BrowserActionItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v8

    move-object v6, v8

    .line 133
    .local v6, "action":Landroid/app/PendingIntent;
    move-object v8, v6

    :try_start_0
    invoke-virtual {v8}, Landroid/app/PendingIntent;->send()V

    .line 134
    move-object v8, v0

    iget-object v8, v8, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mBrowserActionsDialog:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    invoke-virtual {v8}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->dismiss()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 136
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v8, "BrowserActionskMenuUi"

    const-string/jumbo v9, "Failed to send custom item action"

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_0
.end method

.method setMenuUiListener(Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;
    move-object v1, p1

    .local v1, "menuUiListener":Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mMenuUiListener:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;

    .line 80
    return-void
.end method
