.class Landroidx/appcompat/widget/ActivityChooserView$Callbacks;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 4

    .prologue
    .line 575
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$Callbacks;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 576
    return-void
.end method

.method private notifyOnDismissListener()V
    .locals 2

    .prologue
    .line 654
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$Callbacks;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v1, :cond_0

    .line 655
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 657
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 613
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$Callbacks;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v6, v6, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    if-ne v5, v6, :cond_1

    .line 614
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    move-result v5

    .line 615
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    move-object v2, v5

    .line 616
    .local v2, "defaultActivity":Landroid/content/pm/ResolveInfo;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivityIndex(Landroid/content/pm/ResolveInfo;)I

    move-result v5

    move v3, v5

    .line 617
    .local v3, "index":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v5

    move-object v4, v5

    .line 618
    .local v4, "launchIntent":Landroid/content/Intent;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 619
    move-object v5, v4

    const/high16 v6, 0x80000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 620
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 622
    .line 628
    .end local v2    # "defaultActivity":Landroid/content/pm/ResolveInfo;
    .end local v3    # "index":I
    .end local v4    # "launchIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v6, v6, Landroidx/appcompat/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    if-ne v5, v6, :cond_2

    .line 623
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 624
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget v6, v6, Landroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActivityChooserView;->showPopupUnchecked(I)V

    goto :goto_0

    .line 626
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method

.method public onDismiss()V
    .locals 3

    .prologue
    .line 647
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$Callbacks;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->notifyOnDismissListener()V

    .line 648
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mProvider:Landroidx/core/view/ActionProvider;

    if-eqz v1, :cond_0

    .line 649
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mProvider:Landroidx/core/view/ActionProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/core/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 651
    :cond_0
    return-void
.end method

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
    .line 581
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$Callbacks;
    move-object v1, p1

    .local v1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move v3, p3

    .local v3, "position":I
    move-wide/from16 v4, p4

    .local v4, "id":J
    move-object v9, v1

    invoke-virtual {v9}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-object v6, v9

    .line 582
    .local v6, "adapter":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    move-object v9, v6

    move v10, v3

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v9

    move v7, v9

    .line 583
    .local v7, "itemViewType":I
    move v9, v7

    packed-switch v9, :pswitch_data_0

    .line 606
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 585
    :pswitch_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    const v10, 0x7fffffff

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/ActivityChooserView;->showPopupUnchecked(I)V

    .line 586
    .line 608
    :cond_0
    :goto_0
    return-void

    .line 588
    :pswitch_1
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActivityChooserView;->dismissPopup()Z

    move-result v9

    .line 589
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-boolean v9, v9, Landroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-eqz v9, :cond_1

    .line 591
    move v9, v3

    if-lez v9, :cond_0

    .line 592
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v9

    move v10, v3

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/ActivityChooserModel;->setDefaultActivity(I)V

    goto :goto_0

    .line 597
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getShowDefaultActivity()Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v3

    :goto_1
    move v3, v9

    .line 598
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v9

    move v10, v3

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v9

    move-object v8, v9

    .line 599
    .local v8, "launchIntent":Landroid/content/Intent;
    move-object v9, v8

    if-eqz v9, :cond_2

    .line 600
    move-object v9, v8

    const/high16 v10, 0x80000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    .line 601
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 604
    :cond_2
    goto :goto_0

    .line 597
    .end local v8    # "launchIntent":Landroid/content/Intent;
    :cond_3
    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 583
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$Callbacks;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    if-ne v2, v3, :cond_1

    .line 634
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v2, v2, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 635
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 636
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView$Callbacks;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget v3, v3, Landroidx/appcompat/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActivityChooserView;->showPopupUnchecked(I)V

    .line 641
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$Callbacks;
    return v0

    .line 639
    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$Callbacks;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method
