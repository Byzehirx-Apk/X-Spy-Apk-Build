.class public Lcom/google/android/material/shape/TriangleEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "TriangleEdgeTreatment.java"


# annotations
.annotation build Lcom/google/android/material/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field private final inside:Z

.field private final size:F


# direct methods
.method public constructor <init>(FZ)V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/TriangleEdgeTreatment;
    move v1, p1

    .local v1, "size":F
    move v2, p2

    .local v2, "inside":Z
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 41
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    .line 42
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/google/android/material/shape/TriangleEdgeTreatment;->inside:Z

    .line 43
    return-void
.end method


# virtual methods
.method public getEdgePath(FFLcom/google/android/material/shape/ShapePath;)V
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/TriangleEdgeTreatment;
    move v1, p1

    .local v1, "length":F
    move v2, p2

    .local v2, "interpolation":F
    move-object v3, p3

    .local v3, "shapePath":Lcom/google/android/material/shape/ShapePath;
    move-object v4, v3

    move v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    move v7, v2

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 48
    move-object v4, v3

    move v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/android/material/shape/TriangleEdgeTreatment;->inside:Z

    if-eqz v6, :cond_0

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    move v7, v2

    mul-float/2addr v6, v7

    :goto_0
    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 49
    move-object v4, v3

    move v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    move v7, v2

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 50
    move-object v4, v3

    move v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 51
    return-void

    .line 48
    :cond_0
    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    neg-float v6, v6

    move v7, v2

    mul-float/2addr v6, v7

    goto :goto_0
.end method
