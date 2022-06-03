.class Landroidx/appcompat/app/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AlertController$AlertParams;->createListView(Landroidx/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AlertController$AlertParams;

.field final synthetic val$dialog:Landroidx/appcompat/app/AlertController;

.field final synthetic val$listView:Landroidx/appcompat/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V
    .locals 6

    .prologue
    .line 1075
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$AlertParams$4;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/AlertController$AlertParams;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams$4;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams$4;->val$listView:Landroidx/appcompat/app/AlertController$RecycleListView;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$AlertParams$4;->val$dialog:Landroidx/appcompat/app/AlertController;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

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
    .line 1078
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$AlertParams$4;
    move-object v1, p1

    .local v1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v2, p2

    .local v2, "v":Landroid/view/View;
    move v3, p3

    .local v3, "position":I
    move-wide/from16 v4, p4

    .local v4, "id":J
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertController$AlertParams$4;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v6, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v6, :cond_0

    .line 1079
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertController$AlertParams$4;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v6, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AlertController$AlertParams$4;->val$listView:Landroidx/appcompat/app/AlertController$RecycleListView;

    move v9, v3

    invoke-virtual {v8, v9}, Landroidx/appcompat/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v8

    aput-boolean v8, v6, v7

    .line 1081
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertController$AlertParams$4;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v6, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController$AlertParams$4;->val$dialog:Landroidx/appcompat/app/AlertController;

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AlertController$AlertParams$4;->val$listView:Landroidx/appcompat/app/AlertController$RecycleListView;

    move v10, v3

    .line 1082
    invoke-virtual {v9, v10}, Landroidx/appcompat/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v9

    .line 1081
    invoke-interface {v6, v7, v8, v9}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1083
    return-void
.end method
