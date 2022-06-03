.class public Landroidx/constraintlayout/solver/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# instance fields
.field arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/constraintlayout/solver/Pools$Pool",
            "<",
            "Landroidx/constraintlayout/solver/ArrayRow;",
            ">;"
        }
    .end annotation
.end field

.field mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

.field solverVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/constraintlayout/solver/Pools$Pool",
            "<",
            "Landroidx/constraintlayout/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/Cache;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/Pools$SimplePool;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Landroidx/constraintlayout/solver/Pools$SimplePool;-><init>(I)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    .line 23
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/Pools$SimplePool;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Landroidx/constraintlayout/solver/Pools$SimplePool;-><init>(I)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/Cache;->solverVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    .line 24
    move-object v1, v0

    const/16 v2, 0x20

    new-array v2, v2, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v2, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    return-void
.end method
