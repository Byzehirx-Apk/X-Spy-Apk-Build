.class public Landroidx/constraintlayout/solver/widgets/Optimizer;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static final FLAG_CHAIN_DANGLING:I = 0x1

.field static final FLAG_RECOMPUTE_BOUNDS:I = 0x2

.field static final FLAG_USE_OPTIMIZE:I = 0x0

.field public static final OPTIMIZATION_BARRIER:I = 0x2

.field public static final OPTIMIZATION_CHAIN:I = 0x4

.field public static final OPTIMIZATION_DIMENSIONS:I = 0x8

.field public static final OPTIMIZATION_DIRECT:I = 0x1

.field public static final OPTIMIZATION_GROUPS:I = 0x20

.field public static final OPTIMIZATION_NONE:I = 0x0

.field public static final OPTIMIZATION_RATIO:I = 0x10

.field public static final OPTIMIZATION_STANDARD:I = 0x7

.field static flags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Landroidx/constraintlayout/solver/widgets/Optimizer;->flags:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/widgets/Optimizer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static analyze(ILandroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 14

    .prologue
    .line 152
    move v0, p0

    .local v0, "optimisationLevel":I
    move-object v1, p1

    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v10, v1

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateResolutionNodes()V

    .line 154
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    move-object v2, v10

    .line 155
    .local v2, "leftNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    move-object v3, v10

    .line 156
    .local v3, "topNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    move-object v4, v10

    .line 157
    .local v4, "rightNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    move-object v5, v10

    .line 159
    .local v5, "bottomNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move v10, v0

    const/16 v11, 0x8

    and-int/lit8 v10, v10, 0x8

    const/16 v11, 0x8

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    :goto_0
    move v6, v10

    .line 163
    .local v6, "optimiseDimensions":Z
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_5

    move-object v10, v1

    const/4 v11, 0x0

    .line 164
    invoke-static {v10, v11}, Landroidx/constraintlayout/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    :goto_1
    move v7, v10

    .line 166
    .local v7, "isOptimizableHorizontalMatch":Z
    move-object v10, v2

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_1

    move-object v10, v4

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_1

    .line 168
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v11, :cond_0

    move v10, v7

    if-eqz v10, :cond_d

    move-object v10, v1

    .line 169
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_d

    .line 170
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_7

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_7

    .line 171
    move-object v10, v2

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 172
    move-object v10, v4

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 173
    move v10, v6

    if-eqz v10, :cond_6

    .line 174
    move-object v10, v4

    move-object v11, v2

    const/4 v12, 0x1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    .line 259
    :cond_1
    :goto_2
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_16

    move-object v10, v1

    const/4 v11, 0x1

    .line 260
    invoke-static {v10, v11}, Landroidx/constraintlayout/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v10, 0x1

    :goto_3
    move v8, v10

    .line 262
    .local v8, "isOptimizableVerticalMatch":Z
    move-object v10, v3

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_3

    move-object v10, v5

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_3

    .line 265
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v11, :cond_2

    move v10, v8

    if-eqz v10, :cond_1e

    move-object v10, v1

    .line 266
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1e

    .line 267
    :cond_2
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_18

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_18

    .line 268
    move-object v10, v3

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 269
    move-object v10, v5

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 270
    move v10, v6

    if-eqz v10, :cond_17

    .line 271
    move-object v10, v5

    move-object v11, v3

    const/4 v12, 0x1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    .line 275
    :goto_4
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_3

    .line 276
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 277
    move-object v10, v3

    const/4 v11, 0x1

    move-object v12, v1

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 278
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v12

    move-object v13, v1

    iget v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    neg-int v13, v13

    .line 277
    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 367
    :cond_3
    :goto_5
    return-void

    .line 159
    .end local v6    # "optimiseDimensions":Z
    .end local v7    # "isOptimizableHorizontalMatch":Z
    .end local v8    # "isOptimizableVerticalMatch":Z
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 164
    .restart local v6    # "optimiseDimensions":Z
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 176
    .restart local v7    # "isOptimizableHorizontalMatch":Z
    :cond_6
    move-object v10, v4

    move-object v11, v2

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_2

    .line 178
    :cond_7
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_9

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_9

    .line 179
    move-object v10, v2

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 180
    move-object v10, v4

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 181
    move v10, v6

    if-eqz v10, :cond_8

    .line 182
    move-object v10, v4

    move-object v11, v2

    const/4 v12, 0x1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 184
    :cond_8
    move-object v10, v4

    move-object v11, v2

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_2

    .line 186
    :cond_9
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_b

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_b

    .line 187
    move-object v10, v2

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 188
    move-object v10, v4

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 189
    move-object v10, v2

    move-object v11, v4

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    neg-int v12, v12

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 190
    move v10, v6

    if-eqz v10, :cond_a

    .line 191
    move-object v10, v2

    move-object v11, v4

    const/4 v12, -0x1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 193
    :cond_a
    move-object v10, v2

    move-object v11, v4

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    neg-int v12, v12

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_2

    .line 195
    :cond_b
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_1

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_1

    .line 196
    move-object v10, v2

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 197
    move-object v10, v4

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 198
    move v10, v6

    if-eqz v10, :cond_c

    .line 199
    move-object v10, v1

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 200
    move-object v10, v1

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 201
    move-object v10, v2

    move-object v11, v4

    const/4 v12, -0x1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    .line 202
    move-object v10, v4

    move-object v11, v2

    const/4 v12, 0x1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 204
    :cond_c
    move-object v10, v2

    move-object v11, v4

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 205
    move-object v10, v4

    move-object v11, v2

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_2

    .line 208
    :cond_d
    move v10, v7

    if-eqz v10, :cond_1

    .line 209
    move-object v10, v1

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    move v8, v10

    .line 215
    .local v8, "width":I
    move-object v10, v2

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 216
    move-object v10, v4

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 217
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_f

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_f

    .line 218
    move v10, v6

    if-eqz v10, :cond_e

    .line 219
    move-object v10, v4

    move-object v11, v2

    const/4 v12, 0x1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 221
    :cond_e
    move-object v10, v4

    move-object v11, v2

    move v12, v8

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_2

    .line 223
    :cond_f
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_11

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_11

    .line 224
    move v10, v6

    if-eqz v10, :cond_10

    .line 225
    move-object v10, v4

    move-object v11, v2

    const/4 v12, 0x1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 227
    :cond_10
    move-object v10, v4

    move-object v11, v2

    move v12, v8

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_2

    .line 229
    :cond_11
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_13

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_13

    .line 230
    move v10, v6

    if-eqz v10, :cond_12

    .line 231
    move-object v10, v2

    move-object v11, v4

    const/4 v12, -0x1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_2

    .line 233
    :cond_12
    move-object v10, v2

    move-object v11, v4

    move v12, v8

    neg-int v12, v12

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_2

    .line 235
    :cond_13
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_1

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_1

    .line 236
    move v10, v6

    if-eqz v10, :cond_14

    .line 237
    move-object v10, v1

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 238
    move-object v10, v1

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 240
    :cond_14
    move-object v10, v1

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_15

    .line 241
    move-object v10, v2

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 242
    move-object v10, v4

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 243
    move-object v10, v2

    move-object v11, v4

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 244
    move-object v10, v4

    move-object v11, v2

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_2

    .line 247
    :cond_15
    move-object v10, v2

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 248
    move-object v10, v4

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 249
    move-object v10, v2

    move-object v11, v4

    move v12, v8

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 250
    move-object v10, v4

    move-object v11, v2

    move v12, v8

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 251
    move-object v10, v1

    move v11, v8

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_2

    .line 260
    .end local v8    # "width":I
    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 273
    .local v8, "isOptimizableVerticalMatch":Z
    :cond_17
    move-object v10, v5

    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_4

    .line 280
    :cond_18
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_1a

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_1a

    .line 281
    move-object v10, v3

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 282
    move-object v10, v5

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 283
    move v10, v6

    if-eqz v10, :cond_19

    .line 284
    move-object v10, v5

    move-object v11, v3

    const/4 v12, 0x1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    .line 288
    :goto_6
    move-object v10, v1

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v10, :cond_3

    .line 289
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    const/4 v11, 0x1

    move-object v12, v3

    move-object v13, v1

    iget v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 286
    :cond_19
    move-object v10, v5

    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto :goto_6

    .line 291
    :cond_1a
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_1c

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_1c

    .line 292
    move-object v10, v3

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 293
    move-object v10, v5

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 294
    move v10, v6

    if-eqz v10, :cond_1b

    .line 295
    move-object v10, v3

    move-object v11, v5

    const/4 v12, -0x1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    .line 299
    :goto_7
    move-object v10, v1

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v10, :cond_3

    .line 300
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    const/4 v11, 0x1

    move-object v12, v3

    move-object v13, v1

    iget v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 297
    :cond_1b
    move-object v10, v3

    move-object v11, v5

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    neg-int v12, v12

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto :goto_7

    .line 302
    :cond_1c
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_3

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_3

    .line 303
    move-object v10, v3

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 304
    move-object v10, v5

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 305
    move v10, v6

    if-eqz v10, :cond_1d

    .line 306
    move-object v10, v3

    move-object v11, v5

    const/4 v12, -0x1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    .line 307
    move-object v10, v5

    move-object v11, v3

    const/4 v12, 0x1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    .line 308
    move-object v10, v1

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 309
    move-object v10, v1

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 314
    :goto_8
    move-object v10, v1

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v10, :cond_3

    .line 315
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    const/4 v11, 0x1

    move-object v12, v3

    move-object v13, v1

    iget v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 311
    :cond_1d
    move-object v10, v3

    move-object v11, v5

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 312
    move-object v10, v5

    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto :goto_8

    .line 318
    :cond_1e
    move v10, v8

    if-eqz v10, :cond_3

    .line 319
    move-object v10, v1

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    move v9, v10

    .line 324
    .local v9, "height":I
    move-object v10, v3

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 325
    move-object v10, v5

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 326
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_20

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_20

    .line 327
    move v10, v6

    if-eqz v10, :cond_1f

    .line 328
    move-object v10, v5

    move-object v11, v3

    const/4 v12, 0x1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_5

    .line 330
    :cond_1f
    move-object v10, v5

    move-object v11, v3

    move v12, v9

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 332
    :cond_20
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_22

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_22

    .line 333
    move v10, v6

    if-eqz v10, :cond_21

    .line 334
    move-object v10, v5

    move-object v11, v3

    const/4 v12, 0x1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_5

    .line 336
    :cond_21
    move-object v10, v5

    move-object v11, v3

    move v12, v9

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 338
    :cond_22
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_24

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_24

    .line 339
    move v10, v6

    if-eqz v10, :cond_23

    .line 340
    move-object v10, v3

    move-object v11, v5

    const/4 v12, -0x1

    move-object v13, v1

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_5

    .line 342
    :cond_23
    move-object v10, v3

    move-object v11, v5

    move v12, v9

    neg-int v12, v12

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5

    .line 344
    :cond_24
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_3

    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_3

    .line 345
    move v10, v6

    if-eqz v10, :cond_25

    .line 346
    move-object v10, v1

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 347
    move-object v10, v1

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 349
    :cond_25
    move-object v10, v1

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_26

    .line 350
    move-object v10, v3

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 351
    move-object v10, v5

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 352
    move-object v10, v3

    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 353
    move-object v10, v5

    move-object v11, v3

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_5

    .line 355
    :cond_26
    move-object v10, v3

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 356
    move-object v10, v5

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 357
    move-object v10, v3

    move-object v11, v5

    move v12, v9

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 358
    move-object v10, v5

    move-object v11, v3

    move v12, v9

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 359
    move-object v10, v1

    move v11, v9

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 360
    move-object v10, v1

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v10, :cond_3

    .line 361
    move-object v10, v1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    const/4 v11, 0x1

    move-object v12, v3

    move-object v13, v1

    iget v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v10, v11, v12, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_5
.end method

.method static applyChainOptimized(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)Z
    .locals 41

    .prologue
    .line 383
    move-object/from16 v3, p0

    .local v3, "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object/from16 v4, p1

    .local v4, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move/from16 v5, p2

    .local v5, "orientation":I
    move/from16 v6, p3

    .local v6, "offset":I
    move-object/from16 v7, p4

    .local v7, "chainHead":Landroidx/constraintlayout/solver/widgets/ChainHead;
    move-object/from16 v35, v7

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    move-object/from16 v8, v35

    .line 384
    .local v8, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v35, v7

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    move-object/from16 v9, v35

    .line 385
    .local v9, "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v35, v7

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    move-object/from16 v10, v35

    .line 386
    .local v10, "firstVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v35, v7

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    move-object/from16 v11, v35

    .line 387
    .local v11, "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v35, v7

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    move-object/from16 v12, v35

    .line 389
    .local v12, "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v35, v8

    move-object/from16 v13, v35

    .line 390
    .local v13, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/16 v35, 0x0

    move-object/from16 v14, v35

    .line 391
    .local v14, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/16 v35, 0x0

    move/from16 v15, v35

    .line 393
    .local v15, "done":Z
    const/16 v35, 0x0

    move/from16 v16, v35

    .line 394
    .local v16, "numMatchConstraints":I
    move-object/from16 v35, v7

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    move/from16 v35, v0

    move/from16 v17, v35

    .line 395
    .local v17, "totalWeights":F
    move-object/from16 v35, v7

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    move-object/from16 v18, v35

    .line 396
    .local v18, "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v35, v7

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    move-object/from16 v19, v35

    .line 398
    .local v19, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    move/from16 v36, v5

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_3

    const/16 v35, 0x1

    :goto_0
    move/from16 v20, v35

    .line 399
    .local v20, "isWrapContent":Z
    const/16 v35, 0x0

    move/from16 v21, v35

    .line 400
    .local v21, "isChainSpread":Z
    const/16 v35, 0x0

    move/from16 v22, v35

    .line 401
    .local v22, "isChainSpreadInside":Z
    const/16 v35, 0x0

    move/from16 v23, v35

    .line 403
    .local v23, "isChainPacked":Z
    move/from16 v35, v5

    if-nez v35, :cond_7

    .line 404
    move-object/from16 v35, v12

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v35, v0

    if-nez v35, :cond_4

    const/16 v35, 0x1

    :goto_1
    move/from16 v21, v35

    .line 405
    move-object/from16 v35, v12

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_5

    const/16 v35, 0x1

    :goto_2
    move/from16 v22, v35

    .line 406
    move-object/from16 v35, v12

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    const/16 v35, 0x1

    :goto_3
    move/from16 v23, v35

    .line 417
    :goto_4
    const/16 v35, 0x0

    move/from16 v24, v35

    .line 418
    .local v24, "totalSize":F
    const/16 v35, 0x0

    move/from16 v25, v35

    .line 419
    .local v25, "totalMargins":F
    const/16 v35, 0x0

    move/from16 v26, v35

    .line 421
    .local v26, "numVisibleWidgets":I
    :goto_5
    move/from16 v35, v15

    if-nez v35, :cond_17

    .line 423
    move-object/from16 v35, v13

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v35

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_2

    .line 424
    add-int/lit8 v26, v26, 0x1

    .line 425
    move/from16 v35, v5

    if-nez v35, :cond_b

    .line 426
    move/from16 v35, v24

    move-object/from16 v36, v13

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v24, v35

    .line 430
    :goto_6
    move-object/from16 v35, v13

    move-object/from16 v36, v10

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_0

    .line 431
    move/from16 v35, v24

    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v6

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v24, v35

    .line 433
    :cond_0
    move-object/from16 v35, v13

    move-object/from16 v36, v11

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_1

    .line 434
    move/from16 v35, v24

    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v6

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v24, v35

    .line 436
    :cond_1
    move/from16 v35, v25

    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v6

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v25, v35

    .line 437
    move/from16 v35, v25

    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v6

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v25, v35

    .line 440
    :cond_2
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    aget-object v35, v35, v36

    move-object/from16 v27, v35

    .line 442
    .local v27, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v35, v13

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v35

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_12

    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    move/from16 v36, v5

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_12

    .line 444
    add-int/lit8 v16, v16, 0x1

    .line 446
    move/from16 v35, v5

    if-nez v35, :cond_e

    .line 447
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    move/from16 v35, v0

    if-eqz v35, :cond_c

    .line 448
    const/16 v35, 0x0

    move/from16 v3, v35

    .line 659
    .end local v3    # "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .end local v27    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_7
    return v3

    .line 398
    .end local v20    # "isWrapContent":Z
    .end local v21    # "isChainSpread":Z
    .end local v22    # "isChainSpreadInside":Z
    .end local v23    # "isChainPacked":Z
    .end local v24    # "totalSize":F
    .end local v25    # "totalMargins":F
    .end local v26    # "numVisibleWidgets":I
    .restart local v3    # "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    :cond_3
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 404
    .restart local v20    # "isWrapContent":Z
    .restart local v21    # "isChainSpread":Z
    .restart local v22    # "isChainSpreadInside":Z
    .restart local v23    # "isChainPacked":Z
    :cond_4
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 405
    :cond_5
    const/16 v35, 0x0

    goto/16 :goto_2

    .line 406
    :cond_6
    const/16 v35, 0x0

    goto/16 :goto_3

    .line 408
    :cond_7
    move-object/from16 v35, v12

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v35, v0

    if-nez v35, :cond_8

    const/16 v35, 0x1

    :goto_8
    move/from16 v21, v35

    .line 409
    move-object/from16 v35, v12

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_9

    const/16 v35, 0x1

    :goto_9
    move/from16 v22, v35

    .line 410
    move-object/from16 v35, v12

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v35, v0

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    const/16 v35, 0x1

    :goto_a
    move/from16 v23, v35

    goto/16 :goto_4

    .line 408
    :cond_8
    const/16 v35, 0x0

    goto :goto_8

    .line 409
    :cond_9
    const/16 v35, 0x0

    goto :goto_9

    .line 410
    :cond_a
    const/16 v35, 0x0

    goto :goto_a

    .line 428
    .restart local v24    # "totalSize":F
    .restart local v25    # "totalMargins":F
    .restart local v26    # "numVisibleWidgets":I
    :cond_b
    move/from16 v35, v24

    move-object/from16 v36, v13

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v24, v35

    goto/16 :goto_6

    .line 449
    .restart local v27    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_c
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v35, v0

    if-nez v35, :cond_d

    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v35, v0

    if-eqz v35, :cond_11

    .line 450
    :cond_d
    const/16 v35, 0x0

    move/from16 v3, v35

    goto :goto_7

    .line 453
    :cond_e
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    move/from16 v35, v0

    if-eqz v35, :cond_f

    .line 454
    const/16 v35, 0x0

    move/from16 v3, v35

    goto/16 :goto_7

    .line 455
    :cond_f
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v35, v0

    if-nez v35, :cond_10

    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v35, v0

    if-eqz v35, :cond_11

    .line 456
    :cond_10
    const/16 v35, 0x0

    move/from16 v3, v35

    goto/16 :goto_7

    .line 459
    :cond_11
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    move/from16 v35, v0

    const/16 v36, 0x0

    cmpl-float v35, v35, v36

    if-eqz v35, :cond_12

    .line 460
    const/16 v35, 0x0

    move/from16 v3, v35

    goto/16 :goto_7

    .line 465
    :cond_12
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    const/16 v37, 0x1

    add-int/lit8 v36, v36, 0x1

    aget-object v35, v35, v36

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move-object/from16 v28, v35

    .line 466
    .local v28, "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v35, v28

    if-eqz v35, :cond_15

    .line 467
    move-object/from16 v35, v28

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    move-object/from16 v14, v35

    .line 468
    move-object/from16 v35, v14

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    aget-object v35, v35, v36

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    if-eqz v35, :cond_13

    move-object/from16 v35, v14

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    aget-object v35, v35, v36

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    move-object/from16 v36, v13

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_14

    .line 469
    :cond_13
    const/16 v35, 0x0

    move-object/from16 v14, v35

    .line 474
    :cond_14
    :goto_b
    move-object/from16 v35, v14

    if-eqz v35, :cond_16

    .line 475
    move-object/from16 v35, v14

    move-object/from16 v13, v35

    .line 479
    :goto_c
    goto/16 :goto_5

    .line 472
    :cond_15
    const/16 v35, 0x0

    move-object/from16 v14, v35

    goto :goto_b

    .line 477
    :cond_16
    const/16 v35, 0x1

    move/from16 v15, v35

    goto :goto_c

    .line 481
    .end local v27    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v28    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_17
    move-object/from16 v35, v8

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v35

    move-object/from16 v27, v35

    .line 482
    .local v27, "firstNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object/from16 v35, v9

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    const/16 v37, 0x1

    add-int/lit8 v36, v36, 0x1

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v35

    move-object/from16 v28, v35

    .line 484
    .local v28, "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object/from16 v35, v27

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    if-eqz v35, :cond_18

    move-object/from16 v35, v28

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    if-nez v35, :cond_19

    .line 486
    :cond_18
    const/16 v35, 0x0

    move/from16 v3, v35

    goto/16 :goto_7

    .line 490
    :cond_19
    move-object/from16 v35, v27

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    move-object/from16 v35, v28

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1b

    .line 493
    :cond_1a
    const/16 v35, 0x0

    move/from16 v3, v35

    goto/16 :goto_7

    .line 496
    :cond_1b
    move/from16 v35, v16

    if-lez v35, :cond_1c

    move/from16 v35, v16

    move/from16 v36, v26

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1c

    .line 498
    const/16 v35, 0x0

    move/from16 v3, v35

    goto/16 :goto_7

    .line 501
    :cond_1c
    const/16 v35, 0x0

    move/from16 v29, v35

    .line 502
    .local v29, "extraMargin":F
    move/from16 v35, v23

    if-nez v35, :cond_1d

    move/from16 v35, v21

    if-nez v35, :cond_1d

    move/from16 v35, v22

    if-eqz v35, :cond_1f

    .line 503
    :cond_1d
    move-object/from16 v35, v10

    if-eqz v35, :cond_1e

    .line 504
    move-object/from16 v35, v10

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v29, v35

    .line 506
    :cond_1e
    move-object/from16 v35, v11

    if-eqz v35, :cond_1f

    .line 507
    move/from16 v35, v29

    move-object/from16 v36, v11

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v6

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v29, v35

    .line 511
    :cond_1f
    move-object/from16 v35, v27

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move/from16 v35, v0

    move/from16 v30, v35

    .line 512
    .local v30, "firstOffset":F
    move-object/from16 v35, v28

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    move/from16 v35, v0

    move/from16 v31, v35

    .line 513
    .local v31, "lastOffset":F
    const/16 v35, 0x0

    move/from16 v32, v35

    .line 514
    .local v32, "distance":F
    move/from16 v35, v30

    move/from16 v36, v31

    cmpg-float v35, v35, v36

    if-gez v35, :cond_20

    .line 515
    move/from16 v35, v31

    move/from16 v36, v30

    sub-float v35, v35, v36

    move/from16 v36, v24

    sub-float v35, v35, v36

    move/from16 v32, v35

    .line 520
    :goto_d
    move/from16 v35, v16

    if-lez v35, :cond_29

    move/from16 v35, v16

    move/from16 v36, v26

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_29

    .line 521
    move-object/from16 v35, v13

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v35

    if-eqz v35, :cond_21

    move-object/from16 v35, v13

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v35

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v35, v0

    move/from16 v36, v5

    aget-object v35, v35, v36

    sget-object v36, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_21

    .line 522
    const/16 v35, 0x0

    move/from16 v3, v35

    goto/16 :goto_7

    .line 517
    :cond_20
    move/from16 v35, v30

    move/from16 v36, v31

    sub-float v35, v35, v36

    move/from16 v36, v24

    sub-float v35, v35, v36

    move/from16 v32, v35

    goto :goto_d

    .line 524
    :cond_21
    move/from16 v35, v32

    move/from16 v36, v24

    add-float v35, v35, v36

    move/from16 v32, v35

    .line 525
    move/from16 v35, v32

    move/from16 v36, v25

    sub-float v35, v35, v36

    move/from16 v32, v35

    .line 526
    move-object/from16 v35, v8

    move-object/from16 v13, v35

    .line 527
    move/from16 v35, v30

    move/from16 v33, v35

    .line 528
    .local v33, "position":F
    :goto_e
    move-object/from16 v35, v13

    if-eqz v35, :cond_28

    .line 529
    move-object/from16 v35, v4

    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v35, :cond_22

    .line 530
    move-object/from16 v35, v4

    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    sub-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    .line 531
    move-object/from16 v35, v4

    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    .line 532
    move-object/from16 v35, v4

    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    .line 534
    :cond_22
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    move/from16 v36, v5

    aget-object v35, v35, v36

    move-object/from16 v14, v35

    .line 535
    move-object/from16 v35, v14

    if-nez v35, :cond_23

    move-object/from16 v35, v13

    move-object/from16 v36, v9

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_26

    .line 536
    :cond_23
    move/from16 v35, v32

    move/from16 v36, v16

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v35, v35, v36

    move/from16 v34, v35

    .line 537
    .local v34, "dimension":F
    move/from16 v35, v17

    const/16 v36, 0x0

    cmpl-float v35, v35, v36

    if-lez v35, :cond_24

    .line 538
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    move-object/from16 v35, v0

    move/from16 v36, v5

    aget v35, v35, v36

    const/high16 v36, -0x40800000    # -1.0f

    cmpl-float v35, v35, v36

    if-nez v35, :cond_27

    .line 539
    const/16 v35, 0x0

    move/from16 v34, v35

    .line 544
    :cond_24
    :goto_f
    move-object/from16 v35, v13

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v35

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_25

    .line 545
    const/16 v35, 0x0

    move/from16 v34, v35

    .line 547
    :cond_25
    move/from16 v35, v33

    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v6

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v33, v35

    .line 548
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v35

    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v33

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 550
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    const/16 v37, 0x1

    add-int/lit8 v36, v36, 0x1

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v35

    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v33

    move/from16 v38, v34

    add-float v37, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 552
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v35

    move-object/from16 v36, v4

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 553
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    const/16 v37, 0x1

    add-int/lit8 v36, v36, 0x1

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v35

    move-object/from16 v36, v4

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 554
    move/from16 v35, v33

    move/from16 v36, v34

    add-float v35, v35, v36

    move/from16 v33, v35

    .line 555
    move/from16 v35, v33

    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v6

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v33, v35

    .line 557
    .end local v34    # "dimension":F
    :cond_26
    move-object/from16 v35, v14

    move-object/from16 v13, v35

    goto/16 :goto_e

    .line 541
    .restart local v34    # "dimension":F
    :cond_27
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    move-object/from16 v35, v0

    move/from16 v36, v5

    aget v35, v35, v36

    move/from16 v36, v32

    mul-float v35, v35, v36

    move/from16 v36, v17

    div-float v35, v35, v36

    move/from16 v34, v35

    goto/16 :goto_f

    .line 559
    .end local v34    # "dimension":F
    :cond_28
    const/16 v35, 0x1

    move/from16 v3, v35

    goto/16 :goto_7

    .line 563
    .end local v33    # "position":F
    :cond_29
    move/from16 v35, v32

    const/16 v36, 0x0

    cmpg-float v35, v35, v36

    if-gez v35, :cond_2a

    .line 564
    const/16 v35, 0x0

    move/from16 v21, v35

    .line 565
    const/16 v35, 0x0

    move/from16 v22, v35

    .line 566
    const/16 v35, 0x1

    move/from16 v23, v35

    .line 569
    :cond_2a
    move/from16 v35, v23

    if-eqz v35, :cond_2f

    .line 570
    move/from16 v35, v32

    move/from16 v36, v29

    sub-float v35, v35, v36

    move/from16 v32, v35

    .line 572
    move-object/from16 v35, v8

    move-object/from16 v13, v35

    .line 573
    move/from16 v35, v30

    move/from16 v36, v32

    move-object/from16 v37, v8

    move/from16 v38, v5

    invoke-virtual/range {v37 .. v38}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBiasPercent(I)F

    move-result v37

    mul-float v36, v36, v37

    add-float v35, v35, v36

    move/from16 v32, v35

    .line 574
    :goto_10
    move-object/from16 v35, v13

    if-eqz v35, :cond_3d

    .line 575
    move-object/from16 v35, v4

    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v35, :cond_2b

    .line 576
    move-object/from16 v35, v4

    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    sub-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    .line 577
    move-object/from16 v35, v4

    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    .line 578
    move-object/from16 v35, v4

    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    .line 580
    :cond_2b
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    move/from16 v36, v5

    aget-object v35, v35, v36

    move-object/from16 v14, v35

    .line 581
    move-object/from16 v35, v14

    if-nez v35, :cond_2c

    move-object/from16 v35, v13

    move-object/from16 v36, v9

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_2d

    .line 582
    :cond_2c
    const/16 v35, 0x0

    move/from16 v33, v35

    .line 583
    .local v33, "dimension":F
    move/from16 v35, v5

    if-nez v35, :cond_2e

    .line 584
    move-object/from16 v35, v13

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v33, v35

    .line 588
    :goto_11
    move/from16 v35, v32

    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v6

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v32, v35

    .line 589
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v35

    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v32

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 591
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    const/16 v37, 0x1

    add-int/lit8 v36, v36, 0x1

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v35

    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v32

    move/from16 v38, v33

    add-float v37, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 593
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v35

    move-object/from16 v36, v4

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 594
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    const/16 v37, 0x1

    add-int/lit8 v36, v36, 0x1

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v35

    move-object/from16 v36, v4

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 595
    move/from16 v35, v32

    move/from16 v36, v33

    add-float v35, v35, v36

    move/from16 v32, v35

    .line 596
    move/from16 v35, v32

    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v6

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v32, v35

    .line 598
    .end local v33    # "dimension":F
    :cond_2d
    move-object/from16 v35, v14

    move-object/from16 v13, v35

    goto/16 :goto_10

    .line 586
    .restart local v33    # "dimension":F
    :cond_2e
    move-object/from16 v35, v13

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v33, v35

    goto/16 :goto_11

    .line 600
    .end local v33    # "dimension":F
    :cond_2f
    move/from16 v35, v21

    if-nez v35, :cond_30

    move/from16 v35, v22

    if-eqz v35, :cond_3d

    .line 601
    :cond_30
    move/from16 v35, v21

    if-eqz v35, :cond_3a

    .line 602
    move/from16 v35, v32

    move/from16 v36, v29

    sub-float v35, v35, v36

    move/from16 v32, v35

    .line 606
    :cond_31
    :goto_12
    move-object/from16 v35, v8

    move-object/from16 v13, v35

    .line 607
    move/from16 v35, v32

    move/from16 v36, v26

    const/16 v37, 0x1

    add-int/lit8 v36, v36, 0x1

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v35, v35, v36

    move/from16 v33, v35

    .line 608
    .local v33, "gap":F
    move/from16 v35, v22

    if-eqz v35, :cond_32

    .line 609
    move/from16 v35, v26

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_3b

    .line 610
    move/from16 v35, v32

    move/from16 v36, v26

    const/16 v37, 0x1

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v35, v35, v36

    move/from16 v33, v35

    .line 615
    :cond_32
    :goto_13
    move/from16 v35, v30

    move/from16 v32, v35

    .line 616
    move-object/from16 v35, v8

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v35

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_33

    .line 617
    move/from16 v35, v32

    move/from16 v36, v33

    add-float v35, v35, v36

    move/from16 v32, v35

    .line 619
    :cond_33
    move/from16 v35, v22

    if-eqz v35, :cond_34

    move/from16 v35, v26

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_34

    .line 620
    move/from16 v35, v30

    move-object/from16 v36, v10

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v6

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v32, v35

    .line 622
    :cond_34
    move/from16 v35, v21

    if-eqz v35, :cond_35

    .line 623
    move-object/from16 v35, v10

    if-eqz v35, :cond_35

    .line 624
    move/from16 v35, v32

    move-object/from16 v36, v10

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v6

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v32, v35

    .line 627
    :cond_35
    :goto_14
    move-object/from16 v35, v13

    if-eqz v35, :cond_3d

    .line 628
    move-object/from16 v35, v4

    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v35, :cond_36

    .line 629
    move-object/from16 v35, v4

    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    sub-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    .line 630
    move-object/from16 v35, v4

    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    .line 631
    move-object/from16 v35, v4

    sget-object v35, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    .line 633
    :cond_36
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v35, v0

    move/from16 v36, v5

    aget-object v35, v35, v36

    move-object/from16 v14, v35

    .line 634
    move-object/from16 v35, v14

    if-nez v35, :cond_37

    move-object/from16 v35, v13

    move-object/from16 v36, v9

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_39

    .line 635
    :cond_37
    const/16 v35, 0x0

    move/from16 v34, v35

    .line 636
    .restart local v34    # "dimension":F
    move/from16 v35, v5

    if-nez v35, :cond_3c

    .line 637
    move-object/from16 v35, v13

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v34, v35

    .line 641
    :goto_15
    move-object/from16 v35, v13

    move-object/from16 v36, v10

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_38

    .line 642
    move/from16 v35, v32

    move-object/from16 v36, v13

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v6

    aget-object v36, v36, v37

    invoke-virtual/range {v36 .. v36}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v32, v35

    .line 644
    :cond_38
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v35

    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v32

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 646
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    const/16 v37, 0x1

    add-int/lit8 v36, v36, 0x1

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v35

    move-object/from16 v36, v27

    move-object/from16 v0, v36

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-object/from16 v36, v0

    move/from16 v37, v32

    move/from16 v38, v34

    add-float v37, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 648
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v35

    move-object/from16 v36, v4

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 649
    move-object/from16 v35, v13

    move-object/from16 v0, v35

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    move/from16 v36, v6

    const/16 v37, 0x1

    add-int/lit8 v36, v36, 0x1

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v35

    move-object/from16 v36, v4

    invoke-virtual/range {v35 .. v36}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 650
    move/from16 v35, v32

    move/from16 v36, v34

    move-object/from16 v37, v13

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v37, v0

    move/from16 v38, v6

    const/16 v39, 0x1

    add-int/lit8 v38, v38, 0x1

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    add-float v36, v36, v37

    add-float v35, v35, v36

    move/from16 v32, v35

    .line 651
    move-object/from16 v35, v14

    if-eqz v35, :cond_39

    move-object/from16 v35, v14

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v35

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_39

    .line 652
    move/from16 v35, v32

    move/from16 v36, v33

    add-float v35, v35, v36

    move/from16 v32, v35

    .line 655
    .end local v34    # "dimension":F
    :cond_39
    move-object/from16 v35, v14

    move-object/from16 v13, v35

    goto/16 :goto_14

    .line 603
    .end local v33    # "gap":F
    :cond_3a
    move/from16 v35, v22

    if-eqz v35, :cond_31

    .line 604
    move/from16 v35, v32

    move/from16 v36, v29

    sub-float v35, v35, v36

    move/from16 v32, v35

    goto/16 :goto_12

    .line 612
    .restart local v33    # "gap":F
    :cond_3b
    move/from16 v35, v32

    const/high16 v36, 0x40000000    # 2.0f

    div-float v35, v35, v36

    move/from16 v33, v35

    goto/16 :goto_13

    .line 639
    .restart local v34    # "dimension":F
    :cond_3c
    move-object/from16 v35, v13

    invoke-virtual/range {v35 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v34, v35

    goto/16 :goto_15

    .line 659
    .end local v33    # "gap":F
    .end local v34    # "dimension":F
    :cond_3d
    const/16 v35, 0x1

    move/from16 v3, v35

    goto/16 :goto_7
.end method

.method static checkMatchParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 9

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    move-object v1, p1

    .local v1, "system":Landroidx/constraintlayout/solver/LinearSystem;
    move-object v2, p2

    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v6, :cond_0

    move-object v5, v2

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_0

    .line 60
    move-object v5, v2

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    move v3, v5

    .line 61
    .local v3, "left":I
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v5

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v5, v6

    move v4, v5

    .line 68
    .local v4, "right":I
    move-object v5, v2

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v1

    move-object v7, v2

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 69
    move-object v5, v2

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v1

    move-object v7, v2

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 70
    move-object v5, v1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 71
    move-object v5, v1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 72
    move-object v5, v2

    const/4 v6, 0x2

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 74
    move-object v5, v2

    move v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 76
    .end local v3    # "left":I
    .end local v4    # "right":I
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v6, :cond_3

    move-object v5, v2

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_3

    .line 79
    move-object v5, v2

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    move v3, v5

    .line 80
    .local v3, "top":I
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v5

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v5, v6

    move v4, v5

    .line 87
    .local v4, "bottom":I
    move-object v5, v2

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v1

    move-object v7, v2

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 88
    move-object v5, v2

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v1

    move-object v7, v2

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 89
    move-object v5, v1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 90
    move-object v5, v1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 91
    move-object v5, v2

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v5, :cond_1

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    .line 92
    :cond_1
    move-object v5, v2

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v6, v1

    move-object v7, v2

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 93
    move-object v5, v1

    move-object v6, v2

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move v7, v3

    move-object v8, v2

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 95
    :cond_2
    move-object v5, v2

    const/4 v6, 0x2

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 97
    move-object v5, v2

    move v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    .line 99
    .end local v3    # "top":I
    .end local v4    # "bottom":I
    :cond_3
    return-void
.end method

.method private static optimizableMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "constraintWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "orientation":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v3, v1

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v3, :cond_0

    .line 112
    const/4 v2, 0x0

    move v0, v2

    .line 137
    .end local v0    # "constraintWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    return v0

    .line 114
    .restart local v0    # "constraintWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 115
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_2

    .line 117
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 115
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 120
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 122
    :cond_3
    move v2, v1

    if-nez v2, :cond_6

    .line 123
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v2, :cond_4

    .line 124
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 126
    :cond_4
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v2, :cond_5

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v2, :cond_9

    .line 127
    :cond_5
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 130
    :cond_6
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v2, :cond_7

    .line 131
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 133
    :cond_7
    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v2, :cond_8

    move-object v2, v0

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v2, :cond_9

    .line 134
    :cond_8
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 137
    :cond_9
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method static setOptimizedWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;II)V
    .locals 8

    .prologue
    .line 671
    move-object v0, p0

    .local v0, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v1, p1

    .local v1, "orientation":I
    move v2, p2

    .local v2, "resolvedOffset":I
    move v5, v1

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    move v3, v5

    .line 672
    .local v3, "startOffset":I
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v4, v5

    .line 674
    .local v4, "endOffset":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    move-object v6, v0

    .line 675
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 676
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    move v6, v2

    int-to-float v6, v6

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 678
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    .line 680
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v6, v4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v7, v3

    aget-object v6, v6, v7

    .line 681
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iput-object v6, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 682
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v6, v4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    move-object v6, v0

    move v7, v1

    .line 683
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 684
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move v6, v4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    const/4 v6, 0x1

    iput v6, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    .line 685
    return-void
.end method
