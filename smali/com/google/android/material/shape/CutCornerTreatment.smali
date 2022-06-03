.class public Lcom/google/android/material/shape/CutCornerTreatment;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "CutCornerTreatment.java"


# annotations
.annotation build Lcom/google/android/material/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field private final size:F


# direct methods
.method public constructor <init>(F)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/CutCornerTreatment;
    move v1, p1

    .local v1, "size":F
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    .line 38
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    .line 39
    return-void
.end method


# virtual methods
.method public getCornerPath(FFLcom/google/android/material/shape/ShapePath;)V
    .locals 10

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/CutCornerTreatment;
    move v1, p1

    .local v1, "angle":F
    move v2, p2

    .local v2, "interpolation":F
    move-object v3, p3

    .local v3, "shapePath":Lcom/google/android/material/shape/ShapePath;
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    move v7, v2

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    .line 44
    move-object v4, v3

    move v5, v1

    float-to-double v5, v5

    .line 45
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    move-object v7, v0

    iget v7, v7, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    move v7, v2

    float-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-float v5, v5

    move v6, v1

    float-to-double v6, v6

    .line 46
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/shape/CutCornerTreatment;->size:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    move v8, v2

    float-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    .line 44
    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 47
    return-void
.end method
