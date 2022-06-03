.class Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
.super Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNodeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/customview/widget/ExploreByTouchHelper;


# direct methods
.method constructor <init>(Landroidx/customview/widget/ExploreByTouchHelper;)V
    .locals 4

    .prologue
    .line 1238
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/customview/widget/ExploreByTouchHelper;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    .line 1239
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 5

    .prologue
    .line 1245
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
    move v1, p1

    .local v1, "virtualViewId":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/customview/widget/ExploreByTouchHelper;

    move v4, v1

    .line 1246
    invoke-virtual {v3, v4}, Landroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    move-object v2, v3

    .line 1247
    .local v2, "node":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v3, v2

    invoke-static {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
    return-object v0
.end method

.method public findFocus(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 5

    .prologue
    .line 1257
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
    move v1, p1

    .local v1, "focusType":I
    move v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/customview/widget/ExploreByTouchHelper;

    iget v3, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    :goto_0
    move v2, v3

    .line 1259
    .local v2, "focusedId":I
    move v3, v2

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_1

    .line 1260
    const/4 v3, 0x0

    move-object v0, v3

    .line 1262
    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
    :goto_1
    return-object v0

    .line 1257
    .end local v2    # "focusedId":I
    .restart local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/customview/widget/ExploreByTouchHelper;

    iget v3, v3, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    goto :goto_0

    .line 1262
    .restart local v2    # "focusedId":I
    :cond_1
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 1252
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
    move v1, p1

    .local v1, "virtualViewId":I
    move v2, p2

    .local v2, "action":I
    move-object v3, p3

    .local v3, "arguments":Landroid/os/Bundle;
    move-object v4, v0

    iget-object v4, v4, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroidx/customview/widget/ExploreByTouchHelper;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/customview/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
    return v0
.end method
