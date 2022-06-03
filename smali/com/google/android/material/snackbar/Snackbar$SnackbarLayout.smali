.class public final Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
.source "Snackbar.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SnackbarLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;)V

    .line 394
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 398
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v7, v0

    move v8, v1

    move v9, v2

    invoke-super {v7, v8, v9}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->onMeasure(II)V

    .line 407
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getChildCount()I

    move-result v7

    move v3, v7

    .line 408
    .local v3, "childCount":I
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getMeasuredWidth()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    move v4, v7

    .line 409
    .local v4, "availableWidth":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 410
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 411
    .local v6, "child":Landroid/view/View;
    move-object v7, v6

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 412
    move-object v7, v6

    move v8, v4

    const/high16 v9, 0x40000000    # 2.0f

    .line 413
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move-object v9, v6

    .line 414
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 412
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 409
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 417
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method
