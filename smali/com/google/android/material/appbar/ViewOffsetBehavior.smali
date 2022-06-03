.class Lcom/google/android/material/appbar/ViewOffsetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "ViewOffsetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private tempLeftRightOffset:I

.field private tempTopBottomOffset:I

.field private viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 29
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 30
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 30
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 36
    return-void
.end method


# virtual methods
.method public getLeftAndRightOffset()I
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/ViewOffsetHelper;->getLeftAndRightOffset()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    return v0

    .restart local v0    # "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTopAndBottomOffset()I
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/ViewOffsetHelper;->getTopAndBottomOffset()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    return v0

    .restart local v0    # "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    move v3, p3

    .local v3, "layoutDirection":I
    move-object v4, v1

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 63
    return-void
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;, "TV;"
    move v3, p3

    .local v3, "layoutDirection":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 43
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-nez v4, :cond_0

    .line 44
    move-object v4, v0

    new-instance v5, Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/google/android/material/appbar/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    iput-object v5, v4, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 46
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    invoke-virtual {v4}, Lcom/google/android/material/appbar/ViewOffsetHelper;->onViewLayout()V

    .line 48
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    if-eqz v4, :cond_1

    .line 49
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v4

    .line 50
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 52
    :cond_1
    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    if-eqz v4, :cond_2

    .line 53
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    move-result v4

    .line 54
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 57
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    return v0
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v2, :cond_0

    .line 76
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    move-result v2

    move v0, v2

    .line 80
    .end local v0    # "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    :goto_0
    return v0

    .line 78
    .restart local v0    # "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempLeftRightOffset:I

    .line 80
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz v2, :cond_0

    .line 67
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v2

    move v0, v2

    .line 71
    .end local v0    # "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    :goto_0
    return v0

    .line 69
    .restart local v0    # "this":Lcom/google/android/material/appbar/ViewOffsetBehavior;, "Lcom/google/android/material/appbar/ViewOffsetBehavior<TV;>;"
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 71
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
