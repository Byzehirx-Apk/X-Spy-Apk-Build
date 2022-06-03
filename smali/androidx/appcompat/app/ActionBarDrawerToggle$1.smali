.class Landroidx/appcompat/app/ActionBarDrawerToggle$1;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/ActionBarDrawerToggle;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/ActionBarDrawerToggle;)V
    .locals 4

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/ActionBarDrawerToggle;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/ActionBarDrawerToggle$1;->this$0:Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/ActionBarDrawerToggle$1;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle$1;->this$0:Landroidx/appcompat/app/ActionBarDrawerToggle;

    iget-boolean v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v2, :cond_1

    .line 202
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle$1;->this$0:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->toggle()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle$1;->this$0:Landroidx/appcompat/app/ActionBarDrawerToggle;

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_0

    .line 204
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle$1;->this$0:Landroidx/appcompat/app/ActionBarDrawerToggle;

    iget-object v2, v2, Landroidx/appcompat/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
