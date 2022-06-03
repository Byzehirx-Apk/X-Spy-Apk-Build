.class public Landroidx/constraintlayout/solver/widgets/ResolutionDimension;
.super Landroidx/constraintlayout/solver/widgets/ResolutionNode;
.source "ResolutionDimension.java"


# instance fields
.field value:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionDimension;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;-><init>()V

    .line 23
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->value:F

    return-void
.end method


# virtual methods
.method public remove()V
    .locals 3

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionDimension;
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->state:I

    .line 42
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionDimension;
    move-object v1, v0

    invoke-super {v1}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->reset()V

    .line 27
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->value:F

    .line 28
    return-void
.end method

.method public resolve(I)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionDimension;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->state:I

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->value:F

    move v3, v1

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 32
    :cond_0
    move-object v2, v0

    move v3, v1

    int-to-float v3, v3

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->value:F

    .line 33
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 34
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->invalidate()V

    .line 36
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->didResolve()V

    .line 38
    :cond_2
    return-void
.end method
