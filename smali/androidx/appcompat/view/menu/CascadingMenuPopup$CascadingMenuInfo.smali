.class Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CascadingMenuInfo"
.end annotation


# instance fields
.field public final menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public final position:I

.field public final window:Landroidx/appcompat/widget/MenuPopupWindow;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/MenuPopupWindow;Landroidx/appcompat/view/menu/MenuBuilder;I)V
    .locals 6
    .param p1    # Landroidx/appcompat/widget/MenuPopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 800
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object v1, p1

    .local v1, "window":Landroidx/appcompat/widget/MenuPopupWindow;
    move-object v2, p2

    .local v2, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move v3, p3

    .local v3, "position":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 801
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 802
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 803
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    .line 804
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 807
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    return-object v0
.end method
