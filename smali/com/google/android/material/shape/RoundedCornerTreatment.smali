.class public Lcom/google/android/material/shape/RoundedCornerTreatment;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "RoundedCornerTreatment.java"


# annotations
.annotation build Lcom/google/android/material/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field private final radius:F


# direct methods
.method public constructor <init>(F)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/RoundedCornerTreatment;
    move v1, p1

    .local v1, "radius":F
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    .line 34
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/material/shape/RoundedCornerTreatment;->radius:F

    .line 35
    return-void
.end method


# virtual methods
.method public getCornerPath(FFLcom/google/android/material/shape/ShapePath;)V
    .locals 11

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/RoundedCornerTreatment;
    move v1, p1

    .local v1, "angle":F
    move v2, p2

    .local v2, "interpolation":F
    move-object v3, p3

    .local v3, "shapePath":Lcom/google/android/material/shape/ShapePath;
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/google/android/material/shape/RoundedCornerTreatment;->radius:F

    move v7, v2

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    .line 40
    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    move-object v8, v0

    iget v8, v8, Lcom/google/android/material/shape/RoundedCornerTreatment;->radius:F

    mul-float/2addr v7, v8

    move v8, v2

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    move-object v9, v0

    iget v9, v9, Lcom/google/android/material/shape/RoundedCornerTreatment;->radius:F

    mul-float/2addr v8, v9

    move v9, v2

    mul-float/2addr v8, v9

    move v9, v1

    const/high16 v10, 0x43340000    # 180.0f

    add-float/2addr v9, v10

    const/high16 v10, 0x42b40000    # 90.0f

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 41
    return-void
.end method
