.class Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityChooserViewAdapter"
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_ACTIVITY:I = 0x0

.field private static final ITEM_VIEW_TYPE_COUNT:I = 0x3

.field private static final ITEM_VIEW_TYPE_FOOTER:I = 0x1

.field public static final MAX_ACTIVITY_COUNT_DEFAULT:I = 0x4

.field public static final MAX_ACTIVITY_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

.field private mHighlightDefaultActivity:Z

.field private mMaxActivityCount:I

.field private mShowDefaultActivity:Z

.field private mShowFooterView:Z

.field final synthetic this$0:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 4

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    move-object v2, v0

    invoke-direct {v2}, Landroid/widget/BaseAdapter;-><init>()V

    .line 677
    move-object v2, v0

    const/4 v3, 0x4

    iput v3, v2, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 686
    return-void
.end method


# virtual methods
.method public getActivityCount()I
    .locals 2

    .prologue
    .line 831
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivityCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    return v0
.end method

.method public getCount()I
    .locals 5

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    const/4 v3, 0x0

    move v1, v3

    .line 717
    .local v1, "count":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivityCount()I

    move-result v3

    move v2, v3

    .line 718
    .local v2, "activityCount":I
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 719
    add-int/lit8 v2, v2, -0x1

    .line 721
    :cond_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v1, v3

    .line 722
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v3, :cond_1

    .line 723
    add-int/lit8 v1, v1, 0x1

    .line 725
    :cond_1
    move v3, v1

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    return v0
.end method

.method public getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;
    .locals 2

    .prologue
    .line 839
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    return-object v0
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 2

    .prologue
    .line 820
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    return-object v0
.end method

.method public getHistorySize()I
    .locals 2

    .prologue
    .line 835
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserModel;->getHistorySize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    move v1, p1

    .local v1, "position":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v3

    move v2, v3

    .line 731
    .local v2, "itemViewType":I
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 740
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 733
    :pswitch_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 738
    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    :goto_0
    return-object v0

    .line 735
    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    :pswitch_1
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 736
    add-int/lit8 v1, v1, 0x1

    .line 738
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 731
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 746
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    move v1, p1

    .local v1, "position":I
    move v2, v1

    int-to-long v2, v2

    move-wide v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    .line 703
    const/4 v2, 0x1

    move v0, v2

    .line 705
    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getShowDefaultActivity()Z
    .locals 2

    .prologue
    .line 853
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14

    .prologue
    .line 751
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    move v1, p1

    .local v1, "position":I
    move-object/from16 v2, p2

    .local v2, "convertView":Landroid/view/View;
    move-object/from16 v3, p3

    .local v3, "parent":Landroid/view/ViewGroup;
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v9

    move v4, v9

    .line 752
    .local v4, "itemViewType":I
    move v9, v4

    packed-switch v9, :pswitch_data_0

    .line 784
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 754
    :pswitch_0
    move-object v9, v2

    if-eqz v9, :cond_0

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 755
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v10, Landroidx/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    move-object v11, v3

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    move-object v2, v9

    .line 757
    move-object v9, v2

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setId(I)V

    .line 758
    move-object v9, v2

    sget v10, Landroidx/appcompat/R$id;->title:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object v5, v9

    .line 759
    .local v5, "titleView":Landroid/widget/TextView;
    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v10}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Landroidx/appcompat/R$string;->abc_activity_chooser_view_see_all:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    .end local v5    # "titleView":Landroid/widget/TextView;
    :cond_1
    move-object v9, v2

    move-object v0, v9

    .line 782
    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    :goto_0
    return-object v0

    .line 764
    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    :pswitch_1
    move-object v9, v2

    if-eqz v9, :cond_2

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    sget v10, Landroidx/appcompat/R$id;->list_item:I

    if-eq v9, v10, :cond_3

    .line 765
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v10, Landroidx/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    move-object v11, v3

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    move-object v2, v9

    .line 768
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    move-object v5, v9

    .line 770
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    move-object v9, v2

    sget v10, Landroidx/appcompat/R$id;->icon:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    move-object v6, v9

    .line 771
    .local v6, "iconView":Landroid/widget/ImageView;
    move-object v9, v0

    move v10, v1

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    move-object v7, v9

    .line 772
    .local v7, "activity":Landroid/content/pm/ResolveInfo;
    move-object v9, v6

    move-object v10, v7

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 774
    move-object v9, v2

    sget v10, Landroidx/appcompat/R$id;->title:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object v8, v9

    .line 775
    .local v8, "titleView":Landroid/widget/TextView;
    move-object v9, v8

    move-object v10, v7

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-eqz v9, :cond_4

    move v9, v1

    if-nez v9, :cond_4

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    if-eqz v9, :cond_4

    .line 778
    move-object v9, v2

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setActivated(Z)V

    .line 782
    :goto_1
    move-object v9, v2

    move-object v0, v9

    goto :goto_0

    .line 780
    :cond_4
    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 752
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 711
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    const/4 v1, 0x3

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    return v0
.end method

.method public measureContentWidth()I
    .locals 12

    .prologue
    .line 791
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    move v1, v8

    .line 792
    .local v1, "oldMaxActivityCount":I
    move-object v8, v0

    const v9, 0x7fffffff

    iput v9, v8, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 794
    const/4 v8, 0x0

    move v2, v8

    .line 795
    .local v2, "contentWidth":I
    const/4 v8, 0x0

    move-object v3, v8

    .line 797
    .local v3, "itemView":Landroid/view/View;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v4, v8

    .line 798
    .local v4, "widthMeasureSpec":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v5, v8

    .line 799
    .local v5, "heightMeasureSpec":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v8

    move v6, v8

    .line 801
    .local v6, "count":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_0

    .line 802
    move-object v8, v0

    move v9, v7

    move-object v10, v3

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    move-object v3, v8

    .line 803
    move-object v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 804
    move v8, v2

    move-object v9, v3

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v2, v8

    .line 801
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 807
    :cond_0
    move-object v8, v0

    move v9, v1

    iput v9, v8, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 809
    move v8, v2

    move v0, v8

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    return v0
.end method

.method public setDataModel(Landroidx/appcompat/widget/ActivityChooserModel;)V
    .locals 5

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    move-object v1, p1

    .local v1, "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v3

    move-object v2, v3

    .line 690
    .local v2, "oldDataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 691
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserView;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 693
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroidx/appcompat/widget/ActivityChooserModel;

    .line 694
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 695
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserView;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 697
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 698
    return-void
.end method

.method public setMaxActivityCount(I)V
    .locals 4

    .prologue
    .line 813
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    move v1, p1

    .local v1, "maxActivityCount":I
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 814
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 815
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 817
    :cond_0
    return-void
.end method

.method public setShowDefaultActivity(ZZ)V
    .locals 5

    .prologue
    .line 844
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    move v1, p1

    .local v1, "showDefaultActivity":Z
    move v2, p2

    .local v2, "highlightDefaultActivity":Z
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    move v4, v1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    move v4, v2

    if-eq v3, v4, :cond_1

    .line 846
    :cond_0
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    .line 847
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    .line 848
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 850
    :cond_1
    return-void
.end method

.method public setShowFooterView(Z)V
    .locals 4

    .prologue
    .line 824
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
    move v1, p1

    .local v1, "showFooterView":Z
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 825
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    .line 826
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 828
    :cond_0
    return-void
.end method
