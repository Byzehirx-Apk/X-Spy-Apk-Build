.class public Landroidx/constraintlayout/widget/Guideline;
.super Landroid/view/View;
.source "Guideline.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Guideline;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    move-object v2, v0

    const/16 v3, 0x8

    invoke-super {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Guideline;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    move-object v3, v0

    const/16 v4, 0x8

    invoke-super {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Guideline;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    move-object v4, v0

    const/16 v5, 0x8

    invoke-super {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Guideline;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move v4, p4

    .local v4, "defStyleRes":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    move-object v5, v0

    const/16 v6, 0x8

    invoke-super {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 72
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 86
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Guideline;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/widget/Guideline;->setMeasuredDimension(II)V

    .line 94
    return-void
.end method

.method public setGuidelineBegin(I)V
    .locals 5

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Guideline;
    move v1, p1

    .local v1, "margin":I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Guideline;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object v2, v3

    .line 103
    .local v2, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v3, v2

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 104
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Guideline;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void
.end method

.method public setGuidelineEnd(I)V
    .locals 5

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Guideline;
    move v1, p1

    .local v1, "margin":I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Guideline;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object v2, v3

    .line 114
    .local v2, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v3, v2

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 115
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Guideline;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    return-void
.end method

.method public setGuidelinePercent(F)V
    .locals 5

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Guideline;
    move v1, p1

    .local v1, "ratio":F
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Guideline;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object v2, v3

    .line 124
    .local v2, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v3, v2

    move v4, v1

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 125
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Guideline;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 79
    return-void
.end method
