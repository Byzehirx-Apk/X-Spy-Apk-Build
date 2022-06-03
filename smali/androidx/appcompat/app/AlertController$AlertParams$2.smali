.class Landroidx/appcompat/app/AlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AlertController$AlertParams;->createListView(Landroidx/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Landroidx/appcompat/app/AlertController$AlertParams;

.field final synthetic val$dialog:Landroidx/appcompat/app/AlertController;

.field final synthetic val$listView:Landroidx/appcompat/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V
    .locals 12

    .prologue
    .line 1009
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$AlertParams$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/AlertController$AlertParams;
    move-object v2, p2

    .local v2, "x0":Landroid/content/Context;
    move-object v3, p3

    .local v3, "x1":Landroid/database/Cursor;
    move/from16 v4, p4

    .local v4, "x2":Z
    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Landroidx/appcompat/app/AlertController$AlertParams$2;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Landroidx/appcompat/app/AlertController$AlertParams$2;->val$listView:Landroidx/appcompat/app/AlertController$RecycleListView;

    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Landroidx/appcompat/app/AlertController$AlertParams$2;->val$dialog:Landroidx/appcompat/app/AlertController;

    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1014
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/app/AlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object v8

    move-object v7, v8

    .line 1015
    .local v7, "cursor":Landroid/database/Cursor;
    move-object v8, v0

    move-object v9, v7

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/app/AlertController$AlertParams$2;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v10, v10, Landroidx/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Landroidx/appcompat/app/AlertController$AlertParams$2;->mLabelIndex:I

    .line 1016
    move-object v8, v0

    move-object v9, v7

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/app/AlertController$AlertParams$2;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v10, v10, Landroidx/appcompat/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Landroidx/appcompat/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1017
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    .prologue
    .line 1021
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$AlertParams$2;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, p3

    .local v3, "cursor":Landroid/database/Cursor;
    move-object v5, v1

    const v6, 0x1020014

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    move-object v4, v5

    .line 1023
    .local v4, "text":Landroid/widget/CheckedTextView;
    move-object v5, v4

    move-object v6, v3

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/app/AlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams$2;->val$listView:Landroidx/appcompat/app/AlertController$RecycleListView;

    move-object v6, v3

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    move-object v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1025
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    .line 1024
    :goto_0
    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/app/AlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1026
    return-void

    .line 1025
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 1030
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$AlertParams$2;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "cursor":Landroid/database/Cursor;
    move-object v3, p3

    .local v3, "parent":Landroid/view/ViewGroup;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams$2;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams$2;->val$dialog:Landroidx/appcompat/app/AlertController;

    iget v5, v5, Landroidx/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/app/AlertController$AlertParams$2;
    return-object v0
.end method
