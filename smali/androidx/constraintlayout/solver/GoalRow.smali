.class public Landroidx/constraintlayout/solver/GoalRow;
.super Landroidx/constraintlayout/solver/ArrayRow;
.source "GoalRow.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/Cache;)V
    .locals 4

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/GoalRow;
    move-object v1, p1

    .local v1, "cache":Landroidx/constraintlayout/solver/Cache;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    .line 23
    return-void
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 6

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/GoalRow;
    move-object v1, p1

    .local v1, "error":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 30
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 31
    return-void
.end method
