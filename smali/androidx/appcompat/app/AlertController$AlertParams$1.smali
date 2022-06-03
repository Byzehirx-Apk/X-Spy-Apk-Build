.class Landroidx/appcompat/app/AlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AlertController$AlertParams;->createListView(Landroidx/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AlertController$AlertParams;

.field final synthetic val$listView:Landroidx/appcompat/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V
    .locals 12

    .prologue
    .line 995
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$AlertParams$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/AlertController$AlertParams;
    move-object v2, p2

    .local v2, "x0":Landroid/content/Context;
    move v3, p3

    .local v3, "x1":I
    move/from16 v4, p4

    .local v4, "x2":I
    move-object/from16 v5, p5

    .local v5, "x3":[Ljava/lang/CharSequence;
    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroidx/appcompat/app/AlertController$AlertParams$1;->val$listView:Landroidx/appcompat/app/AlertController$RecycleListView;

    move-object v7, v0

    move-object v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    .line 998
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$AlertParams$1;
    move v1, p1

    .local v1, "position":I
    move-object v2, p2

    .local v2, "convertView":Landroid/view/View;
    move-object v3, p3

    .local v3, "parent":Landroid/view/ViewGroup;
    move-object v6, v0

    move v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-super {v6, v7, v8, v9}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 999
    .local v4, "view":Landroid/view/View;
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v6, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v6, :cond_0

    .line 1000
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v6, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    move v7, v1

    aget-boolean v6, v6, v7

    move v5, v6

    .line 1001
    .local v5, "isItemChecked":Z
    move v6, v5

    if-eqz v6, :cond_0

    .line 1002
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertController$AlertParams$1;->val$listView:Landroidx/appcompat/app/AlertController$RecycleListView;

    move v7, v1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/app/AlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1005
    .end local v5    # "isItemChecked":Z
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Landroidx/appcompat/app/AlertController$AlertParams$1;
    return-object v0
.end method
