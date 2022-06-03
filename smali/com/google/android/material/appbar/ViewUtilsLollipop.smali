.class Lcom/google/android/material/appbar/ViewUtilsLollipop;
.super Ljava/lang/Object;
.source "ViewUtilsLollipop.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final STATE_LIST_ANIM_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010448

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/appbar/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/appbar/ViewUtilsLollipop;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setBoundsViewOutlineProvider(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v1, v0

    sget-object v2, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 39
    return-void
.end method

.method static setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V
    .locals 14

    .prologue
    .line 60
    move-object v1, p0

    .local v1, "view":Landroid/view/View;
    move v2, p1

    .local v2, "elevation":F
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$integer;->app_bar_elevation_anim_duration:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move v3, v5

    .line 62
    .local v3, "dur":I
    new-instance v5, Landroid/animation/StateListAnimator;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    invoke-direct {v6}, Landroid/animation/StateListAnimator;-><init>()V

    move-object v4, v5

    .line 65
    .local v4, "sla":Landroid/animation/StateListAnimator;
    move-object v5, v4

    const/4 v6, 0x3

    new-array v6, v6, [I

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x0

    const v9, 0x101000e

    aput v9, v7, v8

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x1

    sget v9, Lcom/google/android/material/R$attr;->state_liftable:I

    aput v9, v7, v8

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x2

    sget v9, Lcom/google/android/material/R$attr;->state_lifted:I

    neg-int v9, v9

    aput v9, v7, v8

    move-object v7, v1

    const-string/jumbo v8, "elevation"

    const/4 v9, 0x1

    new-array v9, v9, [F

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 67
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    move v8, v3

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 65
    invoke-virtual {v5, v6, v7}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 70
    move-object v5, v4

    const/4 v6, 0x1

    new-array v6, v6, [I

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x0

    const v9, 0x101000e

    aput v9, v7, v8

    move-object v7, v1

    const-string/jumbo v8, "elevation"

    const/4 v9, 0x1

    new-array v9, v9, [F

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move v12, v2

    aput v12, v10, v11

    .line 72
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    move v8, v3

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 70
    invoke-virtual {v5, v6, v7}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 75
    move-object v5, v4

    const/4 v6, 0x0

    new-array v6, v6, [I

    move-object v7, v1

    const-string/jumbo v8, "elevation"

    const/4 v9, 0x1

    new-array v9, v9, [F

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 77
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 78
    return-void
.end method

.method static setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .locals 14

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move/from16 v2, p2

    .local v2, "defStyleAttr":I
    move/from16 v3, p3

    .local v3, "defStyleRes":I
    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v4, v8

    .line 44
    .local v4, "context":Landroid/content/Context;
    move-object v8, v4

    move-object v9, v1

    sget-object v10, Lcom/google/android/material/appbar/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    move v11, v2

    move v12, v3

    const/4 v13, 0x0

    new-array v13, v13, [I

    .line 45
    invoke-static/range {v8 .. v13}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v5, v8

    .line 48
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object v8, v5

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 49
    move-object v8, v4

    move-object v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 50
    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-static {v8, v9}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v8

    move-object v6, v8

    .line 51
    .local v6, "sla":Landroid/animation/StateListAnimator;
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v6    # "sla":Landroid/animation/StateListAnimator;
    :cond_0
    move-object v8, v5

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    .line 56
    return-void

    .line 54
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v5

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    move-object v8, v7

    throw v8
.end method
