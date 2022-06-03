.class Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;
.super Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NormalViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .locals 9

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;
    move-object v1, p1

    .local v1, "inflater":Landroid/view/LayoutInflater;
    move-object v2, p2

    .local v2, "parent":Landroid/view/ViewGroup;
    move-object v3, p3

    .local v3, "listener":Landroid/view/View$OnClickListener;
    move-object v4, v0

    move-object v5, v1

    sget v6, Lcom/google/android/material/R$layout;->design_navigation_item:I

    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 316
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;->itemView:Landroid/view/View;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    return-void
.end method
