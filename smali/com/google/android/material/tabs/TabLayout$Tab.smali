.class public Lcom/google/android/material/tabs/TabLayout$Tab;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private contentDesc:Ljava/lang/CharSequence;

.field private customView:Landroid/view/View;

.field private icon:Landroid/graphics/drawable/Drawable;

.field public parent:Lcom/google/android/material/tabs/TabLayout;

.field private position:I

.field private tag:Ljava/lang/Object;

.field private text:Ljava/lang/CharSequence;

.field public view:Lcom/google/android/material/tabs/TabLayout$TabView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1704
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1695
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    .line 1706
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1679
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "x0":Lcom/google/android/material/tabs/TabLayout$Tab;
    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1679
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "x0":Lcom/google/android/material/tabs/TabLayout$Tab;
    return-object v0
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1929
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1734
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->customView:Landroid/view/View;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1780
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    return-object v0
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 1790
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1711
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->tag:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1804
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    return-object v0
.end method

.method public isSelected()Z
    .locals 5

    .prologue
    .line 1879
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    if-nez v1, :cond_0

    .line 1880
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Tab not attached to a TabLayout"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1882
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 3

    .prologue
    .line 1939
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    .line 1940
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 1941
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->tag:Ljava/lang/Object;

    .line 1942
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 1943
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 1944
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 1945
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    .line 1946
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->customView:Landroid/view/View;

    .line 1947
    return-void
.end method

.method public select()V
    .locals 5

    .prologue
    .line 1871
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    if-nez v1, :cond_0

    .line 1872
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Tab not attached to a TabLayout"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1874
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1875
    return-void
.end method

.method public setContentDescription(I)Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1896
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    if-nez v2, :cond_0

    .line 1897
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Tab not attached to a TabLayout"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1899
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1913
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, p1

    .local v1, "contentDesc":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 1914
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    .line 1915
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    return-object v0
.end method

.method public setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1769
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move v1, p1

    .local v1, "resId":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move-object v2, v3

    .line 1770
    .local v2, "inflater":Landroid/view/LayoutInflater;
    move-object v3, v0

    move-object v4, v2

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1750
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->customView:Landroid/view/View;

    .line 1751
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    .line 1752
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    return-object v0
.end method

.method public setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1828
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    if-nez v2, :cond_0

    .line 1829
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Tab not attached to a TabLayout"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1831
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1815
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, p1

    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 1816
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    .line 1817
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    return-object v0
.end method

.method setPosition(I)V
    .locals 4

    .prologue
    .line 1794
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    .line 1795
    return-void
.end method

.method public setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1722
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, p1

    .local v1, "tag":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->tag:Ljava/lang/Object;

    .line 1723
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    return-object v0
.end method

.method public setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1863
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    if-nez v2, :cond_0

    .line 1864
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Tab not attached to a TabLayout"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1866
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 1843
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1846
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1849
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 1850
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    .line 1851
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    return-object v0
.end method

.method updateView()V
    .locals 2

    .prologue
    .line 1933
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$Tab;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v1, :cond_0

    .line 1934
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->update()V

    .line 1936
    :cond_0
    return-void
.end method
