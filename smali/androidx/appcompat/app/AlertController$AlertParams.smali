.class public Landroidx/appcompat/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Landroidx/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 924
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$AlertParams;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 869
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 871
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mIconAttrId:I

    .line 897
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 901
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 909
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 925
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 926
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 927
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 928
    return-void
.end method

.method private createListView(Landroidx/appcompat/app/AlertController;)V
    .locals 16

    .prologue
    .line 988
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$AlertParams;
    move-object/from16 v1, p1

    .local v1, "dialog":Landroidx/appcompat/app/AlertController;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    move-object v6, v1

    iget v6, v6, Landroidx/appcompat/app/AlertController;->mListLayout:I

    const/4 v7, 0x0

    .line 989
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/app/AlertController$RecycleListView;

    move-object v2, v5

    .line 992
    .local v2, "listView":Landroidx/appcompat/app/AlertController$RecycleListView;
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v5, :cond_5

    .line 993
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_4

    .line 994
    new-instance v5, Landroidx/appcompat/app/AlertController$AlertParams$1;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move-object v9, v1

    iget v9, v9, Landroidx/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    const v10, 0x1020014

    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v12, v2

    invoke-direct/range {v6 .. v12}, Landroidx/appcompat/app/AlertController$AlertParams$1;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    move-object v3, v5

    .line 1054
    .local v3, "adapter":Landroid/widget/ListAdapter;
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mOnPrepareListViewListener:Landroidx/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v5, :cond_0

    .line 1055
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mOnPrepareListViewListener:Landroidx/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;

    move-object v6, v2

    invoke-interface {v5, v6}, Landroidx/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1061
    :cond_0
    move-object v5, v1

    move-object v6, v3

    iput-object v6, v5, Landroidx/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 1062
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    iput v6, v5, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    .line 1064
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v5, :cond_9

    .line 1065
    move-object v5, v2

    new-instance v6, Landroidx/appcompat/app/AlertController$AlertParams$3;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Landroidx/appcompat/app/AlertController$AlertParams$3;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1088
    :cond_1
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_2

    .line 1089
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1092
    :cond_2
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v5, :cond_a

    .line 1093
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1097
    :cond_3
    :goto_2
    move-object v5, v1

    move-object v6, v2

    iput-object v6, v5, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 1098
    return-void

    .line 1009
    .end local v3    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    new-instance v5, Landroidx/appcompat/app/AlertController$AlertParams$2;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    move-object v11, v2

    move-object v12, v1

    invoke-direct/range {v6 .. v12}, Landroidx/appcompat/app/AlertController$AlertParams$2;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    move-object v3, v5

    .restart local v3    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1038
    .end local v3    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v5, :cond_6

    .line 1039
    move-object v5, v1

    iget v5, v5, Landroidx/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    move v4, v5

    .line 1044
    .local v4, "layout":I
    :goto_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_7

    .line 1045
    new-instance v5, Landroid/widget/SimpleCursorAdapter;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v11, 0x1

    new-array v11, v11, [I

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    const v14, 0x1020014

    aput v14, v12, v13

    invoke-direct/range {v6 .. v11}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v3, v5

    .restart local v3    # "adapter":Landroid/widget/ListAdapter;
    goto/16 :goto_0

    .line 1041
    .end local v3    # "adapter":Landroid/widget/ListAdapter;
    .end local v4    # "layout":I
    :cond_6
    move-object v5, v1

    iget v5, v5, Landroidx/appcompat/app/AlertController;->mListItemLayout:I

    move v4, v5

    .restart local v4    # "layout":I
    goto :goto_3

    .line 1047
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_8

    .line 1048
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    move-object v3, v5

    .restart local v3    # "adapter":Landroid/widget/ListAdapter;
    goto/16 :goto_0

    .line 1050
    .end local v3    # "adapter":Landroid/widget/ListAdapter;
    :cond_8
    new-instance v5, Landroidx/appcompat/app/AlertController$CheckedItemAdapter;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move v8, v4

    const v9, 0x1020014

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/appcompat/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    move-object v3, v5

    .restart local v3    # "adapter":Landroid/widget/ListAdapter;
    goto/16 :goto_0

    .line 1074
    .end local v4    # "layout":I
    :cond_9
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v5, :cond_1

    .line 1075
    move-object v5, v2

    new-instance v6, Landroidx/appcompat/app/AlertController$AlertParams$4;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    move-object v9, v2

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Landroidx/appcompat/app/AlertController$AlertParams$4;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_1

    .line 1094
    :cond_a
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v5, :cond_3

    .line 1095
    move-object v5, v2

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public apply(Landroidx/appcompat/app/AlertController;)V
    .locals 8

    .prologue
    .line 931
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$AlertParams;
    move-object v1, p1

    .local v1, "dialog":Landroidx/appcompat/app/AlertController;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v2, :cond_b

    .line 932
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 947
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 948
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 950
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 951
    :cond_2
    move-object v2, v1

    const/4 v3, -0x1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 954
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-nez v2, :cond_4

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 955
    :cond_4
    move-object v2, v1

    const/4 v3, -0x2

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 958
    :cond_5
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-nez v2, :cond_6

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    .line 959
    :cond_6
    move-object v2, v1

    const/4 v3, -0x3

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 964
    :cond_7
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v2, :cond_8

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_8

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_9

    .line 965
    :cond_8
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertController$AlertParams;->createListView(Landroidx/appcompat/app/AlertController;)V

    .line 967
    :cond_9
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v2, :cond_10

    .line 968
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v2, :cond_f

    .line 969
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingLeft:I

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingTop:I

    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingRight:I

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingBottom:I

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/AlertController;->setView(Landroid/view/View;IIII)V

    .line 985
    :cond_a
    :goto_1
    return-void

    .line 934
    :cond_b
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_c

    .line 935
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 937
    :cond_c
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_d

    .line 938
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 940
    :cond_d
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    if-eqz v2, :cond_e

    .line 941
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->setIcon(I)V

    .line 943
    :cond_e
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v2, :cond_0

    .line 944
    move-object v2, v1

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mIconAttrId:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertController;->getIconAttributeResId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->setIcon(I)V

    goto/16 :goto_0

    .line 972
    :cond_f
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 974
    :cond_10
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v2, :cond_a

    .line 975
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertController;->setView(I)V

    goto :goto_1
.end method
