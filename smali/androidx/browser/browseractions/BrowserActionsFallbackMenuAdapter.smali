.class Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "BrowserActionsFallbackMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;
    }
.end annotation


# instance fields
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


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/browser/browseractions/BrowserActionItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;
    move-object v1, p1

    .local v1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroidx/browser/browseractions/BrowserActionItem;>;"
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, v0

    invoke-direct {v3}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;->mMenuItems:Ljava/util/List;

    .line 42
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;->mMenuItems:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;
    return-object v0
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;
    move v1, p1

    .local v1, "position":I
    move v2, v1

    int-to-long v2, v2

    move-wide v0, v2

    .end local v0    # "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;
    move v1, p1

    .local v1, "position":I
    move-object v2, p2

    .local v2, "convertView":Landroid/view/View;
    move-object v3, p3

    .local v3, "parent":Landroid/view/ViewGroup;
    move-object v7, v0

    iget-object v7, v7, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;->mMenuItems:Ljava/util/List;

    move v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/browser/browseractions/BrowserActionItem;

    move-object v4, v7

    .line 64
    .local v4, "menuItem":Landroidx/browser/browseractions/BrowserActionItem;
    move-object v7, v2

    if-nez v7, :cond_0

    .line 65
    move-object v7, v0

    iget-object v7, v7, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Landroidx/browser/R$layout;->browser_actions_context_menu_row:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    move-object v2, v7

    .line 67
    new-instance v7, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;-><init>()V

    move-object v5, v7

    .line 68
    .local v5, "viewHolder":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;
    move-object v7, v5

    move-object v8, v2

    sget v9, Landroidx/browser/R$id;->browser_actions_menu_item_icon:I

    .line 69
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;->mIcon:Landroid/widget/ImageView;

    .line 70
    move-object v7, v5

    move-object v8, v2

    sget v9, Landroidx/browser/R$id;->browser_actions_menu_item_text:I

    .line 71
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;->mText:Landroid/widget/TextView;

    .line 72
    move-object v7, v2

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    :goto_0
    move-object v7, v5

    iget-object v7, v7, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;->mText:Landroid/widget/TextView;

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/browser/browseractions/BrowserActionItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    move-object v7, v4

    invoke-virtual {v7}, Landroidx/browser/browseractions/BrowserActionItem;->getIconId()I

    move-result v7

    if-eqz v7, :cond_1

    .line 79
    move-object v7, v0

    iget-object v7, v7, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/browser/browseractions/BrowserActionItem;->getIconId()I

    move-result v8

    const/4 v9, 0x0

    .line 79
    invoke-static {v7, v8, v9}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v6, v7

    .line 81
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v7, v5

    iget-object v7, v7, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;->mIcon:Landroid/widget/ImageView;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    .line 85
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;
    return-object v0

    .line 74
    .end local v5    # "viewHolder":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;
    .restart local v0    # "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;

    move-object v5, v7

    .restart local v5    # "viewHolder":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;
    goto :goto_0

    .line 83
    :cond_1
    move-object v7, v5

    iget-object v7, v7, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;->mIcon:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
