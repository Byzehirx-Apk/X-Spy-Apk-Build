.class public Landroidx/constraintlayout/solver/Metrics;
.super Ljava/lang/Object;
.source "Metrics.java"


# instance fields
.field public additionalMeasures:J

.field public barrierConnectionResolved:J

.field public bfs:J

.field public centerConnectionResolved:J

.field public chainConnectionResolved:J

.field public constraints:J

.field public errors:J

.field public extravariables:J

.field public fullySolved:J

.field public graphOptimizer:J

.field public iterations:J

.field public lastTableSize:J

.field public matchConnectionResolved:J

.field public maxRows:J

.field public maxTableSize:J

.field public maxVariables:J

.field public measures:J

.field public minimize:J

.field public minimizeGoal:J

.field public nonresolvedWidgets:J

.field public oldresolvedWidgets:J

.field public optimize:J

.field public pivots:J

.field public problematicLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public resolutions:J

.field public resolvedWidgets:J

.field public simpleconstraints:J

.field public slackvariables:J

.field public tableSizeIncrease:J

.field public variables:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/Metrics;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/constraintlayout/solver/Metrics;->problematicLayouts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/Metrics;
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->measures:J

    .line 92
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->additionalMeasures:J

    .line 93
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->resolutions:J

    .line 94
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->tableSizeIncrease:J

    .line 95
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    .line 96
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->lastTableSize:J

    .line 97
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->maxVariables:J

    .line 98
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->maxRows:J

    .line 99
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->minimize:J

    .line 100
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->minimizeGoal:J

    .line 101
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->constraints:J

    .line 102
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->simpleconstraints:J

    .line 103
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->optimize:J

    .line 104
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->iterations:J

    .line 105
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 106
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->bfs:J

    .line 107
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->variables:J

    .line 108
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->errors:J

    .line 109
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->slackvariables:J

    .line 110
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->extravariables:J

    .line 111
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->fullySolved:J

    .line 112
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    .line 113
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    .line 114
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->oldresolvedWidgets:J

    .line 115
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    .line 116
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->centerConnectionResolved:J

    .line 117
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->matchConnectionResolved:J

    .line 118
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    .line 119
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->barrierConnectionResolved:J

    .line 120
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/Metrics;->problematicLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/Metrics;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n*** Metrics ***\nmeasures: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->measures:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nadditionalMeasures: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->additionalMeasures:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nresolutions passes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->resolutions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\ntable increases: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->tableSizeIncrease:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nmaxTableSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nmaxVariables: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->maxVariables:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nmaxRows: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->maxRows:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\nminimize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->minimize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nminimizeGoal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->minimizeGoal:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nconstraints: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->constraints:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nsimpleconstraints: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->simpleconstraints:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\noptimize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->optimize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\niterations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->iterations:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\npivots: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nbfs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->bfs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nvariables: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->variables:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nerrors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->errors:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nslackvariables: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->slackvariables:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nextravariables: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->extravariables:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nfullySolved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->fullySolved:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\ngraphOptimizer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nresolvedWidgets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\noldresolvedWidgets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->oldresolvedWidgets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nnonresolvedWidgets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\ncenterConnectionResolved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->centerConnectionResolved:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nmatchConnectionResolved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->matchConnectionResolved:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nchainConnectionResolved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nbarrierConnectionResolved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/constraintlayout/solver/Metrics;->barrierConnectionResolved:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nproblematicsLayouts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/Metrics;->problematicLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/Metrics;
    return-object v0
.end method
