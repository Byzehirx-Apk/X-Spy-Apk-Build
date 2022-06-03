.class public Lcom/google/android/material/animation/AnimatorSetCompat;
.super Ljava/lang/Object;
.source "AnimatorSetCompat.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/animation/AnimatorSetCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    move-object v1, p0

    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    move-object v2, p1

    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const-wide/16 v8, 0x0

    move-wide v3, v8

    .line 38
    .local v3, "totalDuration":J
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v6, v8

    .local v6, "count":I
    :goto_0
    move v8, v5

    move v9, v6

    if-ge v8, v9, :cond_0

    .line 39
    move-object v8, v2

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Animator;

    move-object v7, v8

    .line 40
    .local v7, "animator":Landroid/animation/Animator;
    move-wide v8, v3

    move-object v10, v7

    invoke-virtual {v10}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v10

    move-object v12, v7

    invoke-virtual {v12}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v12

    add-long/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide v3, v8

    .line 38
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 42
    .end local v7    # "animator":Landroid/animation/Animator;
    :cond_0
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    move-object v5, v8

    .line 43
    .local v5, "fix":Landroid/animation/Animator;
    move-object v8, v5

    move-wide v9, v3

    invoke-virtual {v8, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v8

    .line 44
    move-object v8, v2

    const/4 v9, 0x0

    move-object v10, v5

    invoke-interface {v8, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 46
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 47
    return-void

    .line 42
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
