.class Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;)V
    .locals 4

    .prologue
    .line 818
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$2;
    move-object v1, p1

    .local v1, "this$1":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 821
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$2;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->isVisibleToUser(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 822
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->dismiss()V

    .line 830
    :goto_0
    return-void

    .line 824
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->computeContentWidth()V

    .line 828
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    invoke-static {v1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->access$001(Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;)V

    goto :goto_0
.end method
