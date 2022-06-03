.class public Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DpToPixels(Landroid/content/Context;F)F
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public static DpToPixels(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 16
    move-object v0, p0

    move v1, p1

    move v2, v1

    int-to-float v2, v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v0, v2

    return v0
.end method

.method public static PixelsToDp(Landroid/content/Context;F)F
    .locals 4

    .prologue
    .line 12
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public static PixelsToDp(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 8
    move-object v0, p0

    move v1, p1

    move v2, v1

    int-to-float v2, v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    move v0, v2

    return v0
.end method

.method public static SpToPixels(Landroid/content/Context;F)F
    .locals 5

    .prologue
    .line 28
    move-object v0, p0

    move v1, p1

    const/4 v2, 0x2

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public static SpToPixels(Landroid/content/Context;I)I
    .locals 5

    .prologue
    .line 24
    move-object v0, p0

    move v1, p1

    const/4 v2, 0x2

    move v3, v1

    int-to-float v3, v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    move v0, v2

    return v0
.end method
