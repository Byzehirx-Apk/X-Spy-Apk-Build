.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 4

    .prologue
    .line 766
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;"
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 878
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;"
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "left":I
    move v3, p3

    .local v3, "dx":I
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;"
    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 872
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;"
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "dy":I
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 873
    invoke-static {v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$100(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 872
    :goto_0
    invoke-static {v4, v5, v6}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;"
    return v0

    .line 873
    .restart local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;"
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    goto :goto_0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 883
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;"
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v2, :cond_0

    .line 884
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    move v0, v2

    .line 886
    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;"
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    move v0, v2

    goto :goto_0
.end method

.method public onViewDragStateChanged(I)V
    .locals 4

    .prologue
    .line 794
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;"
    move v1, p1

    .local v1, "state":I
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 795
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 797
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 789
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;"
    move-object v1, p1

    .local v1, "changedView":Landroid/view/View;
    move v2, p2

    .local v2, "left":I
    move v3, p3

    .local v3, "top":I
    move v4, p4

    .local v4, "dx":I
    move v5, p5

    .local v5, "dy":I
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 790
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 14
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;"
    move-object v1, p1

    .local v1, "releasedChild":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "xvel":F
    move/from16 v3, p3

    .local v3, "yvel":F
    move v7, v3

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 804
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$000(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 805
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    move v4, v7

    .line 806
    .local v4, "top":I
    const/4 v7, 0x3

    move v5, v7

    .line 861
    .local v5, "targetState":I
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    move v9, v4

    invoke-virtual {v7, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 862
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 863
    move-object v7, v1

    new-instance v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-object v11, v1

    move v12, v5

    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 868
    :goto_1
    return-void

    .line 808
    .end local v4    # "top":I
    .end local v5    # "targetState":I
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    move v6, v7

    .line 809
    .local v6, "currentTop":I
    move v7, v6

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    if-le v7, v8, :cond_1

    .line 810
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    move v4, v7

    .line 811
    .restart local v4    # "top":I
    const/4 v7, 0x6

    move v5, v7

    .line 816
    .restart local v5    # "targetState":I
    :goto_2
    goto :goto_0

    .line 813
    .end local v4    # "top":I
    .end local v5    # "targetState":I
    :cond_1
    const/4 v7, 0x0

    move v4, v7

    .line 814
    .restart local v4    # "top":I
    const/4 v7, 0x3

    move v5, v7

    .restart local v5    # "targetState":I
    goto :goto_2

    .line 817
    .end local v4    # "top":I
    .end local v5    # "targetState":I
    .end local v6    # "currentTop":I
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-object v8, v1

    move v9, v3

    .line 818
    invoke-virtual {v7, v8, v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v1

    .line 819
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    if-gt v7, v8, :cond_3

    move v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    .line 822
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    move v4, v7

    .line 823
    .restart local v4    # "top":I
    const/4 v7, 0x5

    move v5, v7

    .restart local v5    # "targetState":I
    goto :goto_0

    .line 824
    .end local v4    # "top":I
    .end local v5    # "targetState":I
    :cond_4
    move v7, v3

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_5

    move v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_b

    .line 827
    :cond_5
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    move v6, v7

    .line 828
    .restart local v6    # "currentTop":I
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$000(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 829
    move v7, v6

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v9, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v8, v9

    .line 830
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 831
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    move v4, v7

    .line 832
    .restart local v4    # "top":I
    const/4 v7, 0x3

    move v5, v7

    .line 857
    .restart local v5    # "targetState":I
    :goto_3
    goto/16 :goto_0

    .line 834
    .end local v4    # "top":I
    .end local v5    # "targetState":I
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    move v4, v7

    .line 835
    .restart local v4    # "top":I
    const/4 v7, 0x4

    move v5, v7

    .restart local v5    # "targetState":I
    goto :goto_3

    .line 838
    .end local v4    # "top":I
    .end local v5    # "targetState":I
    :cond_7
    move v7, v6

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    if-ge v7, v8, :cond_9

    .line 839
    move v7, v6

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v9, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 840
    const/4 v7, 0x0

    move v4, v7

    .line 841
    .restart local v4    # "top":I
    const/4 v7, 0x3

    move v5, v7

    .restart local v5    # "targetState":I
    goto :goto_3

    .line 843
    .end local v4    # "top":I
    .end local v5    # "targetState":I
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    move v4, v7

    .line 844
    .restart local v4    # "top":I
    const/4 v7, 0x6

    move v5, v7

    .restart local v5    # "targetState":I
    goto :goto_3

    .line 847
    .end local v4    # "top":I
    .end local v5    # "targetState":I
    :cond_9
    move v7, v6

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v8, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v9, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr v8, v9

    .line 848
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 849
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    move v4, v7

    .line 850
    .restart local v4    # "top":I
    const/4 v7, 0x6

    move v5, v7

    .restart local v5    # "targetState":I
    goto :goto_3

    .line 852
    .end local v4    # "top":I
    .end local v5    # "targetState":I
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    move v4, v7

    .line 853
    .restart local v4    # "top":I
    const/4 v7, 0x4

    move v5, v7

    .restart local v5    # "targetState":I
    goto :goto_3

    .line 858
    .end local v4    # "top":I
    .end local v5    # "targetState":I
    .end local v6    # "currentTop":I
    :cond_b
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    move v4, v7

    .line 859
    .restart local v4    # "top":I
    const/4 v7, 0x4

    move v5, v7

    .restart local v5    # "targetState":I
    goto/16 :goto_0

    .line 866
    :cond_c
    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move v8, v5

    invoke-virtual {v7, v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    goto/16 :goto_1
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 770
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;"
    move-object v1, p1

    .local v1, "child":Landroid/view/View;
    move v2, p2

    .local v2, "pointerId":I
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 771
    const/4 v4, 0x0

    move v0, v4

    .line 783
    .end local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;"
    :goto_0
    return v0

    .line 773
    .restart local v0    # "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    if-eqz v4, :cond_1

    .line 774
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 776
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 777
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    .line 778
    .local v3, "scroll":Landroid/view/View;
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 780
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 783
    .end local v3    # "scroll":Landroid/view/View;
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method
