.class public Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "FabTransformationScrimBehavior.java"


# static fields
.field public static final COLLAPSE_DELAY:J = 0x0L

.field public static final COLLAPSE_DURATION:J = 0x96L

.field public static final EXPAND_DELAY:J = 0x4bL

.field public static final EXPAND_DURATION:J = 0x96L


# instance fields
.field private final collapseTiming:Lcom/google/android/material/animation/MotionTiming;

.field private final expandTiming:Lcom/google/android/material/animation/MotionTiming;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 48
    move-object v1, v0

    new-instance v2, Lcom/google/android/material/animation/MotionTiming;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-wide/16 v4, 0x4b

    const-wide/16 v6, 0x96

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object v2, v1, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lcom/google/android/material/animation/MotionTiming;

    .line 49
    move-object v1, v0

    new-instance v2, Lcom/google/android/material/animation/MotionTiming;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x96

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object v2, v1, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lcom/google/android/material/animation/MotionTiming;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    move-object v3, v0

    new-instance v4, Lcom/google/android/material/animation/MotionTiming;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-wide/16 v6, 0x4b

    const-wide/16 v8, 0x96

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object v4, v3, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lcom/google/android/material/animation/MotionTiming;

    .line 49
    move-object v3, v0

    new-instance v4, Lcom/google/android/material/animation/MotionTiming;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x96

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/material/animation/MotionTiming;-><init>(JJ)V

    iput-object v4, v3, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lcom/google/android/material/animation/MotionTiming;

    .line 55
    return-void
.end method

.method private createScrimAnimation(Landroid/view/View;ZZLjava/util/List;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
    move-object/from16 v1, p1

    .local v1, "child":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "expanded":Z
    move/from16 v3, p3

    .local v3, "currentlyAnimating":Z
    move-object/from16 v4, p4

    .local v4, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object/from16 v5, p5

    .local v5, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move v8, v2

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->expandTiming:Lcom/google/android/material/animation/MotionTiming;

    :goto_0
    move-object v6, v8

    .line 107
    .local v6, "timing":Lcom/google/android/material/animation/MotionTiming;
    move v8, v2

    if-eqz v8, :cond_2

    .line 108
    move v8, v3

    if-nez v8, :cond_0

    .line 109
    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 111
    :cond_0
    move-object v8, v1

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    move-object v7, v8

    .line 116
    .local v7, "animator":Landroid/animation/Animator;
    :goto_1
    move-object v8, v6

    move-object v9, v7

    invoke-virtual {v8, v9}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 117
    move-object v8, v4

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 118
    return-void

    .line 104
    .end local v6    # "timing":Lcom/google/android/material/animation/MotionTiming;
    .end local v7    # "animator":Landroid/animation/Animator;
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->collapseTiming:Lcom/google/android/material/animation/MotionTiming;

    goto :goto_0

    .line 113
    .restart local v6    # "timing":Lcom/google/android/material/animation/MotionTiming;
    :cond_2
    move-object v8, v1

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    move-object v7, v8

    .restart local v7    # "animator":Landroid/animation/Animator;
    goto :goto_1
.end method


# virtual methods
.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "dependency":Landroid/view/View;
    move-object v4, v3

    instance-of v4, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
    return v0
.end method

.method protected onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 15
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
    move-object/from16 v1, p1

    .local v1, "dependency":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "child":Landroid/view/View;
    move/from16 v3, p3

    .local v3, "expanded":Z
    move/from16 v4, p4

    .local v4, "isAnimating":Z
    new-instance v8, Ljava/util/ArrayList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v8

    .line 73
    .local v5, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v8, Ljava/util/ArrayList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v8

    .line 75
    .local v6, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move-object v8, v0

    move-object v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->createScrimAnimation(Landroid/view/View;ZZLjava/util/List;Ljava/util/List;)V

    .line 77
    new-instance v8, Landroid/animation/AnimatorSet;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v7, v8

    .line 78
    .local v7, "set":Landroid/animation/AnimatorSet;
    move-object v8, v7

    move-object v9, v5

    invoke-static {v8, v9}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 79
    move-object v8, v7

    new-instance v9, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move v12, v3

    move-object v13, v2

    invoke-direct {v10, v11, v12, v13}, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;-><init>(Lcom/google/android/material/transformation/FabTransformationScrimBehavior;ZLandroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "this":Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
    return-object v0
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
    move-object v1, p1

    .local v1, "parent":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, p3

    .local v3, "ev":Landroid/view/MotionEvent;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
    return v0
.end method
