.class final Landroidx/customview/widget/ExploreByTouchHelper$1;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Landroidx/customview/widget/FocusStrategy$BoundsAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/customview/widget/FocusStrategy$BoundsAdapter",
        "<",
        "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public obtainBounds(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper$1;
    move-object v1, p1

    .local v1, "node":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v2, p2

    .local v2, "outBounds":Landroid/graphics/Rect;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 340
    return-void
.end method

.method public bridge synthetic obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/customview/widget/ExploreByTouchHelper$1;->obtainBounds(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/graphics/Rect;)V

    return-void
.end method
