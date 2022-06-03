.class public final Lcom/google/android/material/internal/StateListAnimator;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/StateListAnimator$Tuple;
    }
.end annotation


# instance fields
.field private final animationListener:Landroid/animation/Animator$AnimatorListener;

.field private lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

.field runningAnimator:Landroid/animation/ValueAnimator;

.field private final tuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/material/internal/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/StateListAnimator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    .line 39
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    .line 40
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 42
    move-object v1, v0

    new-instance v2, Lcom/google/android/material/internal/StateListAnimator$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/android/material/internal/StateListAnimator$1;-><init>(Lcom/google/android/material/internal/StateListAnimator;)V

    iput-object v2, v1, Lcom/google/android/material/internal/StateListAnimator;->animationListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method private cancel()V
    .locals 3

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/StateListAnimator;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 97
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 98
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 100
    :cond_0
    return-void
.end method

.method private start(Lcom/google/android/material/internal/StateListAnimator$Tuple;)V
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/StateListAnimator;
    move-object v1, p1

    .local v1, "match":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/material/internal/StateListAnimator$Tuple;->animator:Landroid/animation/ValueAnimator;

    iput-object v3, v2, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 92
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 93
    return-void
.end method


# virtual methods
.method public addState([ILandroid/animation/ValueAnimator;)V
    .locals 9

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/StateListAnimator;
    move-object v1, p1

    .local v1, "specs":[I
    move-object v2, p2

    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/google/android/material/internal/StateListAnimator$Tuple;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/internal/StateListAnimator$Tuple;-><init>([ILandroid/animation/ValueAnimator;)V

    move-object v3, v4

    .line 61
    .local v3, "tuple":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/internal/StateListAnimator;->animationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 63
    return-void
.end method

.method public jumpToCurrentState()V
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/StateListAnimator;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 109
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 110
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 112
    :cond_0
    return-void
.end method

.method public setState([I)V
    .locals 8

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/StateListAnimator;
    move-object v1, p1

    .local v1, "state":[I
    const/4 v6, 0x0

    move-object v2, v6

    .line 68
    .local v2, "match":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 69
    .local v3, "count":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 70
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/StateListAnimator;->tuples:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/internal/StateListAnimator$Tuple;

    move-object v5, v6

    .line 71
    .local v5, "tuple":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    move-object v6, v5

    iget-object v6, v6, Lcom/google/android/material/internal/StateListAnimator$Tuple;->specs:[I

    move-object v7, v1

    invoke-static {v6, v7}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    move-object v6, v5

    move-object v2, v6

    .line 76
    .end local v5    # "tuple":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    :cond_0
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    if-ne v6, v7, :cond_2

    .line 77
    .line 88
    :goto_1
    return-void

    .line 69
    .restart local v5    # "tuple":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    .end local v5    # "tuple":Lcom/google/android/material/internal/StateListAnimator$Tuple;
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    if-eqz v6, :cond_3

    .line 80
    move-object v6, v0

    invoke-direct {v6}, Lcom/google/android/material/internal/StateListAnimator;->cancel()V

    .line 83
    :cond_3
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/google/android/material/internal/StateListAnimator;->lastMatch:Lcom/google/android/material/internal/StateListAnimator$Tuple;

    .line 85
    move-object v6, v2

    if-eqz v6, :cond_4

    .line 86
    move-object v6, v0

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/google/android/material/internal/StateListAnimator;->start(Lcom/google/android/material/internal/StateListAnimator$Tuple;)V

    .line 88
    :cond_4
    goto :goto_1
.end method
