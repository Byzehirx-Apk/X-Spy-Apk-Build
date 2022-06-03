.class Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
.super Landroidx/appcompat/widget/ListPopupWindow;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field private final mVisibleRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    .line 722
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
    move-object v1, p1

    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    move v4, p4

    .local v4, "defStyleAttr":I
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 723
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 720
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    .line 725
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 726
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setModal(Z)V

    .line 727
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setPromptPosition(I)V

    .line 729
    move-object v5, v0

    new-instance v6, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;Landroidx/appcompat/widget/AppCompatSpinner;)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 740
    return-void
.end method

.method static synthetic access$001(Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;)V
    .locals 2

    .prologue
    .line 717
    move-object v0, p0

    .local v0, "x0":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method computeContentWidth()V
    .locals 14

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v1, v8

    .line 759
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    move v2, v8

    .line 760
    .local v2, "hOffset":I
    move-object v8, v1

    if-eqz v8, :cond_2

    .line 761
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v8

    .line 762
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v8}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    :goto_0
    move v2, v8

    .line 768
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v8}, Landroidx/appcompat/widget/AppCompatSpinner;->getPaddingLeft()I

    move-result v8

    move v3, v8

    .line 769
    .local v3, "spinnerPaddingLeft":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v8}, Landroidx/appcompat/widget/AppCompatSpinner;->getPaddingRight()I

    move-result v8

    move v4, v8

    .line 770
    .local v4, "spinnerPaddingRight":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v8}, Landroidx/appcompat/widget/AppCompatSpinner;->getWidth()I

    move-result v8

    move v5, v8

    .line 771
    .local v5, "spinnerWidth":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    iget v8, v8, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_3

    .line 772
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v9, Landroid/widget/SpinnerAdapter;

    move-object v10, v0

    .line 773
    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 772
    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/AppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v8

    move v6, v8

    .line 774
    .local v6, "contentWidth":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v8}, Landroidx/appcompat/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 775
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    move v7, v8

    .line 776
    .local v7, "contentWidthLimit":I
    move v8, v6

    move v9, v7

    if-le v8, v9, :cond_0

    .line 777
    move v8, v7

    move v6, v8

    .line 779
    :cond_0
    move-object v8, v0

    move v9, v6

    move v10, v5

    move v11, v3

    sub-int/2addr v10, v11

    move v11, v4

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    .line 781
    .line 786
    .end local v6    # "contentWidth":I
    .end local v7    # "contentWidthLimit":I
    :goto_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v8}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 787
    move v8, v2

    move v9, v5

    move v10, v4

    sub-int/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    move v2, v8

    .line 791
    :goto_3
    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 792
    return-void

    .line 762
    .end local v3    # "spinnerPaddingLeft":I
    .end local v4    # "spinnerPaddingRight":I
    .end local v5    # "spinnerWidth":I
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    goto/16 :goto_0

    .line 765
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    move-object v12, v9

    move v13, v10

    move v9, v13

    move-object v10, v12

    move v11, v13

    iput v11, v10, Landroid/graphics/Rect;->right:I

    iput v9, v8, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 781
    .restart local v3    # "spinnerPaddingLeft":I
    .restart local v4    # "spinnerPaddingRight":I
    .restart local v5    # "spinnerWidth":I
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    iget v8, v8, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 782
    move-object v8, v0

    move v9, v5

    move v10, v3

    sub-int/2addr v9, v10

    move v10, v4

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_2

    .line 784
    :cond_4
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    iget v9, v9, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_2

    .line 789
    :cond_5
    move v8, v2

    move v9, v3

    add-int/2addr v8, v9

    move v2, v8

    goto :goto_3
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 749
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
    return-object v0
.end method

.method isVisibleToUser(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 849
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v1

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4

    .prologue
    .line 744
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
    move-object v1, p1

    .local v1, "adapter":Landroid/widget/ListAdapter;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 745
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 746
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 754
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
    move-object v1, p1

    .local v1, "hintText":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 755
    return-void
.end method

.method public show()V
    .locals 11

    .prologue
    .line 796
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v5

    move v1, v5

    .line 798
    .local v1, "wasShowing":Z
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->computeContentWidth()V

    .line 800
    move-object v5, v0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setInputMethodMode(I)V

    .line 801
    move-object v5, v0

    invoke-super {v5}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 802
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v5

    move-object v2, v5

    .line 803
    .local v2, "listView":Landroid/widget/ListView;
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 804
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setSelection(I)V

    .line 806
    move v5, v1

    if-eqz v5, :cond_0

    .line 809
    .line 843
    :goto_0
    return-void

    .line 815
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    move-object v3, v5

    .line 816
    .local v3, "vto":Landroid/view/ViewTreeObserver;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 817
    new-instance v5, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$2;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;)V

    move-object v4, v5

    .line 832
    .local v4, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 833
    move-object v5, v0

    new-instance v6, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$3;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$3;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 843
    .end local v4    # "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_1
    goto :goto_0
.end method
