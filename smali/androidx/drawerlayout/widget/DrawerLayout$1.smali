.class Landroidx/drawerlayout/widget/DrawerLayout$1;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 4

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/drawerlayout/widget/DrawerLayout$1;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 7

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Landroidx/drawerlayout/widget/DrawerLayout$1;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "insets":Landroid/view/WindowInsets;
    move-object v4, v1

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v3, v4

    .line 347
    .local v3, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object v4, v3

    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->setChildInsets(Ljava/lang/Object;Z)V

    .line 348
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout$1;
    return-object v0

    .line 347
    .restart local v0    # "this":Landroidx/drawerlayout/widget/DrawerLayout$1;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method
