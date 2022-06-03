.class public Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(F)F
    .locals 5

    .prologue
    .line 33
    move v0, p0

    move v2, v0

    const/high16 v3, 0x43b40000    # 360.0f

    rem-float/2addr v2, v3

    move v4, v2

    move v2, v4

    move v3, v4

    .line 34
    move v1, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move v2, v0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 35
    :cond_0
    move v2, v1

    move v0, v2

    .line 37
    :goto_0
    return v0

    :cond_1
    move v2, v1

    const/high16 v3, 0x43b40000    # 360.0f

    add-float/2addr v2, v3

    move v0, v2

    goto :goto_0
.end method

.method public static normalizeAzimuth(F)F
    .locals 2

    .prologue
    .line 48
    move v0, p0

    move v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(F)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static normalizePitch(F)F
    .locals 3

    .prologue
    .line 58
    move v0, p0

    move v1, v0

    const/high16 v2, 0x43340000    # 180.0f

    add-float/2addr v1, v2

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(F)F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    sub-float/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public static normalizeRoll(F)F
    .locals 4

    .prologue
    .line 82
    move v0, p0

    move v1, v0

    const/high16 v2, 0x43340000    # 180.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 83
    const/high16 v2, -0x3ccc0000    # -180.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v3, v1

    move v1, v3

    move v2, v3

    .line 86
    move v0, v2

    const/high16 v2, -0x3d4c0000    # -90.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    move v1, v0

    const/high16 v2, 0x42b40000    # 90.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 87
    move v1, v0

    move v0, v1

    .line 97
    :goto_0
    return v0

    .line 91
    :cond_0
    const/high16 v1, 0x43340000    # 180.0f

    move v2, v0

    sub-float/2addr v1, v2

    move v3, v1

    move v1, v3

    move v2, v3

    .line 94
    move v0, v2

    const/high16 v2, 0x43870000    # 270.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 95
    move v1, v0

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v1, v2

    move v0, v1

    .line 97
    :cond_1
    move v1, v0

    move v0, v1

    goto :goto_0
.end method
