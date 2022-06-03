.class public Lcom/google/android/material/shape/EdgeTreatment;
.super Ljava/lang/Object;
.source "EdgeTreatment.java"


# annotations
.annotation build Lcom/google/android/material/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/EdgeTreatment;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEdgePath(FFLcom/google/android/material/shape/ShapePath;)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/shape/EdgeTreatment;
    move v1, p1

    .local v1, "length":F
    move v2, p2

    .local v2, "interpolation":F
    move-object v3, p3

    .local v3, "shapePath":Lcom/google/android/material/shape/ShapePath;
    move-object v4, v3

    move v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 44
    return-void
.end method
