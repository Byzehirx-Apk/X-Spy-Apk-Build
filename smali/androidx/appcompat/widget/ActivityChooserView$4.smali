.class Landroidx/appcompat/widget/ActivityChooserView$4;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$4;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/ActivityChooserView;
    move-object v2, p2

    .local v2, "src":Landroid/view/View;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/ActivityChooserView$4;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$4;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView$4;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$4;
    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$4;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView$4;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView;->showPopup()Z

    move-result v1

    .line 266
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$4;
    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$4;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView$4;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    move-result v1

    .line 272
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$4;
    return v0
.end method
