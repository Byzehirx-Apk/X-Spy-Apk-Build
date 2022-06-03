.class public Landroidx/constraintlayout/solver/widgets/Helper;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.source "Helper.java"


# instance fields
.field protected mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mWidgetsCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Helper;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    .line 9
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 10
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 7

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Helper;
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 19
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 21
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 22
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    .line 23
    return-void
.end method

.method public removeAllIds()V
    .locals 3

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Helper;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/Helper;->mWidgetsCount:I

    .line 30
    return-void
.end method
