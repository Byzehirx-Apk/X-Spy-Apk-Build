.class public Lcom/google/android/material/animation/Positioning;
.super Ljava/lang/Object;
.source "Positioning.java"


# instance fields
.field public final gravity:I

.field public final xAdjustment:F

.field public final yAdjustment:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/Positioning;
    move v1, p1

    .local v1, "gravity":I
    move v2, p2

    .local v2, "xAdjustment":F
    move v3, p3

    .local v3, "yAdjustment":F
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/google/android/material/animation/Positioning;->gravity:I

    .line 36
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/google/android/material/animation/Positioning;->xAdjustment:F

    .line 37
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/google/android/material/animation/Positioning;->yAdjustment:F

    .line 38
    return-void
.end method
