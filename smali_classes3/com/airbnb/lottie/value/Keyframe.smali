.class public Lcom/airbnb/lottie/value/Keyframe;
.super Ljava/lang/Object;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UNSET_FLOAT:F = -3987645.8f

.field private static final UNSET_INT:I = 0x2ec8fb09


# instance fields
.field private final composition:Lcom/airbnb/lottie/LottieComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public endFrame:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private endProgress:F

.field public endValue:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private endValueFloat:F

.field private endValueInt:I

.field public final interpolator:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public pathCp1:Landroid/graphics/PointF;

.field public pathCp2:Landroid/graphics/PointF;

.field public final startFrame:F

.field private startProgress:F

.field public final startValue:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private startValueFloat:F

.field private startValueInt:I


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 9
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v2, p2

    .local v2, "startValue":Ljava/lang/Object;, "TT;"
    move-object v3, p3

    .local v3, "endValue":Ljava/lang/Object;, "TT;"
    move-object v4, p4

    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    move v5, p5

    .local v5, "startFrame":F
    move-object v6, p6

    .local v6, "endFrame":Ljava/lang/Float;
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 21
    move-object v7, v0

    const v8, -0x358c9d09

    iput v8, v7, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    .line 22
    move-object v7, v0

    const v8, -0x358c9d09

    iput v8, v7, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    .line 24
    move-object v7, v0

    const v8, 0x2ec8fb09

    iput v8, v7, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    .line 25
    move-object v7, v0

    const v8, 0x2ec8fb09

    iput v8, v7, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    .line 27
    move-object v7, v0

    const/4 v8, 0x1

    iput v8, v7, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    .line 28
    move-object v7, v0

    const/4 v8, 0x1

    iput v8, v7, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    .line 32
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 33
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 39
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 40
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 41
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 42
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    .line 43
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    .line 44
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 21
    move-object v2, v0

    const v3, -0x358c9d09

    iput v3, v2, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    .line 22
    move-object v2, v0

    const v3, -0x358c9d09

    iput v3, v2, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    .line 24
    move-object v2, v0

    const v3, 0x2ec8fb09

    iput v3, v2, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    .line 25
    move-object v2, v0

    const v3, 0x2ec8fb09

    iput v3, v2, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    .line 27
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    .line 28
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    .line 32
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 33
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 51
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 52
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 53
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 54
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    .line 55
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    .line 56
    move-object v2, v0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 57
    return-void
.end method


# virtual methods
.method public containsProgress(F)Z
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    move v1, p1

    .local v1, "progress":F
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEndProgress()F
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v4, :cond_0

    .line 71
    const/high16 v4, 0x3f800000    # 1.0f

    move v0, v4

    .line 83
    .end local v0    # "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    :goto_0
    return v0

    .line 73
    .restart local v0    # "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    const/4 v5, 0x1

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 74
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    if-nez v4, :cond_2

    .line 75
    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    .line 83
    :cond_1
    :goto_1
    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    move v0, v4

    goto :goto_0

    .line 77
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v4

    move v1, v4

    .line 78
    .local v1, "startProgress":F
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object v5, v0

    iget v5, v5, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    sub-float/2addr v4, v5

    move v2, v4

    .line 79
    .local v2, "durationFrames":F
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v5

    div-float/2addr v4, v5

    move v3, v4

    .line 80
    .local v3, "durationProgress":F
    move-object v4, v0

    move v5, v1

    move v6, v3

    add-float/2addr v5, v6

    iput v5, v4, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    goto :goto_1
.end method

.method public getEndValueFloat()F
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    const v2, -0x358c9d09

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 109
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    .line 111
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    return v0
.end method

.method public getEndValueInt()I
    .locals 3

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    const v2, 0x2ec8fb09

    if-ne v1, v2, :cond_0

    .line 129
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    .line 131
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    return v0
.end method

.method public getStartProgress()F
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    .line 61
    const/4 v1, 0x0

    move v0, v1

    .line 66
    .end local v0    # "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    :goto_0
    return v0

    .line 63
    .restart local v0    # "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 64
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v3

    sub-float/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v3

    div-float/2addr v2, v3

    iput v2, v1, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    .line 66
    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    move v0, v1

    goto :goto_0
.end method

.method public getStartValueFloat()F
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    const v2, -0x358c9d09

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 99
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    .line 101
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    return v0
.end method

.method public getStartValueInt()I
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    const v2, 0x2ec8fb09

    if-ne v1, v2, :cond_0

    .line 119
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    .line 121
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    return v0
.end method

.method public isStatic()Z
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Keyframe{startValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", endValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", startFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", endFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", interpolator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/value/Keyframe;, "Lcom/airbnb/lottie/value/Keyframe<TT;>;"
    return-object v0
.end method
