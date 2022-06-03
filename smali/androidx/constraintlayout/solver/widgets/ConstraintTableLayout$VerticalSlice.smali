.class Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
.super Ljava/lang/Object;
.source "ConstraintTableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerticalSlice"
.end annotation


# instance fields
.field alignment:I

.field left:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field padding:I

.field right:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field final synthetic this$0:Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;
    move-object v1, p1

    .local v1, "this$0":Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->this$0:Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintTableLayout$VerticalSlice;->alignment:I

    return-void
.end method
