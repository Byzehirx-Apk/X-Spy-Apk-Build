.class Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/TranslationAnimationCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionPositionListener"
.end annotation


# instance fields
.field private final mMovingView:Landroid/view/View;

.field private mPausedX:F

.field private mPausedY:F

.field private final mStartX:I

.field private final mStartY:I

.field private final mTerminalX:F

.field private final mTerminalY:F

.field private mTransitionPosition:[I

.field private final mViewInHierarchy:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .locals 10

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    move-object v1, p1

    .local v1, "movingView":Landroid/view/View;
    move-object v2, p2

    .local v2, "viewInHierarchy":Landroid/view/View;
    move v3, p3

    .local v3, "startX":I
    move v4, p4

    .local v4, "startY":I
    move v5, p5

    .local v5, "terminalX":F
    move/from16 v6, p6

    .local v6, "terminalY":F
    move-object v7, v0

    invoke-direct {v7}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 93
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 94
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    .line 95
    move-object v7, v0

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationX()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    .line 96
    move-object v7, v0

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    .line 97
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    .line 98
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    .line 99
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget v9, Landroidx/transition/R$id;->transition_position:I

    invoke-virtual {v8, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    check-cast v8, [I

    iput-object v8, v7, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 100
    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-eqz v7, :cond_0

    .line 101
    move-object v7, v0

    iget-object v7, v7, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget v8, Landroidx/transition/R$id;->transition_position:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    move-object v1, p1

    .local v1, "animation":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-nez v2, :cond_0

    .line 108
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, v2, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 110
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    int-to-float v4, v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v2, v3

    .line 111
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    int-to-float v4, v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v2, v3

    .line 112
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget v3, Landroidx/transition/R$id;->transition_position:I

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 113
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    move-object v3, v0

    iget v3, v3, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 118
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    move-object v3, v0

    iget v3, v3, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 119
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iput v3, v2, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    .line 124
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iput v3, v2, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    .line 125
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    move-object v3, v0

    iget v3, v3, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 126
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    move-object v3, v0

    iget v3, v3, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 127
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    move-object v3, v0

    iget v3, v3, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 132
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    move-object v3, v0

    iget v3, v3, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 133
    return-void
.end method
