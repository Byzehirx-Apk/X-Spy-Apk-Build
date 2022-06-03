.class public final Landroidx/core/graphics/PathSegment;
.super Ljava/lang/Object;
.source "PathSegment.java"


# instance fields
.field private final mEnd:Landroid/graphics/PointF;

.field private final mEndFraction:F

.field private final mStart:Landroid/graphics/PointF;

.field private final mStartFraction:F


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;FLandroid/graphics/PointF;F)V
    .locals 8
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/PathSegment;
    move-object v1, p1

    .local v1, "start":Landroid/graphics/PointF;
    move v2, p2

    .local v2, "startFraction":F
    move-object v3, p3

    .local v3, "end":Landroid/graphics/PointF;
    move v4, p4

    .local v4, "endFraction":F
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v5, v0

    move-object v6, v1

    const-string/jumbo v7, "start == null"

    invoke-static {v6, v7}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iput-object v6, v5, Landroidx/core/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    .line 39
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/core/graphics/PathSegment;->mStartFraction:F

    .line 40
    move-object v5, v0

    move-object v6, v3

    const-string/jumbo v7, "end == null"

    invoke-static {v6, v7}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iput-object v6, v5, Landroidx/core/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    .line 41
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/core/graphics/PathSegment;->mEndFraction:F

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/PathSegment;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 78
    .end local v0    # "this":Landroidx/core/graphics/PathSegment;
    :goto_0
    return v0

    .line 73
    .restart local v0    # "this":Landroidx/core/graphics/PathSegment;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Landroidx/core/graphics/PathSegment;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 74
    :cond_1
    move-object v3, v1

    check-cast v3, Landroidx/core/graphics/PathSegment;

    move-object v2, v3

    .line 75
    .local v2, "that":Landroidx/core/graphics/PathSegment;
    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/PathSegment;->mStartFraction:F

    move-object v4, v2

    iget v4, v4, Landroidx/core/graphics/PathSegment;->mStartFraction:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/PathSegment;->mEndFraction:F

    move-object v4, v2

    iget v4, v4, Landroidx/core/graphics/PathSegment;->mEndFraction:F

    .line 76
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    move-object v4, v2

    iget-object v4, v4, Landroidx/core/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    .line 77
    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    move-object v4, v2

    iget-object v4, v4, Landroidx/core/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    .line 78
    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getEnd()Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/PathSegment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/graphics/PathSegment;
    return-object v0
.end method

.method public getEndFraction()F
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/PathSegment;
    move-object v1, v0

    iget v1, v1, Landroidx/core/graphics/PathSegment;->mEndFraction:F

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/PathSegment;
    return v0
.end method

.method public getStart()Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/PathSegment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/graphics/PathSegment;
    return-object v0
.end method

.method public getStartFraction()F
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/PathSegment;
    move-object v1, v0

    iget v1, v1, Landroidx/core/graphics/PathSegment;->mStartFraction:F

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/PathSegment;
    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/PathSegment;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    invoke-virtual {v2}, Landroid/graphics/PointF;->hashCode()I

    move-result v2

    move v1, v2

    .line 84
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/PathSegment;->mStartFraction:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/PathSegment;->mStartFraction:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 85
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    invoke-virtual {v3}, Landroid/graphics/PointF;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 86
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/PathSegment;->mEndFraction:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    move-object v3, v0

    iget v3, v3, Landroidx/core/graphics/PathSegment;->mEndFraction:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 87
    move v2, v1

    move v0, v2

    .end local v0    # "this":Landroidx/core/graphics/PathSegment;
    return v0

    .line 84
    .restart local v0    # "this":Landroidx/core/graphics/PathSegment;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 86
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/PathSegment;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PathSegment{start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", startFraction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/PathSegment;->mStartFraction:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", endFraction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/core/graphics/PathSegment;->mEndFraction:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/graphics/PathSegment;
    return-object v0
.end method
