.class public Lcom/google/android/material/animation/MotionSpec;
.super Ljava/lang/Object;
.source "MotionSpec.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionSpec"


# instance fields
.field private final timings:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/material/animation/MotionTiming;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MotionSpec;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 67
    move-object v1, v0

    new-instance v2, Landroidx/collection/SimpleArrayMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method private static addTimingFromAnimator(Lcom/google/android/material/animation/MotionSpec;Landroid/animation/Animator;)V
    .locals 8

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "spec":Lcom/google/android/material/animation/MotionSpec;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v3, v1

    instance-of v3, v3, Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    .line 150
    move-object v3, v1

    check-cast v3, Landroid/animation/ObjectAnimator;

    move-object v2, v3

    .line 151
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-static {v5}, Lcom/google/android/material/animation/MotionTiming;->createFromAnimator(Landroid/animation/ValueAnimator;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/animation/MotionSpec;->setTiming(Ljava/lang/String;Lcom/google/android/material/animation/MotionTiming;)V

    .line 152
    .line 155
    return-void

    .line 153
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Animator must be an ObjectAnimator: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;
    .locals 7
    .param p2    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "attributes":Landroid/content/res/TypedArray;
    move v2, p2

    .local v2, "index":I
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v3, v4

    .line 112
    .local v3, "resourceId":I
    move v4, v3

    if-eqz v4, :cond_0

    .line 113
    move-object v4, v0

    move v5, v3

    invoke-static {v4, v5}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v4

    move-object v0, v4

    .line 116
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "resourceId":I
    :goto_0
    return-object v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public static createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "id":I
    move-object v4, v0

    move v5, v1

    :try_start_0
    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    move-object v2, v4

    .line 124
    .local v2, "animator":Landroid/animation/Animator;
    move-object v4, v2

    instance-of v4, v4, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    .line 125
    move-object v4, v2

    check-cast v4, Landroid/animation/AnimatorSet;

    move-object v3, v4

    .line 126
    .local v3, "set":Landroid/animation/AnimatorSet;
    move-object v4, v3

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/material/animation/MotionSpec;->createSpecFromAnimators(Ljava/util/List;)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v4

    move-object v0, v4

    .line 136
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :goto_0
    return-object v0

    .line 127
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "animator":Landroid/animation/Animator;
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 128
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 129
    .local v3, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 130
    move-object v4, v3

    invoke-static {v4}, Lcom/google/android/material/animation/MotionSpec;->createSpecFromAnimators(Ljava/util/List;)Lcom/google/android/material/animation/MotionSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 132
    .end local v3    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 134
    .end local v2    # "animator":Landroid/animation/Animator;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 135
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MotionSpec"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t load animation resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 136
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method private static createSpecFromAnimators(Ljava/util/List;)Lcom/google/android/material/animation/MotionSpec;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)",
            "Lcom/google/android/material/animation/MotionSpec;"
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v4, Lcom/google/android/material/animation/MotionSpec;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/google/android/material/animation/MotionSpec;-><init>()V

    move-object v1, v4

    .line 142
    .local v1, "spec":Lcom/google/android/material/animation/MotionSpec;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    .local v3, "count":I
    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    .line 143
    move-object v4, v1

    move-object v5, v0

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-static {v4, v5}, Lcom/google/android/material/animation/MotionSpec;->addTimingFromAnimator(Lcom/google/android/material/animation/MotionSpec;Landroid/animation/Animator;)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MotionSpec;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 160
    const/4 v3, 0x1

    move v0, v3

    .line 168
    .end local v0    # "this":Lcom/google/android/material/animation/MotionSpec;
    :goto_0
    return v0

    .line 162
    .restart local v0    # "this":Lcom/google/android/material/animation/MotionSpec;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 163
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 166
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/google/android/material/animation/MotionSpec;

    move-object v2, v3

    .line 168
    .local v2, "that":Lcom/google/android/material/animation/MotionSpec;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v3, v4}, Landroidx/collection/SimpleArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MotionSpec;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->hasTiming(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 82
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/animation/MotionTiming;

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/animation/MotionSpec;
    return-object v0
.end method

.method public getTotalDuration()J
    .locals 12

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MotionSpec;
    const-wide/16 v6, 0x0

    move-wide v1, v6

    .line 96
    .local v1, "duration":J
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v6}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v6

    move v4, v6

    .local v4, "count":I
    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 97
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/animation/MotionTiming;

    move-object v5, v6

    .line 98
    .local v5, "timing":Lcom/google/android/material/animation/MotionTiming;
    move-wide v6, v1

    move-object v8, v5

    invoke-virtual {v8}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v8

    move-object v10, v5

    invoke-virtual {v10}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-wide v1, v6

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v5    # "timing":Lcom/google/android/material/animation/MotionTiming;
    :cond_0
    move-wide v6, v1

    move-wide v0, v6

    .end local v0    # "this":Lcom/google/android/material/animation/MotionSpec;
    return-wide v0
.end method

.method public hasTiming(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MotionSpec;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/google/android/material/animation/MotionSpec;
    return v0

    .restart local v0    # "this":Lcom/google/android/material/animation/MotionSpec;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MotionSpec;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/animation/MotionSpec;
    return v0
.end method

.method public setTiming(Ljava/lang/String;Lcom/google/android/material/animation/MotionTiming;)V
    .locals 6
    .param p2    # Lcom/google/android/material/animation/MotionTiming;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MotionSpec;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "timing":Lcom/google/android/material/animation/MotionTiming;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/MotionSpec;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 179
    .local v1, "out":Ljava/lang/StringBuilder;
    move-object v2, v1

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 180
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 181
    move-object v2, v1

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 182
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 183
    move-object v2, v1

    const-string/jumbo v3, " timings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 184
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 185
    move-object v2, v1

    const-string/jumbo v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 186
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/android/material/animation/MotionSpec;
    return-object v0
.end method
