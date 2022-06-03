.class public Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
.super Landroidx/constraintlayout/solver/widgets/ResolutionNode;
.source "ResolutionAnchor.java"


# static fields
.field public static final BARRIER_CONNECTION:I = 0x5

.field public static final CENTER_CONNECTION:I = 0x2

.field public static final CHAIN_CONNECTION:I = 0x4

.field public static final DIRECT_CONNECTION:I = 0x1

.field public static final MATCH_CONNECTION:I = 0x3

.field public static final UNCONNECTED:I


# instance fields
.field computedValue:F

.field private dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

.field private dimensionMultiplier:I

.field myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field offset:F

.field private opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

.field private oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

.field private oppositeDimensionMultiplier:I

.field private oppositeOffset:F

.field resolvedOffset:F

.field resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

.field target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

.field type:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v1, p1

    .local v1, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;-><init>()V

    .line 34
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 46
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 47
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    .line 48
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 49
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    .line 52
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 53
    return-void
.end method


# virtual methods
.method addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 9

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    move-object v2, v4

    .line 306
    .local v2, "sv":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-nez v4, :cond_0

    .line 307
    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 312
    :goto_0
    return-void

    .line 309
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    move-object v3, v4

    .line 310
    .local v3, "v":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    move-object v7, v0

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x6

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v4

    goto :goto_0
.end method

.method public dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V
    .locals 6

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move v1, p1

    .local v1, "type":I
    move-object v2, p2

    .local v2, "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move v3, p3

    .local v3, "offset":I
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 263
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 264
    move-object v4, v0

    move v5, v3

    int-to-float v5, v5

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 265
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 269
    return-void
.end method

.method public dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V
    .locals 5

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v1, p1

    .local v1, "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 273
    move-object v3, v0

    move v4, v2

    int-to-float v4, v4

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 274
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 278
    return-void
.end method

.method public dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V
    .locals 6

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v1, p1

    .local v1, "node":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move v2, p2

    .local v2, "multiplier":I
    move-object v3, p3

    .local v3, "dimension":Landroidx/constraintlayout/solver/widgets/ResolutionDimension;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 282
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 283
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 284
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    .line 285
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 290
    return-void
.end method

.method public getResolvedValue()F
    .locals 2

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    return v0
.end method

.method public remove(Landroidx/constraintlayout/solver/widgets/ResolutionDimension;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v1, p1

    .local v1, "resolutionDimension":Landroidx/constraintlayout/solver/widgets/ResolutionDimension;
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-object v3, v1

    if-ne v2, v3, :cond_1

    .line 57
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 58
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    int-to-float v3, v3

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 63
    :cond_0
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve()V

    .line 64
    return-void

    .line 59
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-ne v2, v3, :cond_0

    .line 60
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 61
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    int-to-float v3, v3

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v1, v0

    invoke-super {v1}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->reset()V

    .line 230
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 231
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 232
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 233
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    .line 234
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 235
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    .line 236
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 237
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 238
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->computedValue:F

    .line 239
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 240
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    .line 241
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 242
    return-void
.end method

.method public resolve()V
    .locals 13

    .prologue
    .line 110
    move-object v1, p0

    .local v1, "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v7, v1

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 111
    .line 221
    :goto_0
    return-void

    .line 113
    :cond_0
    move-object v7, v1

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 114
    goto :goto_0

    .line 116
    :cond_1
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz v7, :cond_3

    .line 117
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->state:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    move-object v7, v1

    move-object v8, v1

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    int-to-float v8, v8

    move-object v9, v1

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->value:F

    mul-float/2addr v8, v9

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 122
    :cond_3
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz v7, :cond_5

    .line 123
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->state:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    .line 124
    goto :goto_0

    .line 126
    :cond_4
    move-object v7, v1

    move-object v8, v1

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    int-to-float v8, v8

    move-object v9, v1

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->value:F

    mul-float/2addr v8, v9

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    .line 128
    :cond_5
    move-object v7, v1

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v7, :cond_6

    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 133
    :cond_6
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-nez v7, :cond_8

    .line 134
    move-object v7, v1

    move-object v8, v1

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 135
    move-object v7, v1

    move-object v8, v1

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 140
    :goto_1
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 221
    :cond_7
    :goto_2
    goto :goto_0

    .line 137
    :cond_8
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 138
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v8, v9

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    goto :goto_1

    .line 141
    :cond_9
    move-object v7, v1

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_12

    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v7, :cond_12

    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_12

    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v7, :cond_12

    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v7, :cond_12

    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_12

    .line 149
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 150
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v7

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Landroidx/constraintlayout/solver/Metrics;->centerConnectionResolved:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroidx/constraintlayout/solver/Metrics;->centerConnectionResolved:J

    .line 152
    :cond_a
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 153
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 155
    const/4 v7, 0x0

    move v2, v7

    .line 156
    .local v2, "distance":F
    const/high16 v7, 0x3f000000    # 0.5f

    move v3, v7

    .line 158
    .local v3, "percent":F
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v7, v8, :cond_b

    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v7, v8, :cond_e

    :cond_b
    const/4 v7, 0x1

    :goto_3
    move v4, v7

    .line 160
    .local v4, "isEndAnchor":Z
    move v7, v4

    if-eqz v7, :cond_f

    .line 162
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    sub-float/2addr v7, v8

    move v2, v7

    .line 167
    :goto_4
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v7, v8, :cond_c

    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v7, v8, :cond_10

    .line 169
    :cond_c
    move v7, v2

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    move v2, v7

    .line 170
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move v3, v7

    .line 175
    :goto_5
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    move v5, v7

    .line 176
    .local v5, "margin":I
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    move v6, v7

    .line 177
    .local v6, "oppositeMargin":I
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    if-ne v7, v8, :cond_d

    .line 178
    const/high16 v7, 0x3f000000    # 0.5f

    move v3, v7

    .line 179
    const/4 v7, 0x0

    move v5, v7

    .line 180
    const/4 v7, 0x0

    move v6, v7

    .line 183
    :cond_d
    move v7, v2

    move v8, v5

    int-to-float v8, v8

    sub-float/2addr v7, v8

    move v2, v7

    .line 184
    move v7, v2

    move v8, v6

    int-to-float v8, v8

    sub-float/2addr v7, v8

    move v2, v7

    .line 186
    move v7, v4

    if-eqz v7, :cond_11

    .line 188
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move v9, v6

    int-to-float v9, v9

    add-float/2addr v8, v9

    move v9, v2

    move v10, v3

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 190
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move v9, v5

    int-to-float v9, v9

    sub-float/2addr v8, v9

    move v9, v2

    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v3

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 197
    :goto_6
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 198
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 199
    goto/16 :goto_2

    .line 158
    .end local v4    # "isEndAnchor":Z
    .end local v5    # "margin":I
    .end local v6    # "oppositeMargin":I
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 164
    .restart local v4    # "isEndAnchor":Z
    :cond_f
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    sub-float/2addr v7, v8

    move v2, v7

    goto/16 :goto_4

    .line 172
    :cond_10
    move v7, v2

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    move v2, v7

    .line 173
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move v3, v7

    goto/16 :goto_5

    .line 192
    .restart local v5    # "margin":I
    .restart local v6    # "oppositeMargin":I
    :cond_11
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move v9, v5

    int-to-float v9, v9

    add-float/2addr v8, v9

    move v9, v2

    move v10, v3

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 193
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move v9, v6

    int-to-float v9, v9

    sub-float/2addr v8, v9

    move v9, v2

    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v3

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    goto :goto_6

    .line 199
    .end local v2    # "distance":F
    .end local v3    # "percent":F
    .end local v4    # "isEndAnchor":Z
    .end local v5    # "margin":I
    .end local v6    # "oppositeMargin":I
    :cond_12
    move-object v7, v1

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_14

    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v7, :cond_14

    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_14

    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v7, :cond_14

    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v7, :cond_14

    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_14

    .line 207
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 208
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v7

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Landroidx/constraintlayout/solver/Metrics;->matchConnectionResolved:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroidx/constraintlayout/solver/Metrics;->matchConnectionResolved:J

    .line 210
    :cond_13
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 211
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 213
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move-object v9, v1

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v8, v9

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 214
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object v8, v1

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move-object v9, v1

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v8, v9

    iput v8, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 216
    move-object v7, v1

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 217
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    goto/16 :goto_2

    .line 218
    :cond_14
    move-object v7, v1

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_7

    .line 219
    move-object v7, v1

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolve()V

    goto/16 :goto_2
.end method

.method public resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v1, p1

    .local v1, "target":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move v2, p2

    .local v2, "offset":F
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object v4, v1

    if-eq v3, v4, :cond_2

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move v4, v2

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    .line 80
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 81
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 82
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 83
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->invalidate()V

    .line 85
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->didResolve()V

    .line 87
    :cond_2
    return-void
.end method

.method sType(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move v1, p1

    .local v1, "type":I
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 91
    const-string/jumbo v2, "DIRECT"

    move-object v0, v2

    .line 101
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :goto_0
    return-object v0

    .line 92
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_0
    move v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 93
    const-string/jumbo v2, "CENTER"

    move-object v0, v2

    goto :goto_0

    .line 94
    :cond_1
    move v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 95
    const-string/jumbo v2, "MATCH"

    move-object v0, v2

    goto :goto_0

    .line 96
    :cond_2
    move v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 97
    const-string/jumbo v2, "CHAIN"

    move-object v0, v2

    goto :goto_0

    .line 98
    :cond_3
    move v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 99
    const-string/jumbo v2, "BARRIER"

    move-object v0, v2

    goto :goto_0

    .line 101
    :cond_4
    const-string/jumbo v2, "UNCONNECTED"

    move-object v0, v2

    goto :goto_0
.end method

.method public setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V
    .locals 5

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v1, p1

    .local v1, "opposite":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move v2, p2

    .local v2, "oppositeOffset":F
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 294
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    .line 295
    return-void
.end method

.method public setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V
    .locals 6

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v1, p1

    .local v1, "opposite":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move v2, p2

    .local v2, "multiplier":I
    move-object v3, p3

    .local v3, "dimension":Landroidx/constraintlayout/solver/widgets/ResolutionDimension;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 299
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 300
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    .line 301
    return-void
.end method

.method public setType(I)V
    .locals 4

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move v1, p1

    .local v1, "type":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 225
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v1, v0

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 69
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object v2, v0

    if-ne v1, v2, :cond_0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", RESOLVED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]  type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->sType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 75
    .end local v0    # "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :goto_0
    return-object v0

    .line 72
    .restart local v0    # "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", RESOLVED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 73
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->sType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    move-object v0, v1

    goto :goto_0

    .line 75
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " UNRESOLVED} type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->sType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public update()V
    .locals 6

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    move-object v1, v3

    .line 246
    .local v1, "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 247
    .line 259
    :goto_0
    return-void

    .line 249
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v3, v4, :cond_1

    .line 250
    move-object v3, v0

    const/4 v4, 0x4

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 251
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    const/4 v4, 0x4

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 253
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    move v2, v3

    .line 254
    .local v2, "margin":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v3, v4, :cond_3

    .line 256
    :cond_2
    move v3, v2

    neg-int v3, v3

    move v2, v3

    .line 258
    :cond_3
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 259
    goto :goto_0
.end method
