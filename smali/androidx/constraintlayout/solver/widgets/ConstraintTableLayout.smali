.class public Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
.source "ConstraintTableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;,
        Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    }
.end annotation


# static fields
.field public static final ALIGN_CENTER:I = 0x0

.field private static final ALIGN_FULL:I = 0x3

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2


# instance fields
.field private mHorizontalGuidelines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;",
            ">;"
        }
    .end annotation
.end field

.field private mNumCols:I

.field private mNumRows:I

.field private mPadding:I

.field private mVerticalGrowth:Z

.field private mVerticalGuidelines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;",
            ">;"
        }
    .end annotation
.end field

.field private system:Landroidx/constraintlayout/solver/LinearSystem;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    .line 28
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    .line 29
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 30
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    .line 31
    move-object v1, v0

    const/16 v2, 0x8

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    .line 52
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    .line 53
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    .line 55
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 56
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    .line 403
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    .line 67
    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>(II)V

    .line 28
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    .line 29
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 30
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    .line 31
    move-object v3, v0

    const/16 v4, 0x8

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    .line 52
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    .line 53
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    .line 55
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 56
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    .line 403
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    .line 89
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 11

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
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

    .line 28
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    .line 29
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 30
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    .line 31
    move-object v5, v0

    const/16 v6, 0x8

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    .line 52
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    .line 53
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    .line 55
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 56
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    .line 403
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    .line 79
    return-void
.end method

.method private setChildrenConnections()V
    .locals 16

    .prologue
    .line 481
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v1, v13

    .line 482
    .local v1, "count":I
    const/4 v13, 0x0

    move v2, v13

    .line 483
    .local v2, "index":I
    const/4 v13, 0x0

    move v3, v13

    .local v3, "i":I
    :goto_0
    move v13, v3

    move v14, v1

    if-ge v13, v14, :cond_2

    .line 484
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    move v14, v3

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v4, v13

    .line 485
    .local v4, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v13, v2

    move-object v14, v4

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getContainerItemSkip()I

    move-result v14

    add-int/2addr v13, v14

    move v2, v13

    .line 487
    move v13, v2

    move-object v14, v0

    iget v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    rem-int/2addr v13, v14

    move v5, v13

    .line 488
    .local v5, "col":I
    move v13, v2

    move-object v14, v0

    iget v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    div-int/2addr v13, v14

    move v6, v13

    .line 490
    .local v6, "row":I
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    move v14, v6

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;

    move-object v7, v13

    .line 491
    .local v7, "horizontalSlice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    move v14, v5

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    move-object v8, v13

    .line 492
    .local v8, "verticalSlice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->left:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v9, v13

    .line 493
    .local v9, "targetLeft":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v10, v13

    .line 494
    .local v10, "targetRight":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v13, v7

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->top:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v11, v13

    .line 495
    .local v11, "targetTop":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v13, v7

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v12, v13

    .line 497
    .local v12, "targetBottom":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v13, v4

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    move-object v14, v9

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 498
    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v15, v0

    iget v15, v15, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v13

    .line 499
    move-object v13, v10

    instance-of v13, v13, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v13, :cond_0

    .line 500
    move-object v13, v4

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    move-object v14, v10

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 501
    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v15, v0

    iget v15, v15, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v13

    .line 508
    :goto_1
    move-object v13, v8

    iget v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    packed-switch v13, :pswitch_data_0

    .line 528
    :goto_2
    move-object v13, v4

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    move-object v14, v11

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 529
    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v15, v0

    iget v15, v15, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v13

    .line 530
    move-object v13, v12

    instance-of v13, v13, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v13, :cond_1

    .line 531
    move-object v13, v4

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    move-object v14, v12

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 532
    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v15, v0

    iget v15, v15, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v13

    .line 538
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 483
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 503
    :cond_0
    move-object v13, v4

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    move-object v14, v10

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 504
    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v15, v0

    iget v15, v15, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v13

    goto :goto_1

    .line 510
    :pswitch_0
    move-object v13, v4

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 512
    goto :goto_2

    .line 514
    :pswitch_1
    move-object v13, v4

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    .line 516
    move-object v13, v4

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    .line 519
    goto :goto_2

    .line 521
    :pswitch_2
    move-object v13, v4

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    .line 523
    move-object v13, v4

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->setStrength(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    goto/16 :goto_2

    .line 534
    :cond_1
    move-object v13, v4

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    move-object v14, v12

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 535
    invoke-virtual {v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v15, v0

    iget v15, v15, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    move-result v13

    goto :goto_3

    .line 540
    .end local v4    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v5    # "col":I
    .end local v6    # "row":I
    .end local v7    # "horizontalSlice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    .end local v8    # "verticalSlice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    .end local v9    # "targetLeft":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v10    # "targetRight":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v11    # "targetTop":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v12    # "targetBottom":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2
    return-void

    .line 508
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setHorizontalSlices()V
    .locals 11

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 454
    const/high16 v7, 0x42c80000    # 100.0f

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    move v1, v7

    .line 455
    .local v1, "increment":F
    move v7, v1

    move v2, v7

    .line 456
    .local v2, "percent":F
    move-object v7, v0

    move-object v3, v7

    .line 457
    .local v3, "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    if-ge v7, v8, :cond_1

    .line 458
    new-instance v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;)V

    move-object v5, v7

    .line 459
    .local v5, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    move-object v7, v5

    move-object v8, v3

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->top:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 460
    move v7, v4

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_0

    .line 461
    new-instance v7, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    move-object v6, v7

    .line 462
    .local v6, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v7, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    .line 463
    move-object v7, v6

    move-object v8, v0

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/Guideline;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 464
    move-object v7, v6

    move v8, v2

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(I)V

    .line 465
    move v7, v2

    move v8, v1

    add-float/2addr v7, v8

    move v2, v7

    .line 466
    move-object v7, v5

    move-object v8, v6

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 467
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 468
    .line 471
    .end local v6    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :goto_1
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v3, v7

    .line 472
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalSlices:Ljava/util/ArrayList;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 457
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 469
    :cond_0
    move-object v7, v5

    move-object v8, v0

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;->bottom:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    goto :goto_1

    .line 474
    .end local v5    # "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$HorizontalSlice;
    :cond_1
    move-object v7, v0

    invoke-direct {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    .line 475
    return-void
.end method

.method private setVerticalSlices()V
    .locals 11

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 425
    move-object v7, v0

    move-object v1, v7

    .line 426
    .local v1, "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/high16 v7, 0x42c80000    # 100.0f

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    move v2, v7

    .line 427
    .local v2, "increment":F
    move v7, v2

    move v3, v7

    .line 428
    .local v3, "percent":F
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-ge v7, v8, :cond_1

    .line 429
    new-instance v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;)V

    move-object v5, v7

    .line 430
    .local v5, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    move-object v7, v5

    move-object v8, v1

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->left:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 431
    move v7, v4

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_0

    .line 432
    new-instance v7, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    move-object v6, v7

    .line 433
    .local v6, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v7, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    .line 434
    move-object v7, v6

    move-object v8, v0

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/Guideline;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 435
    move-object v7, v6

    move v8, v3

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(I)V

    .line 436
    move v7, v3

    move v8, v2

    add-float/2addr v7, v8

    move v3, v7

    .line 437
    move-object v7, v5

    move-object v8, v6

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 438
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 439
    .line 442
    .end local v6    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :goto_1
    move-object v7, v5

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v1, v7

    .line 443
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 428
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 440
    :cond_0
    move-object v7, v5

    move-object v8, v0

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    goto :goto_1

    .line 445
    .end local v5    # "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    :cond_1
    move-object v7, v0

    invoke-direct {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    .line 446
    return-void
.end method

.method private updateDebugSolverNames()V
    .locals 8

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    if-nez v3, :cond_0

    .line 407
    .line 417
    :goto_0
    return-void

    .line 409
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 410
    .local v1, "num":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_1

    .line 411
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->getDebugName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".VG"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/Guideline;->setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 413
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 414
    const/4 v3, 0x0

    move v2, v3

    :goto_2
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_2

    .line 415
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->getDebugName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".HG"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/Guideline;->setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 417
    :cond_2
    goto/16 :goto_0
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 9

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 317
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v6

    .line 318
    .local v2, "count":I
    move v6, v2

    if-nez v6, :cond_0

    .line 319
    .line 344
    :goto_0
    return-void

    .line 321
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    .line 324
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    if-ne v6, v7, :cond_5

    .line 325
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 326
    .local v3, "num":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 327
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object v5, v6

    .line 328
    .local v5, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v6, v5

    move-object v7, v0

    .line 329
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    .line 328
    :goto_2
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/Guideline;->setPositionRelaxed(Z)V

    .line 330
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/Guideline;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 326
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 329
    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    .line 332
    .end local v5    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 333
    const/4 v6, 0x0

    move v4, v6

    :goto_3
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_4

    .line 334
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object v5, v6

    .line 335
    .restart local v5    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v6, v5

    move-object v7, v0

    .line 336
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    .line 335
    :goto_4
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/Guideline;->setPositionRelaxed(Z)V

    .line 337
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/Guideline;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 333
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 336
    :cond_3
    const/4 v7, 0x0

    goto :goto_4

    .line 339
    .end local v5    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_4
    const/4 v6, 0x0

    move v4, v6

    :goto_5
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_5

    .line 340
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v5, v6

    .line 341
    .local v5, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 339
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 344
    .end local v3    # "num":I
    .end local v4    # "i":I
    .end local v5    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_5
    goto/16 :goto_0
.end method

.method public computeGuidelinesPercentPositions()V
    .locals 5

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 581
    .local v1, "num":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 582
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->inferRelativePercentPosition()V

    .line 581
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 585
    const/4 v3, 0x0

    move v2, v3

    :goto_1
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_1

    .line 586
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->inferRelativePercentPosition()V

    .line 585
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 588
    :cond_1
    return-void
.end method

.method public cycleColumnAlignment(I)V
    .locals 5

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move v1, p1

    .local v1, "column":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    move-object v2, v3

    .line 253
    .local v2, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    move-object v3, v2

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    packed-switch v3, :pswitch_data_0

    .line 264
    :goto_0
    move-object v3, v0

    invoke-direct {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    .line 265
    return-void

    .line 255
    :pswitch_0
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    .line 256
    goto :goto_0

    .line 258
    :pswitch_1
    move-object v3, v2

    const/4 v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    .line 259
    goto :goto_0

    .line 261
    :pswitch_2
    move-object v3, v2

    const/4 v4, 0x2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getColumnAlignmentRepresentation(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move v1, p1

    .local v1, "column":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    move-object v2, v3

    .line 159
    .local v2, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    move-object v3, v2

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 160
    const-string/jumbo v3, "L"

    move-object v0, v3

    .line 168
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    :goto_0
    return-object v0

    .line 161
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    :cond_0
    move-object v3, v2

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    if-nez v3, :cond_1

    .line 162
    const-string/jumbo v3, "C"

    move-object v0, v3

    goto :goto_0

    .line 163
    :cond_1
    move-object v3, v2

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 164
    const-string/jumbo v3, "F"

    move-object v0, v3

    goto :goto_0

    .line 165
    :cond_2
    move-object v3, v2

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 166
    const-string/jumbo v3, "R"

    move-object v0, v3

    goto :goto_0

    .line 168
    :cond_3
    const-string/jumbo v3, "!"

    move-object v0, v3

    goto :goto_0
.end method

.method public getColumnsAlignmentRepresentation()Ljava/lang/String;
    .locals 8

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v5

    .line 135
    .local v1, "numSlices":I
    const-string/jumbo v5, ""

    move-object v2, v5

    .line 136
    .local v2, "result":Ljava/lang/String;
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_4

    .line 137
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    move-object v4, v5

    .line 138
    .local v4, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    move-object v5, v4

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 136
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_1
    move-object v5, v4

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    if-nez v5, :cond_2

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    goto :goto_1

    .line 142
    :cond_2
    move-object v5, v4

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "F"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    goto :goto_1

    .line 144
    :cond_3
    move-object v5, v4

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "R"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    goto :goto_1

    .line 148
    .end local v4    # "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    :cond_4
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    return-object v0
.end method

.method public getHorizontalGuidelines()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    return-object v0
.end method

.method public getNumCols()I
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    return v0
.end method

.method public getNumRows()I
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    return v0
.end method

.method public getPadding()I
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    const-string/jumbo v1, "ConstraintTableLayout"

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    return-object v0
.end method

.method public getVerticalGuidelines()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    return-object v0
.end method

.method public handlesInternalConstraints()Z
    .locals 2

    .prologue
    .line 573
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    return v0
.end method

.method public isVerticalGrowth()Z
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    return v0
.end method

.method public setColumnAlignment(II)V
    .locals 6

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move v1, p1

    .local v1, "column":I
    move v2, p2

    .local v2, "alignment":I
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 240
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalSlices:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;

    move-object v3, v4

    .line 241
    .local v3, "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    move-object v4, v3

    move v5, v2

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    .line 242
    move-object v4, v0

    invoke-direct {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    .line 244
    .end local v3    # "slice":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    :cond_0
    return-void
.end method

.method public setColumnAlignment(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v1, p1

    .local v1, "alignment":Ljava/lang/String;
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    .local v3, "n":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_4

    .line 274
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    .line 275
    .local v4, "c":C
    move v5, v4

    const/16 v6, 0x4c

    if-ne v5, v6, :cond_0

    .line 276
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    .line 273
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    :cond_0
    move v5, v4

    const/16 v6, 0x43

    if-ne v5, v6, :cond_1

    .line 278
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_1

    .line 279
    :cond_1
    move v5, v4

    const/16 v6, 0x46

    if-ne v5, v6, :cond_2

    .line 280
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_1

    .line 281
    :cond_2
    move v5, v4

    const/16 v6, 0x52

    if-ne v5, v6, :cond_3

    .line 282
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_1

    .line 284
    :cond_3
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setColumnAlignment(II)V

    goto :goto_1

    .line 287
    .end local v4    # "c":C
    :cond_4
    return-void
.end method

.method public setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v1, p1

    .local v1, "s":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->system:Landroidx/constraintlayout/solver/LinearSystem;

    .line 399
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V

    .line 400
    move-object v3, v0

    invoke-direct {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->updateDebugSolverNames()V

    .line 401
    return-void
.end method

.method public setNumCols(I)V
    .locals 4

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move v1, p1

    .local v1, "num":I
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 180
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 181
    move-object v2, v0

    invoke-direct {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setVerticalSlices()V

    .line 182
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    .line 184
    :cond_0
    return-void
.end method

.method public setNumRows(I)V
    .locals 4

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move v1, p1

    .local v1, "num":I
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 195
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    .line 196
    move-object v2, v0

    invoke-direct {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setHorizontalSlices()V

    .line 197
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setTableDimensions()V

    .line 199
    :cond_0
    return-void
.end method

.method public setPadding(I)V
    .locals 4

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move v1, p1

    .local v1, "padding":I
    move v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 227
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mPadding:I

    .line 229
    :cond_0
    return-void
.end method

.method public setTableDimensions()V
    .locals 8

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    const/4 v5, 0x0

    move v1, v5

    .line 352
    .local v1, "extra":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 353
    .local v2, "count":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 354
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mChildren:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object v4, v5

    .line 355
    .local v4, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getContainerItemSkip()I

    move-result v6

    add-int/2addr v5, v6

    move v1, v5

    .line 353
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    .end local v4    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    move v2, v5

    .line 358
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    if-eqz v5, :cond_4

    .line 359
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    if-nez v5, :cond_1

    .line 360
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setNumCols(I)V

    .line 362
    :cond_1
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    div-int/2addr v5, v6

    move v3, v5

    .line 363
    .local v3, "rows":I
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    mul-int/2addr v5, v6

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 364
    add-int/lit8 v3, v3, 0x1

    .line 366
    :cond_2
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    move v6, v3

    if-ne v5, v6, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 367
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_3

    .line 368
    .line 388
    .end local v3    # "rows":I
    :goto_1
    return-void

    .line 370
    .restart local v3    # "rows":I
    :cond_3
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    .line 371
    move-object v5, v0

    invoke-direct {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setHorizontalSlices()V

    .line 372
    .line 387
    .end local v3    # "rows":I
    :goto_2
    move-object v5, v0

    invoke-direct {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setChildrenConnections()V

    .line 388
    goto :goto_1

    .line 373
    .local v3, "i":I
    :cond_4
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    if-nez v5, :cond_5

    .line 374
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setNumRows(I)V

    .line 376
    :cond_5
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    div-int/2addr v5, v6

    move v3, v5

    .line 377
    .local v3, "cols":I
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    mul-int/2addr v5, v6

    move v6, v2

    if-ge v5, v6, :cond_6

    .line 378
    add-int/lit8 v3, v3, 0x1

    .line 380
    :cond_6
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    move v6, v3

    if-ne v5, v6, :cond_7

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    .line 381
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumRows:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_7

    .line 382
    goto :goto_1

    .line 384
    :cond_7
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mNumCols:I

    .line 385
    move-object v5, v0

    invoke-direct {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->setVerticalSlices()V

    goto :goto_2
.end method

.method public setVerticalGrowth(Z)V
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGrowth:Z

    .line 218
    return-void
.end method

.method public updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 7

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 552
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    if-ne v5, v6, :cond_1

    .line 553
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 554
    .local v2, "num":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 555
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mVerticalGuidelines:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object v4, v5

    .line 556
    .local v4, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 554
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 558
    .end local v4    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 559
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 560
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;->mHorizontalGuidelines:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/Guideline;

    move-object v4, v5

    .line 561
    .restart local v4    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 559
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 564
    .end local v2    # "num":I
    .end local v3    # "i":I
    .end local v4    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_1
    return-void
.end method
