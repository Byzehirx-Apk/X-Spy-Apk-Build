.class public Lcom/airbnb/lottie/utils/LottieValueAnimator;
.super Lcom/airbnb/lottie/utils/BaseLottieAnimator;
.source "LottieValueAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private composition:Lcom/airbnb/lottie/LottieComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private frame:F

.field private lastFrameTimeNs:J

.field private maxFrame:F

.field private minFrame:F

.field private repeatCount:I

.field protected running:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private speed:F

.field private speedReversedForRepeatMode:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;-><init>()V

    .line 19
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 20
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 21
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 22
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 23
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 24
    move-object v1, v0

    const/high16 v2, -0x31000000

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 25
    move-object v1, v0

    const/high16 v2, 0x4f000000

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 27
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 30
    return-void
.end method

.method private getFrameDurationNs()F
    .locals 3

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    .line 120
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    move v0, v1

    .line 122
    .end local v0    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    :cond_0
    const v1, 0x4e6e6b28    # 1.0E9f

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getFrameRate()F

    move-result v2

    div-float/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    move v0, v1

    goto :goto_0
.end method

.method private isReversed()Z
    .locals 3

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private verifyFrame()V
    .locals 9

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    .line 279
    .line 284
    :goto_0
    return-void

    .line 281
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 282
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const-string/jumbo v3, "Frame must be [%f,%f]. It is %f"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget v7, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    move-object v7, v0

    iget v7, v7, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_2
    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyCancel()V

    .line 236
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 237
    return-void
.end method

.method public clearComposition()V
    .locals 3

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 127
    move-object v1, v0

    const/high16 v2, -0x31000000

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 128
    move-object v1, v0

    const/high16 v2, 0x4f000000

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 129
    return-void
.end method

.method public doFrame(J)V
    .locals 15

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-wide/from16 v1, p1

    .local v1, "frameTimeNanos":J
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 81
    move-object v10, v0

    iget-object v10, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v10, :cond_0

    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v10

    if-nez v10, :cond_1

    .line 82
    .line 116
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    move-wide v10, v1

    move-wide v3, v10

    .line 86
    .local v3, "now":J
    move-object v10, v0

    iget-wide v10, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    const-wide/16 v10, 0x0

    :goto_1
    move-wide v5, v10

    .line 87
    .local v5, "timeSinceFrame":J
    move-object v10, v0

    invoke-direct {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrameDurationNs()F

    move-result v10

    move v7, v10

    .line 88
    .local v7, "frameDuration":F
    move-wide v10, v5

    long-to-float v10, v10

    move v11, v7

    div-float/2addr v10, v11

    move v8, v10

    .line 90
    .local v8, "dFrames":F
    move-object v10, v0

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move-object v12, v0

    invoke-direct {v12}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v8

    neg-float v12, v12

    :goto_2
    add-float/2addr v11, v12

    iput v11, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 91
    move-object v10, v0

    iget v10, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v12

    invoke-static {v10, v11, v12}, Lcom/airbnb/lottie/utils/MiscUtils;->contains(FFF)Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x1

    :goto_3
    move v9, v10

    .line 92
    .local v9, "ended":Z
    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v13

    invoke-static {v11, v12, v13}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v11

    iput v11, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 94
    move-object v10, v0

    move-wide v11, v3

    iput-wide v11, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 96
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyUpdate()V

    .line 97
    move v10, v9

    if-eqz v10, :cond_2

    .line 98
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatCount()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    move-object v10, v0

    iget v10, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatCount()I

    move-result v11

    if-lt v10, v11, :cond_7

    .line 99
    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_6

    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v11

    :goto_4
    iput v11, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 100
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 101
    move-object v10, v0

    move-object v11, v0

    invoke-direct {v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyEnd(Z)V

    .line 115
    :cond_2
    :goto_5
    move-object v10, v0

    invoke-direct {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->verifyFrame()V

    .line 116
    goto/16 :goto_0

    .line 86
    .end local v5    # "timeSinceFrame":J
    .end local v7    # "frameDuration":F
    .end local v8    # "dFrames":F
    .end local v9    # "ended":Z
    :cond_3
    move-wide v10, v3

    move-object v12, v0

    iget-wide v12, v12, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    sub-long/2addr v10, v12

    goto/16 :goto_1

    .line 90
    .restart local v5    # "timeSinceFrame":J
    .restart local v7    # "frameDuration":F
    .restart local v8    # "dFrames":F
    :cond_4
    move v12, v8

    goto :goto_2

    .line 91
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 99
    .restart local v9    # "ended":Z
    :cond_6
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v11

    goto :goto_4

    .line 103
    :cond_7
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyRepeat()V

    .line 104
    move-object v10, v0

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 105
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatMode()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    .line 106
    move-object v10, v0

    move-object v11, v0

    iget-boolean v11, v11, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    if-nez v11, :cond_8

    const/4 v11, 0x1

    :goto_6
    iput-boolean v11, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 107
    move-object v10, v0

    invoke-virtual {v10}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    .line 111
    :goto_7
    move-object v10, v0

    move-wide v11, v3

    iput-wide v11, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    goto :goto_5

    .line 106
    :cond_8
    const/4 v11, 0x0

    goto :goto_6

    .line 109
    :cond_9
    move-object v10, v0

    move-object v11, v0

    invoke-direct {v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v11

    if-eqz v11, :cond_a

    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v11

    :goto_8
    iput v11, v10, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    goto :goto_7

    :cond_a
    move-object v11, v0

    invoke-virtual {v11}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v11

    goto :goto_8
.end method

.method public endAnimation()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 213
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyEnd(Z)V

    .line 214
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 4
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    .line 58
    const/4 v1, 0x0

    move v0, v1

    .line 63
    .end local v0    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    :goto_0
    return v0

    .line 60
    .restart local v0    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    sub-float/2addr v1, v2

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    move v0, v1

    goto :goto_0

    .line 63
    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v2

    sub-float/2addr v1, v2

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    move v0, v1

    goto :goto_0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    return-object v0
.end method

.method public getAnimatedValueAbsolute()F
    .locals 4
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    .line 46
    const/4 v1, 0x0

    move v0, v1

    .line 48
    .end local v0    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v2

    sub-float/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    move v0, v1

    goto :goto_0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v2, v1

    iget-object v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    return-wide v1

    .restart local v1    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result v2

    float-to-long v2, v2

    goto :goto_0
.end method

.method public getFrame()F
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    return v0
.end method

.method public getMaxFrame()F
    .locals 3

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    .line 252
    const/4 v1, 0x0

    move v0, v1

    .line 254
    .end local v0    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    const/high16 v2, 0x4f000000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    goto :goto_1
.end method

.method public getMinFrame()F
    .locals 3

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    .line 245
    const/4 v1, 0x0

    move v0, v1

    .line 247
    .end local v0    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    const/high16 v2, -0x31000000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    goto :goto_1
.end method

.method public getSpeed()F
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    return v0
.end method

.method public pauseAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 219
    return-void
.end method

.method public playAnimation()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 203
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyStart(Z)V

    .line 204
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v2

    :goto_0
    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(I)V

    .line 205
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 206
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 207
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 208
    return-void

    .line 204
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v2

    goto :goto_0
.end method

.method protected postFrameCallback()V
    .locals 3

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback(Z)V

    .line 260
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 262
    :cond_0
    return-void
.end method

.method protected removeFrameCallback()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback(Z)V

    .line 267
    return-void
.end method

.method protected removeFrameCallback(Z)V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move v1, p1

    .local v1, "stopRunning":Z
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 272
    move v2, v1

    if-eqz v2, :cond_0

    .line 273
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 275
    :cond_0
    return-void
.end method

.method public resumeAnimation()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 224
    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 225
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 226
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 227
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v2

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 229
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v2

    iput v2, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    goto :goto_0
.end method

.method public reverseAnimationSpeed()V
    .locals 3

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setSpeed(F)V

    .line 179
    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 8

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move-object v1, p1

    .local v1, "composition":Lcom/airbnb/lottie/LottieComposition;
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 134
    .local v2, "keepMinAndMaxFrames":Z
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 136
    move v4, v2

    if-eqz v4, :cond_1

    .line 137
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    move-object v6, v1

    .line 138
    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    move-object v7, v1

    .line 139
    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    .line 137
    invoke-virtual {v4, v5, v6}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 144
    :goto_1
    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move v3, v4

    .line 145
    .local v3, "frame":F
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 146
    move-object v4, v0

    move v5, v3

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(I)V

    .line 147
    return-void

    .line 133
    .end local v2    # "keepMinAndMaxFrames":Z
    .end local v3    # "frame":F
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 142
    .restart local v2    # "keepMinAndMaxFrames":Z
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    goto :goto_1
.end method

.method public setFrame(I)V
    .locals 7

    .prologue
    .line 150
    move-object v1, p0

    .local v1, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move v2, p1

    .local v2, "frame":I
    move-object v3, v1

    iget v3, v3, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move v4, v2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 151
    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    move-object v3, v1

    move v4, v2

    int-to-float v4, v4

    move-object v5, v1

    invoke-virtual {v5}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, v3, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 154
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 155
    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyUpdate()V

    .line 156
    goto :goto_0
.end method

.method public setMaxFrame(F)V
    .locals 5

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move v1, p1

    .local v1, "maxFrame":F
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 164
    return-void
.end method

.method public setMinAndMaxFrames(FF)V
    .locals 13

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move v1, p1

    .local v1, "minFrame":F
    move v2, p2

    .local v2, "maxFrame":F
    move v5, v1

    move v6, v2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 168
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string/jumbo v7, "minFrame (%s) must be <= maxFrame (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v1

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move v11, v2

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 170
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v5, :cond_1

    const v5, -0x800001

    :goto_0
    move v3, v5

    .line 171
    .local v3, "compositionMinFrame":F
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v5, :cond_2

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    :goto_1
    move v4, v5

    .line 172
    .local v4, "compositionMaxFrame":F
    move-object v5, v0

    move v6, v1

    move v7, v3

    move v8, v4

    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v6

    iput v6, v5, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 173
    move-object v5, v0

    move v6, v2

    move v7, v3

    move v8, v4

    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v6

    iput v6, v5, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 174
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    move v7, v1

    move v8, v2

    invoke-static {v6, v7, v8}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(I)V

    .line 175
    return-void

    .line 170
    .end local v3    # "compositionMinFrame":F
    .end local v4    # "compositionMaxFrame":F
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result v5

    goto :goto_0

    .line 171
    .restart local v3    # "compositionMinFrame":F
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v5

    goto :goto_1
.end method

.method public setMinFrame(I)V
    .locals 5

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move v1, p1

    .local v1, "minFrame":I
    move-object v2, v0

    move v3, v1

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 160
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 4

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->setRepeatMode(I)V

    .line 194
    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    if-eqz v2, :cond_0

    .line 195
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 196
    move-object v2, v0

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    .line 198
    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 4

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/LottieValueAnimator;
    move v1, p1

    .local v1, "speed":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 183
    return-void
.end method
