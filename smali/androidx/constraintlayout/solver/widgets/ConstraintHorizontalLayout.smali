.class public Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
.source "ConstraintHorizontalLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;
    }
.end annotation


# instance fields
.field private mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    .line 30
    move-object v1, v0

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->MIDDLE:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    .line 35
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>(II)V

    .line 30
    move-object v3, v0

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->MIDDLE:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    .line 55
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 10

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>(IIII)V

    .line 30
    move-object v5, v0

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->MIDDLE:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    .line 46
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 13

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;
    move-object v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_4

    .line 64
    move-object v7, v0

    move-object v2, v7

    .line 65
    .local v2, "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .local v4, "mChildrenSize":I
    :goto_0
    move v7, v3

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 66
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mChildren:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v5, v7

    .line 67
    .local v5, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v7, v2

    move-object v8, v0

    if-eq v7, v8, :cond_0

    .line 68
    move-object v7, v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 69
    move-object v7, v2

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v9, v5

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 78
    :goto_1
    move-object v7, v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 79
    move-object v7, v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 80
    move-object v7, v5

    move-object v2, v7

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_0
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-object v6, v7

    .line 72
    .local v6, "strength":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->END:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    if-ne v7, v8, :cond_1

    .line 73
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-object v6, v7

    .line 75
    :cond_1
    move-object v7, v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v9, v2

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v11, 0x0

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    goto :goto_1

    .line 82
    .end local v5    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v6    # "strength":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    :cond_2
    move-object v7, v2

    move-object v8, v0

    if-eq v7, v8, :cond_4

    .line 83
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-object v3, v7

    .line 84
    .local v3, "strength":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->BEGIN:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    if-ne v7, v8, :cond_3

    .line 85
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-object v3, v7

    .line 87
    :cond_3
    move-object v7, v2

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object v9, v0

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v11, 0x0

    move-object v12, v3

    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    .line 91
    .end local v2    # "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v3    # "strength":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    .end local v4    # "mChildrenSize":I
    :cond_4
    move-object v7, v0

    move-object v8, v1

    invoke-super {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 92
    return-void
.end method
