.class public Lcom/google/android/material/snackbar/SnackbarContentLayout;
.super Landroid/widget/LinearLayout;
.source "SnackbarContentLayout.java"

# interfaces
.implements Lcom/google/android/material/snackbar/ContentViewCallback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private actionView:Landroid/widget/Button;

.field private maxInlineActionWidth:I

.field private maxWidth:I

.field private messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/snackbar/SnackbarContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Lcom/google/android/material/R$styleable;->SnackbarLayout:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 48
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->SnackbarLayout_android_maxWidth:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxWidth:I

    .line 49
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->SnackbarLayout_maxActionInlineWidth:I

    const/4 v7, -0x1

    .line 50
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxInlineActionWidth:I

    .line 51
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    return-void
.end method

.method private static updateTopBottomPadding(Landroid/view/View;II)V
    .locals 8

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move v1, p1

    .local v1, "topPadding":I
    move v2, p2

    .local v2, "bottomPadding":I
    move-object v3, v0

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->isPaddingRelative(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    move-object v3, v0

    move-object v4, v0

    .line 123
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v4

    move v5, v1

    move-object v6, v0

    .line 125
    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v6

    move v7, v2

    .line 121
    invoke-static {v3, v4, v5, v6, v7}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateViewsWithinLayout(III)Z
    .locals 8

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    move v1, p1

    .local v1, "orientation":I
    move v2, p2

    .local v2, "messagePadTop":I
    move v3, p3

    .local v3, "messagePadBottom":I
    const/4 v5, 0x0

    move v4, v5

    .line 107
    .local v4, "changed":Z
    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getOrientation()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 108
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->setOrientation(I)V

    .line 109
    const/4 v5, 0x1

    move v4, v5

    .line 111
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    move v6, v2

    if-ne v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    .line 112
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    move v6, v3

    if-eq v5, v6, :cond_2

    .line 113
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    move v6, v2

    move v7, v3

    invoke-static {v5, v6, v7}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->updateTopBottomPadding(Landroid/view/View;II)V

    .line 114
    const/4 v5, 0x1

    move v4, v5

    .line 116
    :cond_2
    move v5, v4

    move v0, v5

    .end local v0    # "this":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    return v0
.end method


# virtual methods
.method public animateContentIn(II)V
    .locals 6

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    move v1, p1

    .local v1, "delay":I
    move v2, p2

    .local v2, "duration":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 135
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 137
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 138
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 139
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 141
    :cond_0
    return-void
.end method

.method public animateContentOut(II)V
    .locals 6

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    move v1, p1

    .local v1, "delay":I
    move v2, p2

    .local v2, "duration":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 146
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 148
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 149
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 150
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move v4, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 152
    :cond_0
    return-void
.end method

.method public getActionView()Landroid/widget/Button;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 57
    move-object v1, v0

    move-object v2, v0

    sget v3, Lcom/google/android/material/R$id;->snackbar_text:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    .line 58
    move-object v1, v0

    move-object v2, v0

    sget v3, Lcom/google/android/material/R$id;->snackbar_action:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    .line 59
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/snackbar/SnackbarContentLayout;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v8, v0

    move v9, v1

    move v10, v2

    invoke-super {v8, v9, v10}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 73
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxWidth:I

    if-lez v8, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMeasuredWidth()I

    move-result v8

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxWidth:I

    if-le v8, v9, :cond_0

    .line 74
    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxWidth:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v1, v8

    .line 75
    move-object v8, v0

    move v9, v1

    move v10, v2

    invoke-super {v8, v9, v10}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 78
    :cond_0
    move-object v8, v0

    .line 79
    invoke-virtual {v8}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/google/android/material/R$dimen;->design_snackbar_padding_vertical_2lines:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move v3, v8

    .line 80
    .local v3, "multiLineVPadding":I
    move-object v8, v0

    .line 81
    invoke-virtual {v8}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/google/android/material/R$dimen;->design_snackbar_padding_vertical:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move v4, v8

    .line 82
    .local v4, "singleLineVPadding":I
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_0
    move v5, v8

    .line 84
    .local v5, "isMultiLine":Z
    const/4 v8, 0x0

    move v6, v8

    .line 85
    .local v6, "remeasure":Z
    move v8, v5

    if-eqz v8, :cond_4

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxInlineActionWidth:I

    if-lez v8, :cond_4

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    .line 87
    invoke-virtual {v8}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v8

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxInlineActionWidth:I

    if-le v8, v9, :cond_4

    .line 88
    move-object v8, v0

    const/4 v9, 0x1

    move v10, v3

    move v11, v3

    move v12, v4

    sub-int/2addr v11, v12

    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->updateViewsWithinLayout(III)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 90
    const/4 v8, 0x1

    move v6, v8

    .line 99
    :cond_1
    :goto_1
    move v8, v6

    if-eqz v8, :cond_2

    .line 100
    move-object v8, v0

    move v9, v1

    move v10, v2

    invoke-super {v8, v9, v10}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 102
    :cond_2
    return-void

    .line 82
    .end local v5    # "isMultiLine":Z
    .end local v6    # "remeasure":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 93
    .restart local v5    # "isMultiLine":Z
    .restart local v6    # "remeasure":Z
    :cond_4
    move v8, v5

    if-eqz v8, :cond_5

    move v8, v3

    :goto_2
    move v7, v8

    .line 94
    .local v7, "messagePadding":I
    move-object v8, v0

    const/4 v9, 0x0

    move v10, v7

    move v11, v7

    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->updateViewsWithinLayout(III)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 95
    const/4 v8, 0x1

    move v6, v8

    goto :goto_1

    .line 93
    .end local v7    # "messagePadding":I
    :cond_5
    move v8, v4

    goto :goto_2
.end method
