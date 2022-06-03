.class Landroidx/appcompat/widget/AppCompatSpinner$1;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/AppCompatSpinner;

.field final synthetic val$popup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/view/View;Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;)V
    .locals 6

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v2, p2

    .local v2, "src":Landroid/view/View;
    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/widget/AppCompatSpinner$1;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/widget/AppCompatSpinner$1;->val$popup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .locals 2

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner$1;->val$popup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner$1;
    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 2

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner$1;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner$1;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->show()V

    .line 257
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner$1;
    return v0
.end method
