.class Lcom/google/android/material/appbar/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "ViewOffsetHelper.java"


# instance fields
.field private layoutLeft:I

.field private layoutTop:I

.field private offsetLeft:I

.field private offsetTop:I

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewOffsetHelper;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    .line 40
    return-void
.end method

.method private updateOffsets()V
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewOffsetHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 53
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetLeft:I

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    move-object v4, v0

    iget v4, v4, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutLeft:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 54
    return-void
.end method


# virtual methods
.method public getLayoutLeft()I
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewOffsetHelper;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutLeft:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/ViewOffsetHelper;
    return v0
.end method

.method public getLayoutTop()I
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewOffsetHelper;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/ViewOffsetHelper;
    return v0
.end method

.method public getLeftAndRightOffset()I
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewOffsetHelper;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetLeft:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/ViewOffsetHelper;
    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewOffsetHelper;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/appbar/ViewOffsetHelper;
    return v0
.end method

.method public onViewLayout()V
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewOffsetHelper;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, v1, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    .line 45
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, v1, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutLeft:I

    .line 48
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/appbar/ViewOffsetHelper;->updateOffsets()V

    .line 49
    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewOffsetHelper;
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetLeft:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 79
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetLeft:I

    .line 80
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/appbar/ViewOffsetHelper;->updateOffsets()V

    .line 81
    const/4 v2, 0x1

    move v0, v2

    .line 83
    .end local v0    # "this":Lcom/google/android/material/appbar/ViewOffsetHelper;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/appbar/ViewOffsetHelper;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewOffsetHelper;
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    iget v2, v2, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 64
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    .line 65
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/appbar/ViewOffsetHelper;->updateOffsets()V

    .line 66
    const/4 v2, 0x1

    move v0, v2

    .line 68
    .end local v0    # "this":Lcom/google/android/material/appbar/ViewOffsetHelper;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/android/material/appbar/ViewOffsetHelper;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
