.class Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;
.super Ljava/lang/Object;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;->this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v4, v1

    check-cast v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-object v2, v4

    .line 114
    .local v2, "itemView":Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    move-object v3, v4

    .line 115
    .local v3, "item":Landroid/view/MenuItem;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;->this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-static {v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->access$100(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v4

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView$1;->this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-static {v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->access$000(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    move-object v4, v3

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v4

    .line 118
    :cond_0
    return-void
.end method
