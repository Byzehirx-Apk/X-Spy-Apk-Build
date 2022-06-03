.class Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;
.super Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;
    move-object v1, p1

    .local v1, "itemView":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 338
    return-void
.end method
