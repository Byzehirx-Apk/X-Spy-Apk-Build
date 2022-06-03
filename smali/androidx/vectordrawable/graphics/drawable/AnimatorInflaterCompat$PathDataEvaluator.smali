.class Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathDataEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<[",
        "Landroidx/core/graphics/PathParser$PathDataNode;",
        ">;"
    }
.end annotation


# instance fields
.field private mNodeArray:[Landroidx/core/graphics/PathParser$PathDataNode;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method constructor <init>([Landroidx/core/graphics/PathParser$PathDataNode;)V
    .locals 4

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    move-object v1, p1

    .local v1, "nodeArray":[Landroidx/core/graphics/PathParser$PathDataNode;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 178
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 179
    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    check-cast v6, [Landroidx/core/graphics/PathParser$PathDataNode;

    move-object v7, v3

    check-cast v7, [Landroidx/core/graphics/PathParser$PathDataNode;

    invoke-virtual {v4, v5, v6, v7}, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->evaluate(F[Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    return-object v0
.end method

.method public evaluate(F[Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .locals 10

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    move v1, p1

    .local v1, "fraction":F
    move-object v2, p2

    .local v2, "startPathData":[Landroidx/core/graphics/PathParser$PathDataNode;
    move-object v3, p3

    .local v3, "endPathData":[Landroidx/core/graphics/PathParser$PathDataNode;
    move-object v5, v2

    move-object v6, v3

    invoke-static {v5, v6}, Landroidx/core/graphics/PathParser;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 186
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Can\'t interpolate between two incompatible pathData"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 190
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Landroidx/core/graphics/PathParser$PathDataNode;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Landroidx/core/graphics/PathParser$PathDataNode;

    move-object v6, v2

    invoke-static {v5, v6}, Landroidx/core/graphics/PathParser;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 191
    :cond_1
    move-object v5, v0

    move-object v6, v2

    invoke-static {v6}, Landroidx/core/graphics/PathParser;->deepCopyNodes([Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v6

    iput-object v6, v5, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 194
    :cond_2
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move-object v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_3

    .line 195
    move-object v5, v0

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Landroidx/core/graphics/PathParser$PathDataNode;

    move v6, v4

    aget-object v5, v5, v6

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v7, v3

    move v8, v4

    aget-object v7, v7, v8

    move v8, v1

    invoke-virtual {v5, v6, v7, v8}, Landroidx/core/graphics/PathParser$PathDataNode;->interpolatePathDataNode(Landroidx/core/graphics/PathParser$PathDataNode;Landroidx/core/graphics/PathParser$PathDataNode;F)V

    .line 194
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 199
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Landroidx/core/graphics/PathParser$PathDataNode;

    move-object v0, v5

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    return-object v0
.end method
