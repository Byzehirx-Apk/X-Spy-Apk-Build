.class public Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
.super Lcom/airbnb/lottie/value/Keyframe;
.source "PathKeyframe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/Keyframe",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private path:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final pointKeyFrame:Lcom/airbnb/lottie/value/Keyframe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/value/Keyframe;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v2, p2

    .local v2, "keyframe":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<Landroid/graphics/PointF;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    iget-object v5, v5, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    move-object v6, v2

    iget-object v6, v6, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    move-object v7, v2

    iget-object v7, v7, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    move-object v8, v2

    iget v8, v8, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    move-object v9, v2

    iget-object v9, v9, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 19
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->pointKeyFrame:Lcom/airbnb/lottie/value/Keyframe;

    .line 20
    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->createPath()V

    .line 21
    return-void
.end method


# virtual methods
.method public createPath()V
    .locals 7

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->startValue:Ljava/lang/Object;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->startValue:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 27
    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .line 29
    .local v1, "equals":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v2, v1

    if-nez v2, :cond_0

    .line 30
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->startValue:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/PointF;

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/PointF;

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->pointKeyFrame:Lcom/airbnb/lottie/value/Keyframe;

    iget-object v5, v5, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->pointKeyFrame:Lcom/airbnb/lottie/value/Keyframe;

    iget-object v6, v6, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    invoke-static {v3, v4, v5, v6}, Lcom/airbnb/lottie/utils/Utils;->createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->path:Landroid/graphics/Path;

    .line 32
    :cond_0
    return-void

    .line 27
    .end local v1    # "equals":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getPath()Landroid/graphics/Path;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->path:Landroid/graphics/Path;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
    return-object v0
.end method
