.class public Landroidx/constraintlayout/solver/LinearSystem;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/LinearSystem$Row;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final FULL_DEBUG:Z

.field private static POOL_SIZE:I

.field public static sMetrics:Landroidx/constraintlayout/solver/Metrics;


# instance fields
.field private TABLE_SIZE:I

.field public graphOptimizer:Z

.field private mAlreadyTestedCandidates:[Z

.field final mCache:Landroidx/constraintlayout/solver/Cache;

.field private mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

.field private mMaxColumns:I

.field private mMaxRows:I

.field mNumColumns:I

.field mNumRows:I

.field private mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

.field private mPoolVariablesCount:I

.field mRows:[Landroidx/constraintlayout/solver/ArrayRow;

.field private final mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field mVariablesID:I

.field private tempClientsCopy:[Landroidx/constraintlayout/solver/ArrayRow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x3e8

    sput v0, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 47
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 54
    move-object v1, v0

    const/16 v2, 0x20

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    .line 55
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    .line 56
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 59
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    .line 62
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    new-array v2, v2, [Z

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 64
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 65
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 66
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    .line 70
    move-object v1, v0

    sget v2, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    new-array v2, v2, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 71
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    .line 73
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    new-array v2, v2, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->tempClientsCopy:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 79
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    new-array v2, v2, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 80
    move-object v1, v0

    invoke-direct {v1}, Landroidx/constraintlayout/solver/LinearSystem;->releaseRows()V

    .line 81
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/Cache;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroidx/constraintlayout/solver/Cache;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 82
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/GoalRow;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v3, v4}, Landroidx/constraintlayout/solver/GoalRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    .line 83
    move-object v1, v0

    new-instance v2, Landroidx/constraintlayout/solver/ArrayRow;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v3, v4}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    .line 84
    return-void
.end method

.method private acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 11

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "type":Landroidx/constraintlayout/solver/SolverVariable$Type;
    move-object v2, p2

    .local v2, "prefix":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->solverVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v4}, Landroidx/constraintlayout/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/SolverVariable;

    move-object v3, v4

    .line 306
    .local v3, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v4, v3

    if-nez v4, :cond_1

    .line 307
    new-instance v4, Landroidx/constraintlayout/solver/SolverVariable;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/solver/SolverVariable;-><init>(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    move-object v3, v4

    .line 308
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/solver/SolverVariable;->setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    .line 313
    :goto_0
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    sget v5, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    if-lt v4, v5, :cond_0

    .line 314
    sget v4, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sput v4, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    .line 315
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    sget v6, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v5, v4, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 317
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    move-object v6, v3

    aput-object v6, v4, v5

    .line 318
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    return-object v0

    .line 310
    .restart local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    .line 311
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/solver/SolverVariable;->setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addError(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 5

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v2, v1

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v2

    .line 242
    return-void
.end method

.method private final addRow(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 6

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 539
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    aget-object v3, v3, v4

    invoke-interface {v2, v3}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v2

    .line 541
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 542
    move-object v2, v1

    iget-object v2, v2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    iput v3, v2, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 543
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 544
    move-object v2, v1

    iget-object v2, v2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 550
    return-void
.end method

.method private addSingleError(Landroidx/constraintlayout/solver/ArrayRow;I)V
    .locals 7

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move v2, p2

    .local v2, "sign":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 246
    return-void
.end method

.method private computeValues()V
    .locals 5

    .prologue
    .line 847
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_0

    .line 848
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 849
    .local v2, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v3, v2

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    .line 847
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 851
    .end local v2    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_0
    return-void
.end method

.method public static createRowCentering(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 18

    .prologue
    .line 1297
    move-object/from16 v0, p0

    .local v0, "linearSystem":Landroidx/constraintlayout/solver/LinearSystem;
    move-object/from16 v1, p1

    .local v1, "variableA":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v2, p2

    .local v2, "variableB":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v3, p3

    .local v3, "marginA":I
    move/from16 v4, p4

    .local v4, "bias":F
    move-object/from16 v5, p5

    .local v5, "variableC":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v6, p6

    .local v6, "variableD":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v7, p7

    .local v7, "marginB":I
    move/from16 v8, p8

    .local v8, "withError":Z
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v10

    move-object v9, v10

    .line 1298
    .local v9, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v10, v9

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    move v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move/from16 v17, v7

    invoke-virtual/range {v10 .. v17}, Landroidx/constraintlayout/solver/ArrayRow;->createRowCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v10

    .line 1300
    move v10, v8

    if-eqz v10, :cond_0

    .line 1301
    move-object v10, v9

    move-object v11, v0

    const/4 v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v10

    .line 1315
    :cond_0
    move-object v10, v9

    move-object v0, v10

    .end local v0    # "linearSystem":Landroidx/constraintlayout/solver/LinearSystem;
    return-object v0
.end method

.method public static createRowDimensionPercent(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FZ)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 12

    .prologue
    .line 1230
    move-object v0, p0

    .local v0, "linearSystem":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "variableA":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, p2

    .local v2, "variableB":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v3, p3

    .local v3, "variableC":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v4, p4

    .local v4, "percent":F
    move/from16 v5, p5

    .local v5, "withError":Z
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    move-object v6, v7

    .line 1231
    .local v6, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move v7, v5

    if-eqz v7, :cond_0

    .line 1232
    move-object v7, v0

    move-object v8, v6

    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addError(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1234
    :cond_0
    move-object v7, v6

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionPercent(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "linearSystem":Landroidx/constraintlayout/solver/LinearSystem;
    return-object v0
.end method

.method public static createRowEquals(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 10

    .prologue
    .line 1201
    move-object v0, p0

    .local v0, "linearSystem":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "variableA":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, p2

    .local v2, "variableB":Landroidx/constraintlayout/solver/SolverVariable;
    move v3, p3

    .local v3, "margin":I
    move v4, p4

    .local v4, "withError":Z
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    move-object v5, v6

    .line 1202
    .local v5, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v6, v5

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    .line 1203
    move v6, v4

    if-eqz v6, :cond_0

    .line 1204
    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;I)V

    .line 1215
    :cond_0
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "linearSystem":Landroidx/constraintlayout/solver/LinearSystem;
    return-object v0
.end method

.method public static createRowGreaterThan(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 13

    .prologue
    .line 1242
    move-object v0, p0

    .local v0, "linearSystem":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "variableA":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, p2

    .local v2, "variableB":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v3, p3

    .local v3, "margin":I
    move/from16 v4, p4

    .local v4, "withError":Z
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object v5, v8

    .line 1243
    .local v5, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    move-object v6, v8

    .line 1244
    .local v6, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v8, v6

    move-object v9, v1

    move-object v10, v2

    move-object v11, v5

    move v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    .line 1245
    move v8, v4

    if-eqz v8, :cond_0

    .line 1246
    move-object v8, v6

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v8

    move v7, v8

    .line 1247
    .local v7, "slackValue":F
    move-object v8, v0

    move-object v9, v6

    const/high16 v10, -0x40800000    # -1.0f

    move v11, v7

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-direct {v8, v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;I)V

    .line 1260
    .end local v7    # "slackValue":F
    :cond_0
    move-object v8, v6

    move-object v0, v8

    .end local v0    # "linearSystem":Landroidx/constraintlayout/solver/LinearSystem;
    return-object v0
.end method

.method public static createRowLowerThan(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 13

    .prologue
    .line 1268
    move-object v0, p0

    .local v0, "linearSystem":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "variableA":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, p2

    .local v2, "variableB":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v3, p3

    .local v3, "margin":I
    move/from16 v4, p4

    .local v4, "withError":Z
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object v5, v8

    .line 1269
    .local v5, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    move-object v6, v8

    .line 1270
    .local v6, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v8, v6

    move-object v9, v1

    move-object v10, v2

    move-object v11, v5

    move v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/constraintlayout/solver/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    .line 1271
    move v8, v4

    if-eqz v8, :cond_0

    .line 1272
    move-object v8, v6

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v8

    move v7, v8

    .line 1273
    .local v7, "slackValue":F
    move-object v8, v0

    move-object v9, v6

    const/high16 v10, -0x40800000    # -1.0f

    move v11, v7

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-direct {v8, v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;I)V

    .line 1286
    .end local v7    # "slackValue":F
    :cond_0
    move-object v8, v6

    move-object v0, v8

    .end local v0    # "linearSystem":Landroidx/constraintlayout/solver/LinearSystem;
    return-object v0
.end method

.method private createVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 11

    .prologue
    .line 263
    move-object v1, p0

    .local v1, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v2, p1

    .local v2, "name":Ljava/lang/String;
    move-object v3, p2

    .local v3, "type":Landroidx/constraintlayout/solver/SolverVariable$Type;
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v5, :cond_0

    .line 264
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Landroidx/constraintlayout/solver/Metrics;->variables:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->variables:J

    .line 266
    :cond_0
    move-object v5, v1

    iget v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v5, v6, :cond_1

    .line 267
    move-object v5, v1

    invoke-direct {v5}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 269
    :cond_1
    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    move-object v4, v5

    .line 270
    .local v4, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 271
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 272
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 273
    move-object v5, v4

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iput v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 274
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 275
    move-object v5, v1

    new-instance v6, Ljava/util/HashMap;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 277
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 278
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v5, v5, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    move-object v7, v4

    aput-object v7, v5, v6

    .line 279
    move-object v5, v4

    move-object v1, v5

    .end local v1    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    return-object v1
.end method

.method private displayRows()V
    .locals 7

    .prologue
    .line 859
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v3, v0

    invoke-direct {v3}, Landroidx/constraintlayout/solver/LinearSystem;->displaySolverVariables()V

    .line 860
    const-string/jumbo v3, ""

    move-object v1, v3

    .line 861
    .local v1, "s":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_0

    .line 862
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 863
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 861
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 865
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 866
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 867
    return-void
.end method

.method private displaySolverVariables()V
    .locals 5

    .prologue
    .line 941
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Display Rows ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 951
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 952
    return-void
.end method

.method private enforceBFS(Landroidx/constraintlayout/solver/LinearSystem$Row;)I
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 700
    move-object/from16 v4, p0

    .local v4, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object/from16 v5, p1

    .local v5, "goal":Landroidx/constraintlayout/solver/LinearSystem$Row;
    const/16 v21, 0x0

    move/from16 v6, v21

    .line 712
    .local v6, "tries":I
    const/16 v21, 0x0

    move/from16 v8, v21

    .line 713
    .local v8, "infeasibleSystem":Z
    const/16 v21, 0x0

    move/from16 v9, v21

    .local v9, "i":I
    :goto_0
    move/from16 v21, v9

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 714
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v21, v0

    move/from16 v22, v9

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v21, v0

    move-object/from16 v10, v21

    .line 715
    .local v10, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v21, v10

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object/from16 v21, v0

    sget-object v22, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 716
    .line 713
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 718
    :cond_1
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v21, v0

    move/from16 v22, v9

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_0

    .line 719
    const/16 v21, 0x1

    move/from16 v8, v21

    .line 725
    .end local v10    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_2
    move/from16 v21, v8

    if-eqz v21, :cond_10

    .line 733
    const/16 v21, 0x0

    move/from16 v7, v21

    .line 734
    .local v7, "done":Z
    const/16 v21, 0x0

    move/from16 v6, v21

    .line 735
    .end local v9    # "i":I
    :goto_1
    move/from16 v21, v7

    if-nez v21, :cond_10

    .line 736
    sget-object v21, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v21, :cond_3

    .line 737
    sget-object v21, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->bfs:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->bfs:J

    .line 739
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 743
    const v21, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v9, v21

    .line 744
    .local v9, "min":F
    const/16 v21, 0x0

    move/from16 v10, v21

    .line 745
    .local v10, "strength":I
    const/16 v21, -0x1

    move/from16 v11, v21

    .line 746
    .local v11, "pivotRowIndex":I
    const/16 v21, -0x1

    move/from16 v12, v21

    .line 748
    .local v12, "pivotColumnIndex":I
    const/16 v21, 0x0

    move/from16 v13, v21

    .local v13, "i":I
    :goto_2
    move/from16 v21, v13

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 749
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v21, v0

    move/from16 v22, v13

    aget-object v21, v21, v22

    move-object/from16 v14, v21

    .line 750
    .local v14, "current":Landroidx/constraintlayout/solver/ArrayRow;
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v21, v0

    move-object/from16 v15, v21

    .line 751
    .local v15, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v21, v15

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object/from16 v21, v0

    sget-object v22, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 754
    .line 748
    :cond_4
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 756
    :cond_5
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 757
    goto :goto_3

    .line 759
    :cond_6
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    iget v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_4

    .line 764
    const/16 v21, 0x1

    move/from16 v16, v21

    .local v16, "j":I
    :goto_4
    move/from16 v21, v16

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 765
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v21, v0

    move/from16 v22, v16

    aget-object v21, v21, v22

    move-object/from16 v17, v21

    .line 766
    .local v17, "candidate":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v21, v0

    move-object/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v21

    move/from16 v18, v21

    .line 767
    .local v18, "a_j":F
    move/from16 v21, v18

    const/16 v22, 0x0

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_8

    .line 768
    .line 764
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 773
    :cond_8
    const/16 v21, 0x0

    move/from16 v19, v21

    .local v19, "k":I
    :goto_5
    move/from16 v21, v19

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 774
    move-object/from16 v21, v17

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    move-object/from16 v21, v0

    move/from16 v22, v19

    aget v21, v21, v22

    move/from16 v22, v18

    div-float v21, v21, v22

    move/from16 v20, v21

    .line 775
    .local v20, "value":F
    move/from16 v21, v20

    move/from16 v22, v9

    cmpg-float v21, v21, v22

    if-gez v21, :cond_9

    move/from16 v21, v19

    move/from16 v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    :cond_9
    move/from16 v21, v19

    move/from16 v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_b

    .line 776
    :cond_a
    move/from16 v21, v20

    move/from16 v9, v21

    .line 777
    move/from16 v21, v13

    move/from16 v11, v21

    .line 778
    move/from16 v21, v16

    move/from16 v12, v21

    .line 779
    move/from16 v21, v19

    move/from16 v10, v21

    .line 773
    :cond_b
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 786
    .end local v14    # "current":Landroidx/constraintlayout/solver/ArrayRow;
    .end local v15    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v16    # "j":I
    .end local v17    # "candidate":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v18    # "a_j":F
    .end local v19    # "k":I
    .end local v20    # "value":F
    :cond_c
    move/from16 v21, v11

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 788
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v21, v0

    move/from16 v22, v11

    aget-object v21, v21, v22

    move-object/from16 v13, v21

    .line 793
    .local v13, "pivotEquation":Landroidx/constraintlayout/solver/ArrayRow;
    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 794
    sget-object v21, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v21, :cond_d

    .line 795
    sget-object v21, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 797
    :cond_d
    move-object/from16 v21, v13

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v22, v0

    move/from16 v23, v12

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 798
    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v21, v0

    move/from16 v22, v11

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 799
    move-object/from16 v21, v13

    move-object/from16 v0, v21

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v21, v0

    move-object/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 805
    .line 808
    .end local v13    # "pivotEquation":Landroidx/constraintlayout/solver/ArrayRow;
    :goto_6
    move/from16 v21, v6

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    iget v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    move/from16 v22, v0

    const/16 v23, 0x2

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_e

    .line 810
    const/16 v21, 0x1

    move/from16 v7, v21

    .line 812
    :cond_e
    goto/16 :goto_1

    .line 806
    .local v13, "i":I
    :cond_f
    const/16 v21, 0x1

    move/from16 v7, v21

    goto :goto_6

    .line 843
    .end local v7    # "done":Z
    .end local v9    # "min":F
    .end local v10    # "strength":I
    .end local v11    # "pivotRowIndex":I
    .end local v12    # "pivotColumnIndex":I
    .end local v13    # "i":I
    :cond_10
    move/from16 v21, v6

    move/from16 v4, v21

    .end local v4    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    return v4
.end method

.method private getDisplaySize(I)Ljava/lang/String;
    .locals 8

    .prologue
    .line 955
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move v1, p1

    .local v1, "n":I
    move v4, v1

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    const/16 v5, 0x400

    div-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    div-int/lit16 v4, v4, 0x400

    move v2, v4

    .line 956
    .local v2, "mb":I
    move v4, v2

    if-lez v4, :cond_0

    .line 957
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Mb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 963
    .end local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    :goto_0
    return-object v0

    .line 959
    .restart local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    :cond_0
    move v4, v1

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    const/16 v5, 0x400

    div-int/lit16 v4, v4, 0x400

    move v3, v4

    .line 960
    .local v3, "kb":I
    move v4, v3

    if-lez v4, :cond_1

    .line 961
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Kb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 963
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method private getDisplayStrength(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 971
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move v1, p1

    .local v1, "strength":I
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 972
    const-string/jumbo v2, "LOW"

    move-object v0, v2

    .line 989
    .end local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    :goto_0
    return-object v0

    .line 974
    .restart local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    :cond_0
    move v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 975
    const-string/jumbo v2, "MEDIUM"

    move-object v0, v2

    goto :goto_0

    .line 977
    :cond_1
    move v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 978
    const-string/jumbo v2, "HIGH"

    move-object v0, v2

    goto :goto_0

    .line 980
    :cond_2
    move v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 981
    const-string/jumbo v2, "HIGHEST"

    move-object v0, v2

    goto :goto_0

    .line 983
    :cond_3
    move v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 984
    const-string/jumbo v2, "EQUALITY"

    move-object v0, v2

    goto :goto_0

    .line 986
    :cond_4
    move v2, v1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 987
    const-string/jumbo v2, "FIXED"

    move-object v0, v2

    goto :goto_0

    .line 989
    :cond_5
    const-string/jumbo v2, "NONE"

    move-object v0, v2

    goto :goto_0
.end method

.method public static getMetrics()Landroidx/constraintlayout/solver/Metrics;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    return-object v0
.end method

.method private increaseTableSize()V
    .locals 7

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, v0

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    .line 113
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 114
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v2, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 115
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    new-array v2, v2, [Z

    iput-object v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 116
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    .line 117
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    iput v2, v1, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    .line 118
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v1, :cond_0

    .line 119
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->tableSizeIncrease:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->tableSizeIncrease:J

    .line 120
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    .line 121
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->lastTableSize:J

    .line 123
    :cond_0
    return-void
.end method

.method private final optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I
    .locals 19

    .prologue
    .line 559
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object/from16 v1, p1

    .local v1, "goal":Landroidx/constraintlayout/solver/LinearSystem$Row;
    move/from16 v2, p2

    .local v2, "b":Z
    sget-object v13, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v13, :cond_0

    .line 560
    sget-object v13, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    iget-wide v14, v14, Landroidx/constraintlayout/solver/Metrics;->optimize:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    iput-wide v14, v13, Landroidx/constraintlayout/solver/Metrics;->optimize:J

    .line 562
    :cond_0
    const/4 v13, 0x0

    move v3, v13

    .line 563
    .local v3, "done":Z
    const/4 v13, 0x0

    move v4, v13

    .line 564
    .local v4, "tries":I
    const/4 v13, 0x0

    move v5, v13

    .local v5, "i":I
    :goto_0
    move v13, v5

    move-object v14, v0

    iget v14, v14, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    if-ge v13, v14, :cond_3

    .line 565
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    move v14, v5

    const/4 v15, 0x0

    aput-boolean v15, v13, v14

    .line 564
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 651
    .local v5, "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    .local v6, "min":F
    .local v7, "pivotRowIndex":I
    .local v8, "i":I
    :cond_1
    move v13, v7

    const/4 v14, -0x1

    if-le v13, v14, :cond_c

    .line 656
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v14, v7

    aget-object v13, v13, v14

    move-object v8, v13

    .line 657
    .local v8, "pivotEquation":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v14, -0x1

    iput v14, v13, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 658
    sget-object v13, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v13, :cond_2

    .line 659
    sget-object v13, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    iget-wide v14, v14, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    iput-wide v14, v13, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 661
    :cond_2
    move-object v13, v8

    move-object v14, v5

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 662
    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move v14, v7

    iput v14, v13, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 663
    move-object v13, v8

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v14, v8

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 679
    .line 685
    .line 690
    .line 576
    .end local v5    # "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v6    # "min":F
    .end local v7    # "pivotRowIndex":I
    .end local v8    # "pivotEquation":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_3
    :goto_1
    move v13, v3

    if-nez v13, :cond_e

    .line 577
    sget-object v13, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v13, :cond_4

    .line 578
    sget-object v13, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    iget-wide v14, v14, Landroidx/constraintlayout/solver/Metrics;->iterations:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    iput-wide v14, v13, Landroidx/constraintlayout/solver/Metrics;->iterations:J

    .line 580
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 585
    move v13, v4

    const/4 v14, 0x2

    move-object v15, v0

    iget v15, v15, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    mul-int/2addr v14, v15

    if-lt v13, v14, :cond_5

    .line 586
    move v13, v4

    move v0, v13

    .line 691
    .end local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    :goto_2
    return v0

    .line 589
    .restart local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    :cond_5
    move-object v13, v1

    invoke-interface {v13}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getKey()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 590
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    move-object v14, v1

    invoke-interface {v14}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getKey()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v14

    iget v14, v14, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    .line 592
    :cond_6
    move-object v13, v1

    move-object v14, v0

    move-object v15, v0

    iget-object v15, v15, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    invoke-interface {v13, v14, v15}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v13

    move-object v5, v13

    .line 597
    .restart local v5    # "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v13, v5

    if-eqz v13, :cond_8

    .line 598
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    move-object v14, v5

    iget v14, v14, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v13, v13, v14

    if-eqz v13, :cond_7

    .line 599
    move v13, v4

    move v0, v13

    goto :goto_2

    .line 601
    :cond_7
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    move-object v14, v5

    iget v14, v14, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    .line 605
    :cond_8
    move-object v13, v5

    if-eqz v13, :cond_d

    .line 619
    const v13, 0x7f7fffff    # Float.MAX_VALUE

    move v6, v13

    .line 620
    .restart local v6    # "min":F
    const/4 v13, -0x1

    move v7, v13

    .line 622
    .restart local v7    # "pivotRowIndex":I
    const/4 v13, 0x0

    move v8, v13

    .local v8, "i":I
    :goto_3
    move v13, v8

    move-object v14, v0

    iget v14, v14, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v13, v14, :cond_1

    .line 623
    move-object v13, v0

    iget-object v13, v13, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v14, v8

    aget-object v13, v13, v14

    move-object v9, v13

    .line 624
    .local v9, "current":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v13, v9

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v10, v13

    .line 625
    .local v10, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v13, v10

    iget-object v13, v13, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v14, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v13, v14, :cond_a

    .line 627
    .line 622
    :cond_9
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 629
    :cond_a
    move-object v13, v9

    iget-boolean v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v13, :cond_b

    .line 630
    goto :goto_4

    .line 633
    :cond_b
    move-object v13, v9

    move-object v14, v5

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/ArrayRow;->hasVariable(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 639
    move-object v13, v9

    iget-object v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v14, v5

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v13

    move v11, v13

    .line 640
    .local v11, "a_j":F
    move v13, v11

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_9

    .line 641
    move-object v13, v9

    iget v13, v13, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    neg-float v13, v13

    move v14, v11

    div-float/2addr v13, v14

    move v12, v13

    .line 642
    .local v12, "value":F
    move v13, v12

    move v14, v6

    cmpg-float v13, v13, v14

    if-gez v13, :cond_9

    .line 643
    move v13, v12

    move v6, v13

    .line 644
    move v13, v8

    move v7, v13

    goto :goto_4

    .line 682
    .end local v9    # "current":Landroidx/constraintlayout/solver/ArrayRow;
    .end local v10    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v11    # "a_j":F
    .end local v12    # "value":F
    :cond_c
    const/4 v13, 0x1

    move v3, v13

    goto/16 :goto_1

    .line 688
    .end local v6    # "min":F
    .end local v7    # "pivotRowIndex":I
    .end local v8    # "i":I
    :cond_d
    const/4 v13, 0x1

    move v3, v13

    goto/16 :goto_1

    .line 691
    .end local v5    # "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_e
    move v13, v4

    move v0, v13

    goto/16 :goto_2
.end method

.method private releaseRows()V
    .locals 6

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 130
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 131
    .local v2, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 132
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    move-object v4, v2

    invoke-interface {v3, v4}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v3

    .line 134
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v4, v1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_1
    return-void
.end method

.method private final updateRowFromVariables(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 5

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-lez v2, :cond_0

    .line 449
    move-object v2, v1

    iget-object v2, v2, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->updateFromSystem(Landroidx/constraintlayout/solver/ArrayRow;[Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 450
    move-object v2, v1

    iget-object v2, v2, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v2, v2, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v2, :cond_0

    .line 451
    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 454
    :cond_0
    return-void
.end method


# virtual methods
.method public addCenterPoint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V
    .locals 24

    .prologue
    .line 1329
    move-object/from16 v3, p0

    .local v3, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object/from16 v4, p1

    .local v4, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v5, p2

    .local v5, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v6, p3

    .local v6, "angle":F
    move/from16 v7, p4

    .local v7, "radius":I
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    sget-object v20, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v18

    move-object/from16 v8, v18

    .line 1330
    .local v8, "Al":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    sget-object v20, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v18

    move-object/from16 v9, v18

    .line 1331
    .local v9, "At":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    sget-object v20, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v18

    move-object/from16 v10, v18

    .line 1332
    .local v10, "Ar":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    sget-object v20, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v18

    move-object/from16 v11, v18

    .line 1334
    .local v11, "Ab":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    sget-object v20, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v18

    move-object/from16 v12, v18

    .line 1335
    .local v12, "Bl":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    sget-object v20, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v18

    move-object/from16 v13, v18

    .line 1336
    .local v13, "Bt":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    sget-object v20, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v18

    move-object/from16 v14, v18

    .line 1337
    .local v14, "Br":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    sget-object v20, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v19 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v18

    move-object/from16 v15, v18

    .line 1339
    .local v15, "Bb":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v18

    move-object/from16 v16, v18

    .line 1340
    .local v16, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move/from16 v18, v6

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move/from16 v20, v7

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 1341
    .local v17, "angleComponent":F
    move-object/from16 v18, v16

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    move-object/from16 v21, v13

    move-object/from16 v22, v15

    move/from16 v23, v17

    invoke-virtual/range {v18 .. v23}, Landroidx/constraintlayout/solver/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v18

    .line 1342
    move-object/from16 v18, v3

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1343
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v18

    move-object/from16 v16, v18

    .line 1344
    move/from16 v18, v6

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move/from16 v20, v7

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 1345
    move-object/from16 v18, v16

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move-object/from16 v21, v12

    move-object/from16 v22, v14

    move/from16 v23, v17

    invoke-virtual/range {v18 .. v23}, Landroidx/constraintlayout/solver/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v18

    .line 1346
    move-object/from16 v18, v3

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1347
    return-void
.end method

.method public addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 18

    .prologue
    .line 1098
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object/from16 v1, p1

    .local v1, "a":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v2, p2

    .local v2, "b":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v3, p3

    .local v3, "m1":I
    move/from16 v4, p4

    .local v4, "bias":F
    move-object/from16 v5, p5

    .local v5, "c":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v6, p6

    .local v6, "d":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v7, p7

    .local v7, "m2":I
    move/from16 v8, p8

    .local v8, "strength":I
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v10

    move-object v9, v10

    .line 1099
    .local v9, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v10, v9

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    move v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move/from16 v17, v7

    invoke-virtual/range {v10 .. v17}, Landroidx/constraintlayout/solver/ArrayRow;->createRowCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v10

    .line 1100
    move v10, v8

    const/4 v11, 0x6

    if-eq v10, v11, :cond_0

    .line 1101
    move-object v10, v9

    move-object v11, v0

    move v12, v8

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v10

    .line 1103
    :cond_0
    move-object v10, v0

    move-object v11, v9

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1104
    return-void
.end method

.method public addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 11

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 462
    .line 535
    :goto_0
    return-void

    .line 464
    :cond_0
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v5, :cond_1

    .line 465
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Landroidx/constraintlayout/solver/Metrics;->constraints:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->constraints:J

    .line 466
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v5, :cond_1

    .line 467
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Landroidx/constraintlayout/solver/Metrics;->simpleconstraints:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->simpleconstraints:J

    .line 470
    :cond_1
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    if-ge v5, v6, :cond_2

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v5, v6, :cond_3

    .line 471
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 477
    :cond_3
    const/4 v5, 0x0

    move v2, v5

    .line 478
    .local v2, "added":Z
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v5, :cond_9

    .line 480
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->updateRowFromVariables(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 482
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/ArrayRow;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 483
    goto :goto_0

    .line 487
    :cond_4
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/ArrayRow;->ensurePositiveConstant()V

    .line 494
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/ArrayRow;->chooseSubject(Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 496
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/LinearSystem;->createExtraVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    move-object v3, v5

    .line 497
    .local v3, "extra":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v5, v1

    move-object v6, v3

    iput-object v6, v5, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 498
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 499
    const/4 v5, 0x1

    move v2, v5

    .line 500
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroidx/constraintlayout/solver/LinearSystem$Row;->initFromRow(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    .line 501
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I

    move-result v5

    .line 502
    move-object v5, v3

    iget v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    .line 506
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v6, v3

    if-ne v5, v6, :cond_6

    .line 508
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/ArrayRow;->pickPivot(Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    move-object v4, v5

    .line 509
    .local v4, "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v5, v4

    if-eqz v5, :cond_6

    .line 510
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v5, :cond_5

    .line 511
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 513
    :cond_5
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 516
    .end local v4    # "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_6
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v5, :cond_7

    .line 517
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 519
    :cond_7
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 523
    .end local v3    # "extra":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_8
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/ArrayRow;->hasKeyVariable()Z

    move-result v5

    if-nez v5, :cond_9

    .line 529
    goto/16 :goto_0

    .line 532
    :cond_9
    move v5, v2

    if-nez v5, :cond_a

    .line 533
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 535
    :cond_a
    goto/16 :goto_0
.end method

.method public addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 10

    .prologue
    .line 1128
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "a":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, p2

    .local v2, "b":Landroidx/constraintlayout/solver/SolverVariable;
    move v3, p3

    .local v3, "margin":I
    move v4, p4

    .local v4, "strength":I
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    move-object v5, v6

    .line 1129
    .local v5, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v6, v5

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    .line 1130
    move v6, v4

    const/4 v7, 0x6

    if-eq v6, v7, :cond_0

    .line 1131
    move-object v6, v5

    move-object v7, v0

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    .line 1133
    :cond_0
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1134
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    return-object v0
.end method

.method public addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V
    .locals 9

    .prologue
    .line 1146
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "a":Landroidx/constraintlayout/solver/SolverVariable;
    move v2, p2

    .local v2, "value":I
    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    move v3, v6

    .line 1147
    .local v3, "idx":I
    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 1148
    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 1149
    .local v4, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v6, v4

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v6, :cond_0

    .line 1150
    move-object v6, v4

    move v7, v2

    int-to-float v7, v7

    iput v7, v6, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 1161
    .line 1166
    :goto_0
    return-void

    .line 1152
    :cond_0
    move-object v6, v4

    iget-object v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v6, v6, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v6, :cond_1

    .line 1153
    move-object v6, v4

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 1154
    move-object v6, v4

    move v7, v2

    int-to-float v7, v7

    iput v7, v6, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 1156
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    move-object v5, v6

    .line 1157
    .local v5, "newRow":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v6, v5

    move-object v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    .line 1158
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_0

    .line 1162
    .end local v4    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    .end local v5    # "newRow":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    move-object v4, v6

    .line 1163
    .restart local v4    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v6, v4

    move-object v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDefinition(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    .line 1164
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_0
.end method

.method public addEquality(Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 10

    .prologue
    .line 1178
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "a":Landroidx/constraintlayout/solver/SolverVariable;
    move v2, p2

    .local v2, "value":I
    move v3, p3

    .local v3, "strength":I
    move-object v7, v1

    iget v7, v7, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    move v4, v7

    .line 1179
    .local v4, "idx":I
    move-object v7, v1

    iget v7, v7, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 1180
    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 1181
    .local v5, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v7, v5

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v7, :cond_0

    .line 1182
    move-object v7, v5

    move v8, v2

    int-to-float v8, v8

    iput v8, v7, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 1189
    .line 1195
    :goto_0
    return-void

    .line 1184
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    move-object v6, v7

    .line 1185
    .local v6, "newRow":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v7, v6

    move-object v8, v1

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    .line 1186
    move-object v7, v6

    move-object v8, v0

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    .line 1187
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_0

    .line 1190
    .end local v5    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    .end local v6    # "newRow":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    move-object v5, v7

    .line 1191
    .restart local v5    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v7, v5

    move-object v8, v1

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDefinition(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    .line 1192
    move-object v7, v5

    move-object v8, v0

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    .line 1193
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_0
.end method

.method public addGreaterBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Z)V
    .locals 12

    .prologue
    .line 1029
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "a":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, p2

    .local v2, "b":Landroidx/constraintlayout/solver/SolverVariable;
    move v3, p3

    .local v3, "hasMatchConstraintWidgets":Z
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    move-object v4, v7

    .line 1030
    .local v4, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    move-object v5, v7

    .line 1031
    .local v5, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v7, v5

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1032
    move-object v7, v4

    move-object v8, v1

    move-object v9, v2

    move-object v10, v5

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    .line 1033
    move v7, v3

    if-eqz v7, :cond_0

    .line 1035
    move-object v7, v4

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v7

    move v6, v7

    .line 1036
    .local v6, "slackValue":F
    move-object v7, v0

    move-object v8, v4

    const/high16 v9, -0x40800000    # -1.0f

    move v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 1038
    .end local v6    # "slackValue":F
    :cond_0
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1039
    return-void
.end method

.method public addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;I)V
    .locals 9

    .prologue
    .line 1018
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "a":Landroidx/constraintlayout/solver/SolverVariable;
    move v2, p2

    .local v2, "b":I
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v5

    move-object v3, v5

    .line 1019
    .local v3, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    move-object v4, v5

    .line 1020
    .local v4, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v5, v4

    const/4 v6, 0x0

    iput v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1021
    move-object v5, v3

    move-object v6, v1

    move v7, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;ILandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v5

    .line 1022
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1023
    return-void
.end method

.method public addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 13

    .prologue
    .line 1003
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "a":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, p2

    .local v2, "b":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v3, p3

    .local v3, "margin":I
    move/from16 v4, p4

    .local v4, "strength":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    move-object v5, v8

    .line 1004
    .local v5, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object v6, v8

    .line 1005
    .local v6, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v8, v6

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1006
    move-object v8, v5

    move-object v9, v1

    move-object v10, v2

    move-object v11, v6

    move v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    .line 1007
    move v8, v4

    const/4 v9, 0x6

    if-eq v8, v9, :cond_0

    .line 1008
    move-object v8, v5

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v8

    move v7, v8

    .line 1009
    .local v7, "slackValue":F
    move-object v8, v0

    move-object v9, v5

    const/high16 v10, -0x40800000    # -1.0f

    move v11, v7

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v11, v4

    invoke-virtual {v8, v9, v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 1011
    .end local v7    # "slackValue":F
    :cond_0
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1012
    return-void
.end method

.method public addLowerBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Z)V
    .locals 12

    .prologue
    .line 1067
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "a":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, p2

    .local v2, "b":Landroidx/constraintlayout/solver/SolverVariable;
    move v3, p3

    .local v3, "hasMatchConstraintWidgets":Z
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    move-object v4, v7

    .line 1068
    .local v4, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    move-object v5, v7

    .line 1069
    .local v5, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v7, v5

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1070
    move-object v7, v4

    move-object v8, v1

    move-object v9, v2

    move-object v10, v5

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/constraintlayout/solver/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    .line 1071
    move v7, v3

    if-eqz v7, :cond_0

    .line 1073
    move-object v7, v4

    iget-object v7, v7, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v7

    move v6, v7

    .line 1074
    .local v6, "slackValue":F
    move-object v7, v0

    move-object v8, v4

    const/high16 v9, -0x40800000    # -1.0f

    move v10, v6

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 1076
    .end local v6    # "slackValue":F
    :cond_0
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1077
    return-void
.end method

.method public addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 13

    .prologue
    .line 1052
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "a":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v2, p2

    .local v2, "b":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v3, p3

    .local v3, "margin":I
    move/from16 v4, p4

    .local v4, "strength":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    move-object v5, v8

    .line 1053
    .local v5, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object v6, v8

    .line 1054
    .local v6, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v8, v6

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1055
    move-object v8, v5

    move-object v9, v1

    move-object v10, v2

    move-object v11, v6

    move v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/constraintlayout/solver/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    .line 1056
    move v8, v4

    const/4 v9, 0x6

    if-eq v8, v9, :cond_0

    .line 1057
    move-object v8, v5

    iget-object v8, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v8

    move v7, v8

    .line 1058
    .local v7, "slackValue":F
    move-object v8, v0

    move-object v9, v5

    const/high16 v10, -0x40800000    # -1.0f

    move v11, v7

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v11, v4

    invoke-virtual {v8, v9, v10, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 1060
    .end local v7    # "slackValue":F
    :cond_0
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1061
    return-void
.end method

.method public addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V
    .locals 14

    .prologue
    .line 1110
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "a":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v2, p2

    .local v2, "b":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v3, p3

    .local v3, "c":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v4, p4

    .local v4, "d":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v5, p5

    .local v5, "ratio":F
    move/from16 v6, p6

    .local v6, "strength":I
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    move-object v7, v8

    .line 1111
    .local v7, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v8, v7

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move v13, v5

    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    .line 1112
    move v8, v6

    const/4 v9, 0x6

    if-eq v8, v9, :cond_0

    .line 1113
    move-object v8, v7

    move-object v9, v0

    move v10, v6

    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    .line 1115
    :cond_0
    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1116
    return-void
.end method

.method addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V
    .locals 9

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move v2, p2

    .local v2, "sign":I
    move v3, p3

    .local v3, "strength":I
    const/4 v6, 0x0

    move-object v4, v6

    .line 258
    .local v4, "prefix":Ljava/lang/String;
    move-object v6, v0

    move v7, v3

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    move-object v5, v6

    .line 259
    .local v5, "error":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v6, v1

    move-object v7, v5

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/solver/ArrayRow;->addSingleError(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    .line 260
    return-void
.end method

.method public createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 11

    .prologue
    .line 283
    move-object v1, p0

    .local v1, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move v2, p1

    .local v2, "strength":I
    move-object v3, p2

    .local v3, "prefix":Ljava/lang/String;
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v5, :cond_0

    .line 284
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Landroidx/constraintlayout/solver/Metrics;->errors:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->errors:J

    .line 286
    :cond_0
    move-object v5, v1

    iget v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v5, v6, :cond_1

    .line 287
    move-object v5, v1

    invoke-direct {v5}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 289
    :cond_1
    move-object v5, v1

    sget-object v6, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    move-object v4, v5

    .line 290
    .local v4, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 291
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 292
    move-object v5, v4

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iput v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 293
    move-object v5, v4

    move v6, v2

    iput v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 294
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v5, v5, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    move-object v7, v4

    aput-object v7, v5, v6

    .line 295
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    move-object v6, v4

    invoke-interface {v5, v6}, Landroidx/constraintlayout/solver/LinearSystem$Row;->addError(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 296
    move-object v5, v4

    move-object v1, v5

    .end local v1    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    return-object v1
.end method

.method public createExtraVariable()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 9

    .prologue
    .line 226
    move-object v1, p0

    .local v1, "this":Landroidx/constraintlayout/solver/LinearSystem;
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v3, :cond_0

    .line 227
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Landroidx/constraintlayout/solver/Metrics;->extravariables:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->extravariables:J

    .line 229
    :cond_0
    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v3, v4, :cond_1

    .line 230
    move-object v3, v1

    invoke-direct {v3}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 232
    :cond_1
    move-object v3, v1

    sget-object v4, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    move-object v2, v3

    .line 233
    .local v2, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 234
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 235
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 236
    move-object v3, v1

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    move-object v5, v2

    aput-object v5, v3, v4

    .line 237
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    return-object v1
.end method

.method public createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 7

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "anchor":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 171
    const/4 v3, 0x0

    move-object v0, v3

    .line 196
    .end local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    :goto_0
    return-object v0

    .line 173
    .restart local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v3, v4, :cond_1

    .line 174
    move-object v3, v0

    invoke-direct {v3}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 176
    :cond_1
    const/4 v3, 0x0

    move-object v2, v3

    .line 177
    .local v2, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v3, v1

    instance-of v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_5

    .line 178
    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    move-object v2, v3

    .line 179
    move-object v3, v2

    if-nez v3, :cond_2

    .line 180
    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 181
    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    move-object v2, v3

    .line 183
    :cond_2
    move-object v3, v2

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    move-object v3, v2

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    if-gt v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v4, v2

    iget v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-object v3, v3, v4

    if-nez v3, :cond_5

    .line 186
    :cond_3
    move-object v3, v2

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 187
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    .line 189
    :cond_4
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 190
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 191
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 192
    move-object v3, v2

    sget-object v4, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iput-object v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 193
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    move-object v5, v2

    aput-object v5, v3, v4

    .line 196
    :cond_5
    move-object v3, v2

    move-object v0, v3

    goto/16 :goto_0
.end method

.method public createRow()Landroidx/constraintlayout/solver/ArrayRow;
    .locals 6

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v2}, Landroidx/constraintlayout/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/ArrayRow;

    move-object v1, v2

    .line 201
    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 202
    new-instance v2, Landroidx/constraintlayout/solver/ArrayRow;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v3, v4}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    move-object v1, v2

    .line 206
    :goto_0
    invoke-static {}, Landroidx/constraintlayout/solver/SolverVariable;->increaseErrorId()V

    .line 207
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    return-object v0

    .line 204
    .restart local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/ArrayRow;->reset()V

    goto :goto_0
.end method

.method public createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 9

    .prologue
    .line 211
    move-object v1, p0

    .local v1, "this":Landroidx/constraintlayout/solver/LinearSystem;
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v3, :cond_0

    .line 212
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Landroidx/constraintlayout/solver/Metrics;->slackvariables:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->slackvariables:J

    .line 214
    :cond_0
    move-object v3, v1

    iget v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v3, v4, :cond_1

    .line 215
    move-object v3, v1

    invoke-direct {v3}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 217
    :cond_1
    move-object v3, v1

    sget-object v4, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    move-object v2, v3

    .line 218
    .local v2, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 219
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 220
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 221
    move-object v3, v1

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v4, v1

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    move-object v5, v2

    aput-object v5, v3, v4

    .line 222
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    return-object v1
.end method

.method displayReadableRows()V
    .locals 7

    .prologue
    .line 870
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v3, v0

    invoke-direct {v3}, Landroidx/constraintlayout/solver/LinearSystem;->displaySolverVariables()V

    .line 871
    const-string/jumbo v3, " #  "

    move-object v1, v3

    .line 872
    .local v1, "s":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_0

    .line 873
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 874
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n #  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 872
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 876
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    if-eqz v3, :cond_1

    .line 877
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 879
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method displaySystemInformations()V
    .locals 11

    .prologue
    .line 916
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    const/4 v5, 0x0

    move v1, v5

    .line 917
    .local v1, "count":I
    const/4 v5, 0x0

    move v2, v5

    .line 918
    .local v2, "rowSize":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    if-ge v5, v6, :cond_1

    .line 919
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v6, v3

    aget-object v5, v5, v6

    if-eqz v5, :cond_0

    .line 920
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/ArrayRow;->sizeInBytes()I

    move-result v6

    add-int/2addr v5, v6

    move v2, v5

    .line 918
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 923
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    .line 924
    .local v3, "actualRowSize":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v5, v6, :cond_3

    .line 925
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v6, v4

    aget-object v5, v5, v6

    if-eqz v5, :cond_2

    .line 926
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/ArrayRow;->sizeInBytes()I

    move-result v6

    add-int/2addr v5, v6

    move v3, v5

    .line 924
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 930
    :cond_3
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Linear System -> Table size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    move-object v9, v0

    iget v9, v9, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    mul-int/2addr v8, v9

    .line 931
    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") -- row sizes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    move v8, v2

    .line 932
    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", actual size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    move v8, v3

    .line 933
    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " rows: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " cols: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " occupied cells, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    move v8, v1

    .line 936
    invoke-direct {v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 930
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method public displayVariablesReadableRows()V
    .locals 7

    .prologue
    .line 884
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v3, v0

    invoke-direct {v3}, Landroidx/constraintlayout/solver/LinearSystem;->displaySolverVariables()V

    .line 885
    const-string/jumbo v3, ""

    move-object v1, v3

    .line 886
    .local v1, "s":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_1

    .line 887
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v4, v2

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v4, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v3, v4, :cond_0

    .line 888
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 889
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 886
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 892
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 893
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method public fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "metrics":Landroidx/constraintlayout/solver/Metrics;
    move-object v2, v1

    sput-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    .line 88
    return-void
.end method

.method public getCache()Landroidx/constraintlayout/solver/Cache;
    .locals 2

    .prologue
    .line 967
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    return-object v0
.end method

.method getGoal()Landroidx/constraintlayout/solver/LinearSystem$Row;
    .locals 2

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    return-object v0
.end method

.method public getMemoryUsed()I
    .locals 6

    .prologue
    .line 898
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    const/4 v3, 0x0

    move v1, v3

    .line 899
    .local v1, "actualRowSize":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_1

    .line 900
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v4, v2

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 901
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/ArrayRow;->sizeInBytes()I

    move-result v4

    add-int/2addr v3, v4

    move v1, v3

    .line 899
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 904
    :cond_1
    move v3, v1

    move v0, v3

    .end local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    return v0
.end method

.method public getNumEquations()I
    .locals 2

    .prologue
    .line 908
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    return v0
.end method

.method public getNumVariables()I
    .locals 2

    .prologue
    .line 910
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    return v0
.end method

.method public getObjectVariableValue(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "anchor":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    move-object v2, v3

    .line 345
    .local v2, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 346
    move-object v3, v2

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    move v0, v3

    .line 348
    .end local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method getRow(I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 4

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move v1, p1

    .local v1, "n":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    return-object v0
.end method

.method getValueFor(Ljava/lang/String;)F
    .locals 6

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/LinearSystem;->getVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    move-object v2, v3

    .line 337
    .local v2, "v":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 338
    const/4 v3, 0x0

    move v0, v3

    .line 340
    .end local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    :cond_0
    move-object v3, v2

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    move v0, v3

    goto :goto_0
.end method

.method getVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 8

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Landroidx/constraintlayout/solver/SolverVariable$Type;
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 360
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 362
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/SolverVariable;

    move-object v3, v4

    .line 363
    .local v3, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v4, v3

    if-nez v4, :cond_1

    .line 364
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    move-object v3, v4

    .line 366
    :cond_1
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Landroidx/constraintlayout/solver/LinearSystem;
    return-object v0
.end method

.method public minimize()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 377
    move-object v1, p0

    .local v1, "this":Landroidx/constraintlayout/solver/LinearSystem;
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v5, :cond_0

    .line 378
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Landroidx/constraintlayout/solver/Metrics;->minimize:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->minimize:J

    .line 383
    :cond_0
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    if-eqz v5, :cond_6

    .line 384
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v5, :cond_1

    .line 385
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    .line 387
    :cond_1
    const/4 v5, 0x1

    move v2, v5

    .line 388
    .local v2, "fullySolved":Z
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v5, v6, :cond_2

    .line 389
    move-object v5, v1

    iget-object v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 390
    .local v4, "r":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v5, v4

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v5, :cond_3

    .line 391
    const/4 v5, 0x0

    move v2, v5

    .line 395
    .end local v4    # "r":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_2
    move v5, v2

    if-nez v5, :cond_4

    .line 396
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    .line 403
    .line 409
    .end local v2    # "fullySolved":Z
    .end local v3    # "i":I
    :goto_1
    return-void

    .line 388
    .restart local v2    # "fullySolved":Z
    .restart local v3    # "i":I
    .restart local v4    # "r":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    .end local v4    # "r":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_4
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v5, :cond_5

    .line 399
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Landroidx/constraintlayout/solver/Metrics;->fullySolved:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroidx/constraintlayout/solver/Metrics;->fullySolved:J

    .line 401
    :cond_5
    move-object v5, v1

    invoke-direct {v5}, Landroidx/constraintlayout/solver/LinearSystem;->computeValues()V

    goto :goto_1

    .line 404
    .end local v2    # "fullySolved":Z
    .end local v3    # "i":I
    :cond_6
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    goto :goto_1
.end method

.method minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 416
    move-object v1, p0

    .local v1, "this":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v2, p1

    .local v2, "goal":Landroidx/constraintlayout/solver/LinearSystem$Row;
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v3, :cond_0

    .line 417
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Landroidx/constraintlayout/solver/Metrics;->minimizeGoal:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->minimizeGoal:J

    .line 418
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    sget-object v4, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v4, v4, Landroidx/constraintlayout/solver/Metrics;->maxVariables:J

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->maxVariables:J

    .line 419
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    sget-object v4, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v4, v4, Landroidx/constraintlayout/solver/Metrics;->maxRows:J

    move-object v6, v1

    iget v6, v6, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->maxRows:J

    .line 426
    :cond_0
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Landroidx/constraintlayout/solver/ArrayRow;

    invoke-direct {v3, v4}, Landroidx/constraintlayout/solver/LinearSystem;->updateRowFromVariables(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 430
    move-object v3, v1

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/constraintlayout/solver/LinearSystem;->enforceBFS(Landroidx/constraintlayout/solver/LinearSystem$Row;)I

    move-result v3

    .line 435
    move-object v3, v1

    move-object v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/LinearSystem;->optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I

    move-result v3

    .line 440
    move-object v3, v1

    invoke-direct {v3}, Landroidx/constraintlayout/solver/LinearSystem;->computeValues()V

    .line 441
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/LinearSystem;
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 143
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 144
    .local v2, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 145
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    .line 142
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->solverVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    invoke-interface {v3, v4, v5}, Landroidx/constraintlayout/solver/Pools$Pool;->releaseAll([Ljava/lang/Object;I)V

    .line 149
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    .line 151
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 153
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 155
    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 156
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-interface {v3}, Landroidx/constraintlayout/solver/LinearSystem$Row;->clear()V

    .line 157
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 158
    const/4 v3, 0x0

    move v1, v3

    :goto_1
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_3

    .line 159
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move v4, v1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/ArrayRow;->used:Z

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    :cond_3
    move-object v3, v0

    invoke-direct {v3}, Landroidx/constraintlayout/solver/LinearSystem;->releaseRows()V

    .line 162
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 163
    return-void
.end method
