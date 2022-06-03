.class public Lcom/google/android/material/shape/CornerTreatment;
.super Ljava/lang/Object;
.source "CornerTreatment.java"


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

    .local v0, "this":Lcom/google/android/material/shape/CornerTreatment;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCornerPath(FFLcom/google/android/material/shape/ShapePath;)V
    .locals 0
    .param p1, "angle"    # F
    .param p2, "interpolation"    # F
    .param p3, "shapePath"    # Lcom/google/android/material/shape/ShapePath;

    .prologue
    .line 40
    return-void
.end method
