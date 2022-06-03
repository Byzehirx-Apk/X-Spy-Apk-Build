.class public final Landroidx/core/view/VelocityTrackerCompat;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/VelocityTrackerCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getXVelocity(Landroid/view/VelocityTracker;I)F
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "tracker":Landroid/view/VelocityTracker;
    move v1, p1

    .local v1, "pointerId":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    move v0, v2

    .end local v0    # "tracker":Landroid/view/VelocityTracker;
    return v0
.end method

.method public static getYVelocity(Landroid/view/VelocityTracker;I)F
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "tracker":Landroid/view/VelocityTracker;
    move v1, p1

    .local v1, "pointerId":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    move v0, v2

    .end local v0    # "tracker":Landroid/view/VelocityTracker;
    return v0
.end method
