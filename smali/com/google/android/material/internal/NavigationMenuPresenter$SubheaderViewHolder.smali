.class Lcom/google/android/material/internal/NavigationMenuPresenter$SubheaderViewHolder;
.super Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubheaderViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 8

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$SubheaderViewHolder;
    move-object v1, p1

    .local v1, "inflater":Landroid/view/LayoutInflater;
    move-object v2, p2

    .local v2, "parent":Landroid/view/ViewGroup;
    move-object v3, v0

    move-object v4, v1

    sget v5, Lcom/google/android/material/R$layout;->design_navigation_item_subheader:I

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 324
    return-void
.end method
