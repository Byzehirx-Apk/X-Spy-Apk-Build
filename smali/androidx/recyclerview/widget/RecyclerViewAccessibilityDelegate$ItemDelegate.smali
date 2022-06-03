.class public Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemDelegate"
.end annotation


# instance fields
.field final mRecyclerViewDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;
    move-object v1, p1

    .local v1, "recyclerViewDelegate":Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 106
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    .line 107
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move-object v2, p2

    .local v2, "info":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 112
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 113
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 114
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 115
    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 117
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;
    move-object v1, p1

    .local v1, "host":Landroid/view/View;
    move v2, p2

    .local v2, "action":I
    move-object v3, p3

    .local v3, "args":Landroid/os/Bundle;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    const/4 v4, 0x1

    move v0, v4

    .line 129
    .end local v0    # "this":Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;
    :goto_0
    return v0

    .line 124
    .restart local v0    # "this":Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 125
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 126
    move-object v4, v0

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    .line 127
    invoke-virtual {v4, v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 129
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method
