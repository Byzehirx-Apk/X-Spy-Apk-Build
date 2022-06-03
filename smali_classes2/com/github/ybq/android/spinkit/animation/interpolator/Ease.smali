.class public Lcom/github/ybq/android/spinkit/animation/interpolator/Ease;
.super Ljava/lang/Object;
.source "Ease.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/interpolator/Ease;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inOut()Landroid/view/animation/Interpolator;
    .locals 4

    .prologue
    .line 10
    const v0, 0x3ed70a3d    # 0.42f

    const/4 v1, 0x0

    const v2, 0x3f147ae1    # 0.58f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method
