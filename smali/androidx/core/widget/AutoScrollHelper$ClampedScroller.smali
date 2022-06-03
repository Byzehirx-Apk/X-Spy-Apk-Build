.class Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClampedScroller"
.end annotation


# instance fields
.field private mDeltaTime:J

.field private mDeltaX:I

.field private mDeltaY:I

.field private mEffectiveRampDown:I

.field private mRampDownDuration:I

.field private mRampUpDuration:I

.field private mStartTime:J

.field private mStopTime:J

.field private mStopValue:F

.field private mTargetVelocityX:F

.field private mTargetVelocityY:F


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 757
    move-object v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, v1, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    .line 758
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 759
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 760
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 761
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 762
    return-void
.end method

.method private getValueAt(J)F
    .locals 11

    .prologue
    .line 800
    move-object v1, p0

    .local v1, "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    move-wide v2, p1

    .local v2, "currentTime":J
    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 801
    const/4 v6, 0x0

    move v1, v6

    .line 808
    .end local v1    # "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    :goto_0
    return v1

    .line 802
    .restart local v1    # "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    :cond_0
    move-object v6, v1

    iget-wide v6, v6, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 803
    :cond_1
    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long/2addr v6, v8

    move-wide v4, v6

    .line 804
    .local v4, "elapsedSinceStart":J
    const/high16 v6, 0x3f000000    # 0.5f

    move-wide v7, v4

    long-to-float v7, v7

    move-object v8, v1

    iget v8, v8, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v9}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v7

    mul-float/2addr v6, v7

    move v1, v6

    goto :goto_0

    .line 806
    .end local v4    # "elapsedSinceStart":J
    :cond_2
    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    sub-long/2addr v6, v8

    move-wide v4, v6

    .line 807
    .local v4, "elapsedSinceEnd":J
    const/high16 v6, 0x3f800000    # 1.0f

    move-object v7, v1

    iget v7, v7, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    sub-float/2addr v6, v7

    move-object v7, v1

    iget v7, v7, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    move-wide v8, v4

    long-to-float v8, v8

    move-object v9, v1

    iget v9, v9, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 808
    invoke-static {v8, v9, v10}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move v1, v6

    goto :goto_0
.end method

.method private interpolateValue(F)F
    .locals 5

    .prologue
    .line 820
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    move v1, p1

    .local v1, "value":F
    const/high16 v2, -0x3f800000    # -4.0f

    move v3, v1

    mul-float/2addr v2, v3

    move v3, v1

    mul-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    move v4, v1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    return v0
.end method


# virtual methods
.method public computeScrollDelta()V
    .locals 13

    .prologue
    .line 831
    move-object v1, p0

    .local v1, "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    move-object v8, v1

    iget-wide v8, v8, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 832
    new-instance v8, Ljava/lang/RuntimeException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "Cannot compute scroll delta before calling start()"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 835
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    move-wide v2, v8

    .line 836
    .local v2, "currentTime":J
    move-object v8, v1

    move-wide v9, v2

    invoke-direct {v8, v9, v10}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v8

    move v4, v8

    .line 837
    .local v4, "value":F
    move-object v8, v1

    move v9, v4

    invoke-direct {v8, v9}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->interpolateValue(F)F

    move-result v8

    move v5, v8

    .line 838
    .local v5, "scale":F
    move-wide v8, v2

    move-object v10, v1

    iget-wide v10, v10, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    sub-long/2addr v8, v10

    move-wide v6, v8

    .line 840
    .local v6, "elapsedSinceDelta":J
    move-object v8, v1

    move-wide v9, v2

    iput-wide v9, v8, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 841
    move-object v8, v1

    move-wide v9, v6

    long-to-float v9, v9

    move v10, v5

    mul-float/2addr v9, v10

    move-object v10, v1

    iget v10, v10, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 842
    move-object v8, v1

    move-wide v9, v6

    long-to-float v9, v9

    move v10, v5

    mul-float/2addr v9, v10

    move-object v10, v1

    iget v10, v10, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 843
    return-void
.end method

.method public getDeltaX()I
    .locals 2

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    move-object v1, v0

    iget v1, v1, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    return v0
.end method

.method public getDeltaY()I
    .locals 2

    .prologue
    .line 877
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    move-object v1, v0

    iget v1, v1, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    return v0
.end method

.method public getHorizontalDirection()I
    .locals 3

    .prologue
    .line 857
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    move-object v1, v0

    iget v1, v1, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    move-object v2, v0

    iget v2, v2, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    return v0
.end method

.method public getVerticalDirection()I
    .locals 3

    .prologue
    .line 861
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    move-object v1, v0

    iget v1, v1, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    move-object v2, v0

    iget v2, v2, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    return v0
.end method

.method public isFinished()Z
    .locals 8

    .prologue
    .line 795
    move-object v1, p0

    .local v1, "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    move-object v2, v1

    iget-wide v2, v2, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 796
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    move-object v4, v1

    iget-wide v4, v4, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    move-object v6, v1

    iget v6, v6, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    return v1

    .restart local v1    # "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public requestStop()V
    .locals 8

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    move-wide v1, v3

    .line 789
    .local v1, "currentTime":J
    move-object v3, v0

    move-wide v4, v1

    move-object v6, v0

    iget-wide v6, v6, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    invoke-static {v4, v5, v6}, Landroidx/core/widget/AutoScrollHelper;->constrain(III)I

    move-result v4

    iput v4, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    .line 790
    move-object v3, v0

    move-object v4, v0

    move-wide v5, v1

    invoke-direct {v4, v5, v6}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v4

    iput v4, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 791
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 792
    return-void
.end method

.method public setRampDownDuration(I)V
    .locals 4

    .prologue
    .line 769
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    move v1, p1

    .local v1, "durationMillis":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    .line 770
    return-void
.end method

.method public setRampUpDuration(I)V
    .locals 4

    .prologue
    .line 765
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    move v1, p1

    .local v1, "durationMillis":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    .line 766
    return-void
.end method

.method public setTargetVelocity(FF)V
    .locals 5

    .prologue
    .line 852
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    .line 853
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    .line 854
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 776
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
    move-object v1, v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    .line 777
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 778
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    iput-wide v2, v1, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 779
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 780
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 781
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 782
    return-void
.end method
