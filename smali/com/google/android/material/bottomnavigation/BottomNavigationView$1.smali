.class Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 4

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, p2

    .local v2, "item":Landroid/view/MenuItem;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->access$000(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getSelectedItemId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 201
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->access$000(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;->onNavigationItemReselected(Landroid/view/MenuItem;)V

    .line 202
    const/4 v3, 0x1

    move v0, v3

    .line 204
    .end local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->access$100(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->this$0:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->access$100(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;

    .prologue
    .line 208
    return-void
.end method
