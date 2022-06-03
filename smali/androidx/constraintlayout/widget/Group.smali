.class public Landroidx/constraintlayout/widget/Group;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "Group.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Group;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Group;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Group;
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

    invoke-direct {v4, v5, v6, v7}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Group;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 56
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/Group;->mUseViewMeasure:Z

    .line 57
    return-void
.end method

.method public updatePostLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 5

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Group;
    move-object v1, p1

    .local v1, "container":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Group;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-object v2, v3

    .line 89
    .local v2, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move-object v3, v2

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 90
    move-object v3, v2

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 91
    return-void
.end method

.method public updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 9

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/widget/Group;
    move-object v1, p1

    .local v1, "container":Landroidx/constraintlayout/widget/ConstraintLayout;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Group;->getVisibility()I

    move-result v7

    move v2, v7

    .line 66
    .local v2, "visibility":I
    const/4 v7, 0x0

    move v3, v7

    .line 67
    .local v3, "elevation":F
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_0

    .line 68
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Group;->getElevation()F

    move-result v7

    move v3, v7

    .line 70
    :cond_0
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/widget/Group;->mCount:I

    if-ge v7, v8, :cond_2

    .line 71
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/widget/Group;->mIds:[I

    move v8, v4

    aget v7, v7, v8

    move v5, v7

    .line 72
    .local v5, "id":I
    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 73
    .local v6, "view":Landroid/view/View;
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 74
    move-object v7, v6

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 75
    move v7, v3

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_1

    .line 76
    move-object v7, v6

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/view/View;->setElevation(F)V

    .line 70
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    .end local v5    # "id":I
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method
