.class final Landroidx/customview/widget/ExploreByTouchHelper$2;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Landroidx/customview/widget/FocusStrategy$CollectionAdapter;


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
        "Landroidx/customview/widget/FocusStrategy$CollectionAdapter",
        "<",
        "Landroidx/collection/SparseArrayCompat",
        "<",
        "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
        ">;",
        "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper$2;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroidx/collection/SparseArrayCompat;I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;I)",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;"
        }
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper$2;
    move-object v1, p1

    .local v1, "collection":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;>;"
    move v2, p2

    .local v2, "index":I
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v0, v3

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper$2;
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper$2;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroidx/collection/SparseArrayCompat;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/customview/widget/ExploreByTouchHelper$2;->get(Landroidx/collection/SparseArrayCompat;I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper$2;
    return-object v0
.end method

.method public size(Landroidx/collection/SparseArrayCompat;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper$2;
    move-object v1, p1

    .local v1, "collection":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;>;"
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper$2;
    return v0
.end method

.method public bridge synthetic size(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Landroidx/customview/widget/ExploreByTouchHelper$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v3}, Landroidx/customview/widget/ExploreByTouchHelper$2;->size(Landroidx/collection/SparseArrayCompat;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/customview/widget/ExploreByTouchHelper$2;
    return v0
.end method
