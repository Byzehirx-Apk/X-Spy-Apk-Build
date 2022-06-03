.class Lcom/google/android/material/chip/Chip$ChipTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "Chip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/Chip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChipTouchHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/chip/Chip;


# direct methods
.method constructor <init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V
    .locals 5

    .prologue
    .line 957
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip$ChipTouchHelper;
    move-object v1, p1

    move-object v2, p2

    .local v2, "view":Lcom/google/android/material/chip/Chip;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 958
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 959
    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 6

    .prologue
    .line 963
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip$ChipTouchHelper;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v3}, Lcom/google/android/material/chip/Chip;->access$100(Lcom/google/android/material/chip/Chip;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v3}, Lcom/google/android/material/chip/Chip;->access$200(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;

    move-result-object v3

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/google/android/material/chip/Chip$ChipTouchHelper;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip$ChipTouchHelper;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 970
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip$ChipTouchHelper;
    move-object v1, p1

    .local v1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v2}, Lcom/google/android/material/chip/Chip;->access$100(Lcom/google/android/material/chip/Chip;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 971
    move-object v2, v1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 973
    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 1017
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip$ChipTouchHelper;
    move v1, p1

    .local v1, "virtualViewId":I
    move v2, p2

    .local v2, "action":I
    move-object v3, p3

    .local v3, "arguments":Landroid/os/Bundle;
    move v4, v2

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    move v4, v1

    if-nez v4, :cond_0

    .line 1019
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v4}, Lcom/google/android/material/chip/Chip;->performCloseIconClick()Z

    move-result v4

    move v0, v4

    .line 1021
    .end local v0    # "this":Lcom/google/android/material/chip/Chip$ChipTouchHelper;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/chip/Chip$ChipTouchHelper;
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method protected onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5

    .prologue
    .line 1002
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip$ChipTouchHelper;
    move-object v1, p1

    .local v1, "node":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v4}, Lcom/google/android/material/chip/Chip;->access$000(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/ChipDrawable;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v4}, Lcom/google/android/material/chip/Chip;->access$000(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/ChipDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/material/chip/ChipDrawable;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 1003
    move-object v3, v1

    const-class v4, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1004
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, v3

    .line 1005
    .local v2, "chipText":Ljava/lang/CharSequence;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 1006
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    :goto_1
    return-void

    .line 1002
    .end local v2    # "chipText":Ljava/lang/CharSequence;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1010
    .restart local v2    # "chipText":Ljava/lang/CharSequence;
    :cond_1
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 13

    .prologue
    .line 978
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip$ChipTouchHelper;
    move v1, p1

    .local v1, "virtualViewId":I
    move-object v2, p2

    .local v2, "node":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v5}, Lcom/google/android/material/chip/Chip;->access$100(Lcom/google/android/material/chip/Chip;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 979
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v5}, Lcom/google/android/material/chip/Chip;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v3, v5

    .line 980
    .local v3, "closeIconContentDescription":Ljava/lang/CharSequence;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 981
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 991
    :goto_0
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v6}, Lcom/google/android/material/chip/Chip;->access$300(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 992
    move-object v5, v2

    sget-object v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 993
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v6}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 994
    .line 998
    .end local v3    # "closeIconContentDescription":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 983
    .restart local v3    # "closeIconContentDescription":Ljava/lang/CharSequence;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v5}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v4, v5

    .line 984
    .local v4, "chipText":Ljava/lang/CharSequence;
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 985
    invoke-virtual {v6}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$string;->mtrl_chip_close_icon_content_description:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v4

    .line 988
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    move-object v11, v4

    :goto_2
    aput-object v11, v9, v10

    .line 986
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 989
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 984
    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 988
    :cond_1
    const-string/jumbo v11, ""

    goto :goto_2

    .line 995
    .end local v3    # "closeIconContentDescription":Ljava/lang/CharSequence;
    .end local v4    # "chipText":Ljava/lang/CharSequence;
    :cond_2
    move-object v5, v2

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 996
    move-object v5, v2

    invoke-static {}, Lcom/google/android/material/chip/Chip;->access$400()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_1
.end method
