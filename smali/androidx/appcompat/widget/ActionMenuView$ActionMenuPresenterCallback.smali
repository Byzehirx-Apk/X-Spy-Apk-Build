.class Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionMenuPresenterCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 793
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 794
    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 798
    return-void
.end method

.method public onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 3

    .prologue
    .line 802
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;
    move-object v1, p1

    .local v1, "subMenu":Landroidx/appcompat/view/menu/MenuBuilder;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;
    return v0
.end method
