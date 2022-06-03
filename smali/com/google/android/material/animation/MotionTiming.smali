.class public Lcom/google/android/material/animation/MotionTiming;
.super Ljava/lang/Object;
.source "MotionTiming.java"


# instance fields
.field private delay:J

.field private duration:J

.field private interpolator:Landroid/animation/TimeInterpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private repeatCount:I

.field private repeatMode:I


# direct methods
.method public constructor <init>(JJ)V
    .locals 9

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MotionTiming;
    move-wide v1, p1

    .local v1, "delay":J
    move-wide v3, p3

    .local v3, "duration":J
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v5, v0

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 31
    move-object v5, v0

    const-wide/16 v6, 0x12c

    iput-wide v6, v5, Lcom/google/android/material/animation/MotionTiming;->duration:J

    .line 33
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    .line 35
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    .line 37
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    .line 40
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 41
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Lcom/google/android/material/animation/MotionTiming;->duration:J

    .line 42
    return-void
.end method

.method public constructor <init>(JJLandroid/animation/TimeInterpolator;)V
    .locals 11
    .param p5    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/animation/MotionTiming;
    move-wide v2, p1

    .local v2, "delay":J
    move-wide v4, p3

    .local v4, "duration":J
    move-object/from16 v6, p5

    .local v6, "interpolator":Landroid/animation/TimeInterpolator;
    move-object v7, v1

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v7, v1

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 31
    move-object v7, v1

    const-wide/16 v8, 0x12c

    iput-wide v8, v7, Lcom/google/android/material/animation/MotionTiming;->duration:J

    .line 33
    move-object v7, v1

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    .line 35
    move-object v7, v1

    const/4 v8, 0x0

    iput v8, v7, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    .line 37
    move-object v7, v1

    const/4 v8, 0x1

    iput v8, v7, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    .line 45
    move-object v7, v1

    move-wide v8, v2

    iput-wide v8, v7, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 46
    move-object v7, v1

    move-wide v8, v4

    iput-wide v8, v7, Lcom/google/android/material/animation/MotionTiming;->duration:J

    .line 47
    move-object v7, v1

    move-object v8, v6

    iput-object v8, v7, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    .line 48
    return-void
.end method

.method static createFromAnimator(Landroid/animation/ValueAnimator;)Lcom/google/android/material/animation/MotionTiming;
    .locals 10

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/google/android/material/animation/MotionTiming;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    .line 83
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getStartDelay()J

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v6

    move-object v8, v0

    invoke-static {v8}, Lcom/google/android/material/animation/MotionTiming;->getInterpolatorCompat(Landroid/animation/ValueAnimator;)Landroid/animation/TimeInterpolator;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJLandroid/animation/TimeInterpolator;)V

    move-object v1, v2

    .line 84
    .local v1, "timing":Lcom/google/android/material/animation/MotionTiming;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v3

    iput v3, v2, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    .line 85
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v3

    iput v3, v2, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    .line 86
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    return-object v0
.end method

.method private static getInterpolatorCompat(Landroid/animation/ValueAnimator;)Landroid/animation/TimeInterpolator;
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "animator":Landroid/animation/ValueAnimator;
    move-object v2, v0

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    move-object v1, v2

    .line 101
    .local v1, "interpolator":Landroid/animation/TimeInterpolator;
    move-object v2, v1

    instance-of v2, v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    if-nez v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 102
    :cond_0
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    move-object v0, v2

    .line 108
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :goto_0
    return-object v0

    .line 103
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Landroid/view/animation/AccelerateInterpolator;

    if-eqz v2, :cond_2

    .line 104
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    move-object v0, v2

    goto :goto_0

    .line 105
    :cond_2
    move-object v2, v1

    instance-of v2, v2, Landroid/view/animation/DecelerateInterpolator;

    if-eqz v2, :cond_3

    .line 106
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    move-object v0, v2

    goto :goto_0

    .line 108
    :cond_3
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/animation/Animator;)V
    .locals 6

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/animation/MotionTiming;
    move-object v2, p1

    .local v2, "animator":Landroid/animation/Animator;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 52
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    .line 53
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 54
    move-object v3, v2

    instance-of v3, v3, Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 55
    move-object v3, v2

    check-cast v3, Landroid/animation/ValueAnimator;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 56
    move-object v3, v2

    check-cast v3, Landroid/animation/ValueAnimator;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 114
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/animation/MotionTiming;
    move-object v2, p1

    .local v2, "o":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    if-ne v4, v5, :cond_0

    .line 115
    const/4 v4, 0x1

    move v1, v4

    .line 135
    .end local v1    # "this":Lcom/google/android/material/animation/MotionTiming;
    :goto_0
    return v1

    .line 117
    .restart local v1    # "this":Lcom/google/android/material/animation/MotionTiming;
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 118
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 121
    :cond_2
    move-object v4, v2

    check-cast v4, Lcom/google/android/material/animation/MotionTiming;

    move-object v3, v4

    .line 123
    .local v3, "that":Lcom/google/android/material/animation/MotionTiming;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 124
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 126
    :cond_3
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 127
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 129
    :cond_4
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    move-result v4

    move-object v5, v3

    invoke-virtual {v5}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 130
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 132
    :cond_5
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    move-result v4

    move-object v5, v3

    invoke-virtual {v5}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 133
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 135
    :cond_6
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    move v1, v4

    goto :goto_0
.end method

.method public getDelay()J
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MotionTiming;
    move-object v1, v0

    iget-wide v1, v1, Lcom/google/android/material/animation/MotionTiming;->delay:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/google/android/material/animation/MotionTiming;
    return-wide v0
.end method

.method public getDuration()J
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MotionTiming;
    move-object v1, v0

    iget-wide v1, v1, Lcom/google/android/material/animation/MotionTiming;->duration:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/google/android/material/animation/MotionTiming;
    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MotionTiming;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/google/android/material/animation/MotionTiming;
    return-object v0

    .restart local v0    # "this":Lcom/google/android/material/animation/MotionTiming;
    :cond_0
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method public getRepeatCount()I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MotionTiming;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/animation/MotionTiming;
    return v0
.end method

.method public getRepeatMode()I
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MotionTiming;
    move-object v1, v0

    iget v1, v1, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/animation/MotionTiming;
    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MotionTiming;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v4

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    move v1, v2

    .line 141
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v5

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    move v1, v2

    .line 142
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 143
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 144
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 145
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/animation/MotionTiming;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 150
    move-object v1, p0

    .local v1, "this":Lcom/google/android/material/animation/MotionTiming;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v3

    .line 151
    .local v2, "out":Ljava/lang/StringBuilder;
    move-object v3, v2

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 152
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 153
    move-object v3, v2

    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 154
    move-object v3, v2

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 155
    move-object v3, v2

    const-string/jumbo v4, " delay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 156
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 157
    move-object v3, v2

    const-string/jumbo v4, " duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 158
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 159
    move-object v3, v2

    const-string/jumbo v4, " interpolator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 161
    move-object v3, v2

    const-string/jumbo v4, " repeatCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 162
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getRepeatCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 163
    move-object v3, v2

    const-string/jumbo v4, " repeatMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 164
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/android/material/animation/MotionTiming;->getRepeatMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 165
    move-object v3, v2

    const-string/jumbo v4, "}\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 166
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Lcom/google/android/material/animation/MotionTiming;
    return-object v1
.end method
