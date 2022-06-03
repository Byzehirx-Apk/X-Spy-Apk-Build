.class Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

.field final synthetic val$this$0:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;Landroidx/appcompat/widget/AppCompatSpinner;)V
    .locals 5

    .prologue
    .line 729
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;
    move-object v1, p1

    .local v1, "this$1":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->val$this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 732
    move-object v1, p0

    .local v1, "this":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;
    move-object v2, p1

    .local v2, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v3, p2

    .local v3, "v":Landroid/view/View;
    move v4, p3

    .local v4, "position":I
    move-wide/from16 v5, p4

    .local v5, "id":J
    move-object v7, v1

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    move v8, v4

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(I)V

    .line 733
    move-object v7, v1

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatSpinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 734
    move-object v7, v1

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    move-object v8, v3

    move v9, v4

    move-object v10, v1

    iget-object v10, v10, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object v10, v10, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    move v11, v4

    .line 735
    invoke-interface {v10, v11}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/appcompat/widget/AppCompatSpinner;->performItemClick(Landroid/view/View;IJ)Z

    move-result v7

    .line 737
    :cond_0
    move-object v7, v1

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->dismiss()V

    .line 738
    return-void
.end method
