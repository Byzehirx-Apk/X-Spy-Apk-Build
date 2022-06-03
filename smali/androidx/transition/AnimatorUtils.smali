.class Landroidx/transition/AnimatorUtils;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Landroidx/transition/AnimatorUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method static addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 4
    .param p0    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/animation/AnimatorListenerAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "animator":Landroid/animation/Animator;
    move-object v1, p1

    .local v1, "listener":Landroid/animation/AnimatorListenerAdapter;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 32
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 34
    :cond_0
    return-void
.end method

.method static pause(Landroid/animation/Animator;)V
    .locals 7
    .param p0    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "animator":Landroid/animation/Animator;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_1

    .line 38
    move-object v5, v0

    invoke-virtual {v5}, Landroid/animation/Animator;->pause()V

    .line 50
    :cond_0
    return-void

    .line 40
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v5

    move-object v1, v5

    .line 41
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 42
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .local v3, "size":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 43
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    move-object v4, v5

    .line 44
    .local v4, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v5, v4

    instance-of v5, v5, Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;

    if-eqz v5, :cond_2

    .line 45
    move-object v5, v4

    check-cast v5, Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;->onAnimationPause(Landroid/animation/Animator;)V

    .line 42
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static resume(Landroid/animation/Animator;)V
    .locals 7
    .param p0    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "animator":Landroid/animation/Animator;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_1

    .line 54
    move-object v5, v0

    invoke-virtual {v5}, Landroid/animation/Animator;->resume()V

    .line 66
    :cond_0
    return-void

    .line 56
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v5

    move-object v1, v5

    .line 57
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 58
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .local v3, "size":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 59
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    move-object v4, v5

    .line 60
    .local v4, "listener":Landroid/animation/Animator$AnimatorListener;
    move-object v5, v4

    instance-of v5, v5, Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;

    if-eqz v5, :cond_2

    .line 61
    move-object v5, v4

    check-cast v5, Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;->onAnimationResume(Landroid/animation/Animator;)V

    .line 58
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
