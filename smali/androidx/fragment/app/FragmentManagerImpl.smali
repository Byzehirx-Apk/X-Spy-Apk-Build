.class final Landroidx/fragment/app/FragmentManagerImpl;
.super Landroidx/fragment/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;,
        Landroidx/fragment/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;,
        Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;,
        Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;,
        Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;,
        Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;,
        Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;,
        Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;,
        Landroidx/fragment/app/FragmentManagerImpl$FragmentTag;,
        Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    }
.end annotation


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final ANIM_DUR:I = 0xdc

.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3

.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4

.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5

.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6

.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1

.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"

.field static sAnimationListenerField:Ljava/lang/reflect/Field;


# instance fields
.field mActive:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroidx/fragment/app/FragmentContainer;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroidx/fragment/app/FragmentHostCallback;

.field private final mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;",
            ">;"
        }
    .end annotation
.end field

.field mNeedMenuInvalidate:Z

.field mNextFragmentIndex:I

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroidx/fragment/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Landroidx/fragment/app/Fragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mStopped:Z

.field mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 664
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    .line 706
    const/4 v0, 0x0

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 1129
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 1130
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 1131
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 1132
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/FragmentManager;-><init>()V

    .line 685
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 687
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 697
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 700
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    .line 721
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 722
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 730
    move-object v1, v0

    new-instance v2, Landroidx/fragment/app/FragmentManagerImpl$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl$1;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    .line 4063
    return-void
.end method

.method private addAddedFragments(Landroidx/collection/ArraySet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2637
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "added":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    move-object v6, v0

    iget v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    .line 2638
    .line 2653
    :goto_0
    return-void

    .line 2641
    :cond_0
    move-object v6, v0

    iget v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v7, 0x3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v2, v6

    .line 2642
    .local v2, "state":I
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 2643
    .local v3, "numAdded":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 2644
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    move-object v5, v6

    .line 2645
    .local v5, "fragment":Landroidx/fragment/app/Fragment;
    move-object v6, v5

    iget v6, v6, Landroidx/fragment/app/Fragment;->mState:I

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 2646
    move-object v6, v0

    move-object v7, v5

    move v8, v2

    move-object v9, v5

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v9

    move-object v10, v5

    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 2648
    move-object v6, v5

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v6, :cond_1

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v6, :cond_1

    .line 2649
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 2643
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2653
    .end local v5    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_2
    goto :goto_0
.end method

.method private animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V
    .locals 16
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1630
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object/from16 v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object/from16 v2, p2

    .local v2, "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    move/from16 v3, p3

    .local v3, "newState":I
    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v4, v8

    .line 1631
    .local v4, "viewToAnimate":Landroid/view/View;
    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v5, v8

    .line 1632
    .local v5, "container":Landroid/view/ViewGroup;
    move-object v8, v5

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1633
    move-object v8, v1

    move v9, v3

    invoke-virtual {v8, v9}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    .line 1634
    move-object v8, v2

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v8, :cond_0

    .line 1635
    new-instance v8, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v2

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    move-object v11, v5

    move-object v12, v4

    invoke-direct {v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    move-object v6, v8

    .line 1637
    .local v6, "animation":Landroid/view/animation/Animation;
    move-object v8, v1

    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1638
    move-object v8, v6

    invoke-static {v8}, Landroidx/fragment/app/FragmentManagerImpl;->getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v8

    move-object v7, v8

    .line 1639
    .local v7, "listener":Landroid/view/animation/Animation$AnimationListener;
    move-object v8, v6

    new-instance v9, Landroidx/fragment/app/FragmentManagerImpl$2;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    move-object v12, v7

    move-object v13, v5

    move-object v14, v1

    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/fragment/app/FragmentManagerImpl$2;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v8, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1659
    move-object v8, v4

    move-object v9, v2

    invoke-static {v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1660
    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1661
    .line 1681
    .end local v6    # "animation":Landroid/view/animation/Animation;
    .end local v7    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :goto_0
    return-void

    .line 1662
    :cond_0
    move-object v8, v2

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    move-object v6, v8

    .line 1663
    .local v6, "animator":Landroid/animation/Animator;
    move-object v8, v1

    move-object v9, v2

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v8, v9}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1664
    move-object v8, v6

    new-instance v9, Landroidx/fragment/app/FragmentManagerImpl$3;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    move-object v12, v5

    move-object v13, v4

    move-object v14, v1

    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/fragment/app/FragmentManagerImpl$3;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1677
    move-object v8, v6

    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1678
    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v9, v2

    invoke-static {v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1679
    move-object v8, v6

    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private burpActive()V
    .locals 5

    .prologue
    .line 3190
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 3191
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    if-ltz v2, :cond_1

    .line 3192
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3193
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 3191
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3197
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private checkStateLoss()V
    .locals 6

    .prologue
    .line 2079
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2080
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2083
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2084
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can not perform this action inside of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2087
    :cond_1
    return-void
.end method

.method private cleanupExec()V
    .locals 3

    .prologue
    .line 2258
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2259
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2260
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2261
    return-void
.end method

.method private dispatchStateChange(I)V
    .locals 6

    .prologue
    .line 3268
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move v1, p1

    .local v1, "nextState":I
    move-object v3, v0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3269
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3271
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3272
    .line 3273
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v3

    .line 3274
    return-void

    .line 3271
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    move-object v3, v2

    throw v3
.end method

.method private endAnimatingAwayFragments()V
    .locals 13

    .prologue
    .line 2671
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_0
    move v1, v7

    .line 2672
    .local v1, "numFragments":I
    const/4 v7, 0x0

    move v2, v7

    .local v2, "i":I
    :goto_1
    move v7, v2

    move v8, v1

    if-ge v7, v8, :cond_4

    .line 2673
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    move-object v3, v7

    .line 2674
    .local v3, "fragment":Landroidx/fragment/app/Fragment;
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 2675
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2677
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v7

    move v4, v7

    .line 2678
    .local v4, "stateAfterAnimating":I
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v7

    move-object v5, v7

    .line 2679
    .local v5, "animatingAway":Landroid/view/View;
    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    move-object v6, v7

    .line 2680
    .local v6, "animation":Landroid/view/animation/Animation;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 2681
    move-object v7, v6

    invoke-virtual {v7}, Landroid/view/animation/Animation;->cancel()V

    .line 2684
    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V

    .line 2686
    :cond_0
    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 2687
    move-object v7, v0

    move-object v8, v3

    move v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 2688
    .line 2672
    .end local v4    # "stateAfterAnimating":I
    .end local v5    # "animatingAway":Landroid/view/View;
    .end local v6    # "animation":Landroid/view/animation/Animation;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2671
    .end local v1    # "numFragments":I
    .end local v2    # "i":I
    .end local v3    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    goto :goto_0

    .line 2688
    .restart local v1    # "numFragments":I
    .restart local v2    # "i":I
    .restart local v3    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_3
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 2689
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/Animator;->end()V

    goto :goto_2

    .line 2693
    .end local v3    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_4
    return-void
.end method

.method private ensureExecReady(Z)V
    .locals 7

    .prologue
    .line 2206
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move v1, p1

    .local v1, "allowStateLoss":Z
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v3, :cond_0

    .line 2207
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "FragmentManager is already executing transactions"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2210
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v3, :cond_1

    .line 2211
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Fragment host has been destroyed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2214
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 2215
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Must be called from main thread of fragment host"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2218
    :cond_2
    move v3, v1

    if-nez v3, :cond_3

    .line 2219
    move-object v3, v0

    invoke-direct {v3}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 2222
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    .line 2223
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    .line 2224
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    .line 2226
    :cond_4
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2228
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2230
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2231
    .line 2232
    return-void

    .line 2230
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    move-object v3, v2

    throw v3
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2614
    move-object v0, p0

    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    move-object v1, p1

    .local v1, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move v2, p2

    .local v2, "startIndex":I
    move v3, p3

    .local v3, "endIndex":I
    move v8, v2

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_2

    .line 2615
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/BackStackRecord;

    move-object v5, v8

    .line 2616
    .local v5, "record":Landroidx/fragment/app/BackStackRecord;
    move-object v8, v1

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move v6, v8

    .line 2617
    .local v6, "isPop":Z
    move v8, v6

    if-eqz v8, :cond_1

    .line 2618
    move-object v8, v5

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2621
    move v8, v4

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_1
    move v7, v8

    .line 2622
    .local v7, "moveToState":Z
    move-object v8, v5

    move v9, v7

    invoke-virtual {v8, v9}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    .line 2623
    .line 2614
    .end local v7    # "moveToState":Z
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2621
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 2624
    :cond_1
    move-object v8, v5

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2625
    move-object v8, v5

    invoke-virtual {v8}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    goto :goto_2

    .line 2628
    .end local v5    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v6    # "isPop":Z
    :cond_2
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2386
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object/from16 v1, p1

    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    move-object/from16 v2, p2

    .local v2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move/from16 v3, p3

    .local v3, "startIndex":I
    move/from16 v4, p4

    .local v4, "endIndex":I
    move-object v12, v1

    move v13, v3

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v12, v12, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    move v5, v12

    .line 2387
    .local v5, "allowReordering":Z
    const/4 v12, 0x0

    move v6, v12

    .line 2388
    .local v6, "addToBackStack":Z
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v12, :cond_1

    .line 2389
    move-object v12, v0

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    .line 2393
    :goto_0
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object v13, v0

    iget-object v13, v13, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v12

    .line 2394
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentManagerImpl;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v12

    move-object v7, v12

    .line 2395
    .local v7, "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    move v12, v3

    move v8, v12

    .local v8, "recordNum":I
    :goto_1
    move v12, v8

    move v13, v4

    if-ge v12, v13, :cond_4

    .line 2396
    move-object v12, v1

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/BackStackRecord;

    move-object v9, v12

    .line 2397
    .local v9, "record":Landroidx/fragment/app/BackStackRecord;
    move-object v12, v2

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move v10, v12

    .line 2398
    .local v10, "isPop":Z
    move v12, v10

    if-nez v12, :cond_2

    .line 2399
    move-object v12, v9

    move-object v13, v0

    iget-object v13, v13, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object v14, v7

    invoke-virtual {v12, v13, v14}, Landroidx/fragment/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v12

    move-object v7, v12

    .line 2403
    :goto_2
    move v12, v6

    if-nez v12, :cond_0

    move-object v12, v9

    iget-boolean v12, v12, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v12, :cond_3

    :cond_0
    const/4 v12, 0x1

    :goto_3
    move v6, v12

    .line 2395
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2391
    .end local v7    # "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    .end local v8    # "recordNum":I
    .end local v9    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v10    # "isPop":Z
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 2401
    .restart local v7    # "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    .restart local v8    # "recordNum":I
    .restart local v9    # "record":Landroidx/fragment/app/BackStackRecord;
    .restart local v10    # "isPop":Z
    :cond_2
    move-object v12, v9

    move-object v13, v0

    iget-object v13, v13, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    move-object v14, v7

    invoke-virtual {v12, v13, v14}, Landroidx/fragment/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v12

    move-object v7, v12

    goto :goto_2

    .line 2403
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 2405
    .end local v9    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v10    # "isPop":Z
    :cond_4
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 2407
    move v12, v5

    if-nez v12, :cond_5

    .line 2408
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2411
    :cond_5
    move-object v12, v1

    move-object v13, v2

    move v14, v3

    move v15, v4

    invoke-static {v12, v13, v14, v15}, Landroidx/fragment/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2413
    move v12, v4

    move v8, v12

    .line 2414
    .local v8, "postponeIndex":I
    move v12, v5

    if-eqz v12, :cond_6

    .line 2415
    new-instance v12, Landroidx/collection/ArraySet;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Landroidx/collection/ArraySet;-><init>()V

    move-object v9, v12

    .line 2416
    .local v9, "addedFragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    move-object v12, v0

    move-object v13, v9

    invoke-direct {v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->addAddedFragments(Landroidx/collection/ArraySet;)V

    .line 2417
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    move-object/from16 v17, v9

    invoke-direct/range {v12 .. v17}, Landroidx/fragment/app/FragmentManagerImpl;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/collection/ArraySet;)I

    move-result v12

    move v8, v12

    .line 2419
    move-object v12, v0

    move-object v13, v9

    invoke-direct {v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->makeRemovedFragmentsInvisible(Landroidx/collection/ArraySet;)V

    .line 2422
    .end local v9    # "addedFragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    :cond_6
    move v12, v8

    move v13, v3

    if-eq v12, v13, :cond_7

    move v12, v5

    if-eqz v12, :cond_7

    .line 2424
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    invoke-static/range {v12 .. v17}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2426
    move-object v12, v0

    move-object v13, v0

    iget v13, v13, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2429
    :cond_7
    move v12, v3

    move v9, v12

    .local v9, "recordNum":I
    :goto_4
    move v12, v9

    move v13, v4

    if-ge v12, v13, :cond_9

    .line 2430
    move-object v12, v1

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/BackStackRecord;

    move-object v10, v12

    .line 2431
    .local v10, "record":Landroidx/fragment/app/BackStackRecord;
    move-object v12, v2

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move v11, v12

    .line 2432
    .local v11, "isPop":Z
    move v12, v11

    if-eqz v12, :cond_8

    move-object v12, v10

    iget v12, v12, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v12, :cond_8

    .line 2433
    move-object v12, v0

    move-object v13, v10

    iget v13, v13, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 2434
    move-object v12, v10

    const/4 v13, -0x1

    iput v13, v12, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 2436
    :cond_8
    move-object v12, v10

    invoke-virtual {v12}, Landroidx/fragment/app/BackStackRecord;->runOnCommitRunnables()V

    .line 2429
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2438
    .end local v10    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v11    # "isPop":Z
    :cond_9
    move v12, v6

    if-eqz v12, :cond_a

    .line 2439
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 2441
    :cond_a
    return-void
.end method

.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2292
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    move-object v2, p2

    .local v2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_0
    move v3, v7

    .line 2293
    .local v3, "numPostponed":I
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_1
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_5

    .line 2294
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    move-object v5, v7

    .line 2295
    .local v5, "listener":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    move-object v7, v1

    if-eqz v7, :cond_2

    move-object v7, v5

    iget-boolean v7, v7, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-nez v7, :cond_2

    .line 2296
    move-object v7, v1

    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move v6, v7

    .line 2297
    .local v6, "index":I
    move v7, v6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    move-object v7, v2

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2298
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    .line 2299
    .line 2293
    .end local v6    # "index":I
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2292
    .end local v3    # "numPostponed":I
    .end local v4    # "i":I
    .end local v5    # "listener":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_0

    .line 2302
    .restart local v3    # "numPostponed":I
    .restart local v4    # "i":I
    .restart local v5    # "listener":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_2
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->isReady()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v5

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    move-object v8, v1

    const/4 v9, 0x0

    move-object v10, v1

    .line 2303
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroidx/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2304
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 2305
    add-int/lit8 v4, v4, -0x1

    .line 2306
    add-int/lit8 v3, v3, -0x1

    .line 2308
    move-object v7, v1

    if-eqz v7, :cond_4

    move-object v7, v5

    iget-boolean v7, v7, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-nez v7, :cond_4

    move-object v7, v1

    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    .line 2309
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move v11, v7

    move v7, v11

    move v8, v11

    move v6, v8

    .restart local v6    # "index":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    move-object v7, v2

    move v8, v6

    .line 2310
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2312
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_2

    .line 2314
    .end local v6    # "index":I
    :cond_4
    move-object v7, v5

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_2

    .line 2318
    .end local v5    # "listener":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_5
    return-void
.end method

.method private findFragmentUnder(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 9

    .prologue
    .line 2586
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v2, v7

    .line 2587
    .local v2, "container":Landroid/view/ViewGroup;
    move-object v7, v1

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v3, v7

    .line 2589
    .local v3, "view":Landroid/view/View;
    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v3

    if-nez v7, :cond_1

    .line 2590
    :cond_0
    const/4 v7, 0x0

    move-object v0, v7

    .line 2601
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :goto_0
    return-object v0

    .line 2593
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move v4, v7

    .line 2594
    .local v4, "fragmentIndex":I
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    if-ltz v7, :cond_3

    .line 2595
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    move-object v6, v7

    .line 2596
    .local v6, "underFragment":Landroidx/fragment/app/Fragment;
    move-object v7, v6

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v8, v2

    if-ne v7, v8, :cond_2

    move-object v7, v6

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v7, :cond_2

    .line 2598
    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 2594
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 2601
    .end local v6    # "underFragment":Landroidx/fragment/app/Fragment;
    :cond_3
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0
.end method

.method private forcePostponedTransactions()V
    .locals 3

    .prologue
    .line 2659
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 2660
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2661
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_0

    .line 2664
    :cond_0
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2707
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    move-object v2, p2

    .local v2, "isPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v8, 0x0

    move v3, v8

    .line 2708
    .local v3, "didSomething":Z
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v4, v9

    monitor-enter v8

    .line 2709
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 2710
    :cond_0
    const/4 v8, 0x0

    move-object v9, v4

    monitor-exit v9

    move v0, v8

    .line 2720
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :goto_0
    return v0

    .line 2713
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v5, v8

    .line 2714
    .local v5, "numActions":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_2

    .line 2715
    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;

    move-object v10, v1

    move-object v11, v2

    invoke-interface {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v9

    or-int/2addr v8, v9

    move v3, v8

    .line 2714
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2717
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2718
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2719
    move-object v8, v4

    monitor-exit v8

    .line 2720
    move v8, v3

    move v0, v8

    goto :goto_0

    .line 2719
    .end local v5    # "numActions":I
    .end local v6    # "i":I
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v4

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    throw v8
.end method

.method private static getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 6

    .prologue
    .line 1298
    move-object v0, p0

    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v3, 0x0

    move-object v1, v3

    .line 1300
    .local v1, "originalListener":Landroid/view/animation/Animation$AnimationListener;
    :try_start_0
    sget-object v3, Landroidx/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_0

    .line 1301
    const-class v3, Landroid/view/animation/Animation;

    const-string/jumbo v4, "mListener"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroidx/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 1302
    sget-object v3, Landroidx/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1304
    :cond_0
    sget-object v3, Landroidx/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation$AnimationListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v3

    .line 1309
    .line 1310
    :goto_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "animation":Landroid/view/animation/Animation;
    return-object v0

    .line 1305
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1306
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "No field with the name mListener is found in Animation class"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 1309
    goto :goto_0

    .line 1307
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 1308
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Cannot access Animation\'s mListener field"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 10

    .prologue
    .line 1152
    move-object v1, p0

    .local v1, "context":Landroid/content/Context;
    move v2, p1

    .local v2, "start":F
    move v3, p2

    .local v3, "end":F
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move v7, v2

    move v8, v3

    invoke-direct {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v5

    .line 1153
    .local v4, "anim":Landroid/view/animation/AlphaAnimation;
    move-object v5, v4

    sget-object v6, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1154
    move-object v5, v4

    const-wide/16 v6, 0xdc

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1155
    new-instance v5, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    invoke-direct {v6, v7}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    move-object v1, v5

    .end local v1    # "context":Landroid/content/Context;
    return-object v1
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 20

    .prologue
    .line 1138
    move-object/from16 v1, p0

    .local v1, "context":Landroid/content/Context;
    move/from16 v2, p1

    .local v2, "startScale":F
    move/from16 v3, p2

    .local v3, "endScale":F
    move/from16 v4, p3

    .local v4, "startAlpha":F
    move/from16 v5, p4

    .local v5, "endAlpha":F
    new-instance v9, Landroid/view/animation/AnimationSet;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v6, v9

    .line 1139
    .local v6, "set":Landroid/view/animation/AnimationSet;
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move v11, v2

    move v12, v3

    move v13, v2

    move v14, v3

    const/4 v15, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    const/16 v17, 0x1

    const/high16 v18, 0x3f000000    # 0.5f

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v7, v9

    .line 1141
    .local v7, "scale":Landroid/view/animation/ScaleAnimation;
    move-object v9, v7

    sget-object v10, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1142
    move-object v9, v7

    const-wide/16 v10, 0xdc

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1143
    move-object v9, v6

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1144
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move v11, v4

    move v12, v5

    invoke-direct {v10, v11, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v9

    .line 1145
    .local v8, "alpha":Landroid/view/animation/AlphaAnimation;
    move-object v9, v8

    sget-object v10, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1146
    move-object v9, v8

    const-wide/16 v10, 0xdc

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1147
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1148
    new-instance v9, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v11, v6

    invoke-direct {v10, v11}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    move-object v1, v9

    .end local v1    # "context":Landroid/content/Context;
    return-object v1
.end method

.method private makeRemovedFragmentsInvisible(Landroidx/collection/ArraySet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2451
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "fragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/collection/ArraySet;->size()I

    move-result v6

    move v2, v6

    .line 2452
    .local v2, "numAdded":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 2453
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    move-object v4, v6

    .line 2454
    .local v4, "fragment":Landroidx/fragment/app/Fragment;
    move-object v6, v4

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v6, :cond_0

    .line 2455
    move-object v6, v4

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 2456
    .local v5, "view":Landroid/view/View;
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    iput v7, v6, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 2457
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 2452
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2460
    .end local v4    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_1
    return-void
.end method

.method static modifiesAlpha(Landroid/animation/Animator;)Z
    .locals 7

    .prologue
    .line 754
    move-object v0, p0

    .local v0, "anim":Landroid/animation/Animator;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 755
    const/4 v4, 0x0

    move v0, v4

    .line 773
    .end local v0    # "anim":Landroid/animation/Animator;
    .local v1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local v2, "i":I
    :goto_0
    return v0

    .line 757
    .end local v1    # "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v2    # "i":I
    .restart local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    move-object v4, v0

    instance-of v4, v4, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_3

    .line 758
    move-object v4, v0

    check-cast v4, Landroid/animation/ValueAnimator;

    move-object v1, v4

    .line 759
    .local v1, "valueAnim":Landroid/animation/ValueAnimator;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    move-object v2, v4

    .line 760
    .local v2, "values":[Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 761
    const-string/jumbo v4, "alpha"

    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 762
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 760
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 765
    .line 773
    .end local v1    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local v2    # "values":[Landroid/animation/PropertyValuesHolder;
    .end local v3    # "i":I
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 765
    :cond_3
    move-object v4, v0

    instance-of v4, v4, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    .line 766
    move-object v4, v0

    check-cast v4, Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v4

    move-object v1, v4

    .line 767
    .local v1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_2
    move v4, v2

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 768
    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-static {v4}, Landroidx/fragment/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 769
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 767
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method static modifiesAlpha(Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)Z
    .locals 5

    .prologue
    .line 738
    move-object v0, p0

    .local v0, "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    instance-of v3, v3, Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_0

    .line 739
    const/4 v3, 0x1

    move v0, v3

    .line 749
    .end local v0    # "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    :goto_0
    return v0

    .line 740
    .restart local v0    # "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    instance-of v3, v3, Landroid/view/animation/AnimationSet;

    if-eqz v3, :cond_3

    .line 741
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    check-cast v3, Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 742
    .local v1, "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 743
    move-object v3, v1

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_1

    .line 744
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 742
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 747
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 749
    .end local v1    # "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v2    # "i":I
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-static {v3}, Landroidx/fragment/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .locals 12

    .prologue
    .line 867
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "id":I
    move v3, p3

    .local v3, "flags":I
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v6

    .line 868
    move-object v6, v0

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 870
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    move v6, v2

    if-gez v6, :cond_0

    move-object v6, v1

    if-nez v6, :cond_0

    .line 873
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->peekChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    move-object v4, v6

    .line 874
    .local v4, "childManager":Landroidx/fragment/app/FragmentManager;
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 876
    const/4 v6, 0x1

    move v0, v6

    .line 892
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    .end local v4    # "childManager":Landroidx/fragment/app/FragmentManager;
    :goto_0
    return v0

    .line 880
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_0
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v9, v1

    move v10, v2

    move v11, v3

    invoke-virtual/range {v6 .. v11}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v6

    move v4, v6

    .line 881
    .local v4, "executePop":Z
    move v6, v4

    if-eqz v6, :cond_1

    .line 882
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 884
    move-object v6, v0

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {v6, v7, v8}, Landroidx/fragment/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    move-object v6, v0

    invoke-direct {v6}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    .line 887
    .line 890
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 891
    move-object v6, v0

    invoke-direct {v6}, Landroidx/fragment/app/FragmentManagerImpl;->burpActive()V

    .line 892
    move v6, v4

    move v0, v6

    goto :goto_0

    .line 886
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    invoke-direct {v6}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    move-object v6, v5

    throw v6
.end method

.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/collection/ArraySet;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroidx/collection/ArraySet",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2477
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object/from16 v1, p1

    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    move-object/from16 v2, p2

    .local v2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move/from16 v3, p3

    .local v3, "startIndex":I
    move/from16 v4, p4

    .local v4, "endIndex":I
    move-object/from16 v5, p5

    .local v5, "added":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    move v12, v4

    move v6, v12

    .line 2478
    .local v6, "postponeIndex":I
    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v7, v12

    .local v7, "i":I
    :goto_0
    move v12, v7

    move v13, v3

    if-lt v12, v13, :cond_5

    .line 2479
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/BackStackRecord;

    move-object v8, v12

    .line 2480
    .local v8, "record":Landroidx/fragment/app/BackStackRecord;
    move-object v12, v2

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move v9, v12

    .line 2481
    .local v9, "isPop":Z
    move-object v12, v8

    invoke-virtual {v12}, Landroidx/fragment/app/BackStackRecord;->isPostponed()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v12, v8

    move-object v13, v1

    move v14, v7

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v15, v4

    .line 2482
    invoke-virtual {v12, v13, v14, v15}, Landroidx/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v12, 0x1

    :goto_1
    move v10, v12

    .line 2483
    .local v10, "isPostponed":Z
    move v12, v10

    if-eqz v12, :cond_2

    .line 2484
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v12, :cond_0

    .line 2485
    move-object v12, v0

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 2487
    :cond_0
    new-instance v12, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v8

    move v15, v9

    invoke-direct {v13, v14, v15}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;-><init>(Landroidx/fragment/app/BackStackRecord;Z)V

    move-object v11, v12

    .line 2489
    .local v11, "listener":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 2490
    move-object v12, v8

    move-object v13, v11

    invoke-virtual {v12, v13}, Landroidx/fragment/app/BackStackRecord;->setOnStartPostponedListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    .line 2493
    move v12, v9

    if-eqz v12, :cond_4

    .line 2494
    move-object v12, v8

    invoke-virtual {v12}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    .line 2500
    :goto_2
    add-int/lit8 v6, v6, -0x1

    .line 2501
    move v12, v7

    move v13, v6

    if-eq v12, v13, :cond_1

    .line 2502
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    .line 2503
    move-object v12, v1

    move v13, v6

    move-object v14, v8

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2507
    :cond_1
    move-object v12, v0

    move-object v13, v5

    invoke-direct {v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->addAddedFragments(Landroidx/collection/ArraySet;)V

    .line 2478
    .end local v11    # "listener":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 2482
    .end local v10    # "isPostponed":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 2496
    .restart local v10    # "isPostponed":Z
    .restart local v11    # "listener":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_4
    move-object v12, v8

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_2

    .line 2510
    .end local v8    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v9    # "isPop":Z
    .end local v10    # "isPostponed":Z
    .end local v11    # "listener":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_5
    move v12, v6

    move v0, v12

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return v0
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2336
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    move-object/from16 v2, p2

    .local v2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2337
    .line 2374
    :cond_0
    :goto_0
    return-void

    .line 2340
    :cond_1
    move-object v8, v2

    if-eqz v8, :cond_2

    move-object v8, v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v8, v9, :cond_3

    .line 2341
    :cond_2
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string/jumbo v10, "Internal error with the back stack records"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2345
    :cond_3
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2347
    move-object v8, v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v3, v8

    .line 2348
    .local v3, "numRecords":I
    const/4 v8, 0x0

    move v4, v8

    .line 2349
    .local v4, "startIndex":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "recordNum":I
    :goto_1
    move v8, v5

    move v9, v3

    if-ge v8, v9, :cond_7

    .line 2350
    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v8, v8, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    move v6, v8

    .line 2351
    .local v6, "canReorder":Z
    move v8, v6

    if-nez v8, :cond_6

    .line 2353
    move v8, v4

    move v9, v5

    if-eq v8, v9, :cond_4

    .line 2354
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v4

    move v12, v5

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2358
    :cond_4
    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v7, v8

    .line 2359
    .local v7, "reorderingEnd":I
    move-object v8, v2

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2360
    :goto_2
    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_5

    move-object v8, v2

    move v9, v7

    .line 2361
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v1

    move v9, v7

    .line 2362
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v8, v8, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v8, :cond_5

    .line 2363
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2366
    :cond_5
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v5

    move v12, v7

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2367
    move v8, v7

    move v4, v8

    .line 2368
    move v8, v7

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v5, v8

    .line 2349
    .end local v7    # "reorderingEnd":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2371
    .end local v6    # "canReorder":Z
    :cond_7
    move v8, v4

    move v9, v3

    if-eq v8, v9, :cond_8

    .line 2372
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v4

    move v12, v3

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2374
    :cond_8
    goto/16 :goto_0
.end method

.method public static reverseTransit(I)I
    .locals 3

    .prologue
    .line 3655
    move v0, p0

    .local v0, "transit":I
    const/4 v2, 0x0

    move v1, v2

    .line 3656
    .local v1, "rev":I
    move v2, v0

    sparse-switch v2, :sswitch_data_0

    .line 3667
    :goto_0
    move v2, v1

    move v0, v2

    .end local v0    # "transit":I
    return v0

    .line 3658
    .restart local v0    # "transit":I
    :sswitch_0
    const/16 v2, 0x2002

    move v1, v2

    .line 3659
    goto :goto_0

    .line 3661
    :sswitch_1
    const/16 v2, 0x1001

    move v1, v2

    .line 3662
    goto :goto_0

    .line 3664
    :sswitch_2
    const/16 v2, 0x1003

    move v1, v2

    goto :goto_0

    .line 3656
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private static setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V
    .locals 9

    .prologue
    .line 1276
    move-object v0, p0

    .local v0, "v":Landroid/view/View;
    move-object v1, p1

    .local v1, "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 1277
    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1279
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1280
    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v3, :cond_3

    .line 1281
    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v4, Landroidx/fragment/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1292
    :cond_2
    :goto_1
    goto :goto_0

    .line 1283
    :cond_3
    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-static {v3}, Landroidx/fragment/app/FragmentManagerImpl;->getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v3

    move-object v2, v3

    .line 1287
    .local v2, "originalListener":Landroid/view/animation/Animation$AnimationListener;
    move-object v3, v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1288
    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    new-instance v4, Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1
.end method

.method private static setRetaining(Landroidx/fragment/app/FragmentManagerNonConfig;)V
    .locals 7

    .prologue
    .line 2814
    move-object v0, p0

    .local v0, "nonConfig":Landroidx/fragment/app/FragmentManagerNonConfig;
    move-object v5, v0

    if-nez v5, :cond_0

    .line 2815
    .line 2829
    :goto_0
    return-void

    .line 2817
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v5

    move-object v1, v5

    .line 2818
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/Fragment;>;"
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 2819
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    move-object v3, v5

    .line 2820
    .local v3, "fragment":Landroidx/fragment/app/Fragment;
    move-object v5, v3

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->mRetaining:Z

    .line 2821
    goto :goto_1

    .line 2823
    .end local v3    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v5

    move-object v2, v5

    .line 2824
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/FragmentManagerNonConfig;>;"
    move-object v5, v2

    if-eqz v5, :cond_2

    .line 2825
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_2
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentManagerNonConfig;

    move-object v4, v5

    .line 2826
    .local v4, "child":Landroidx/fragment/app/FragmentManagerNonConfig;
    move-object v5, v4

    invoke-static {v5}, Landroidx/fragment/app/FragmentManagerImpl;->setRetaining(Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 2827
    goto :goto_2

    .line 2829
    .end local v4    # "child":Landroidx/fragment/app/FragmentManagerNonConfig;
    :cond_2
    goto :goto_0
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)Z
    .locals 4

    .prologue
    .line 777
    move-object v0, p0

    .local v0, "v":Landroid/view/View;
    move-object v1, p1

    .local v1, "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 778
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 783
    .end local v0    # "v":Landroid/view/View;
    :goto_0
    return v0

    .line 780
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    move-object v2, v0

    .line 781
    invoke-virtual {v2}, Landroid/view/View;->getLayerType()I

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v0

    .line 782
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 783
    invoke-static {v2}, Landroidx/fragment/app/FragmentManagerImpl;->modifiesAlpha(Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 11

    .prologue
    .line 787
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "FragmentManager"

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 788
    const-string/jumbo v5, "FragmentManager"

    const-string/jumbo v6, "Activity state:"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 789
    new-instance v5, Landroidx/core/util/LogWriter;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "FragmentManager"

    invoke-direct {v6, v7}, Landroidx/core/util/LogWriter;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 790
    .local v2, "logw":Landroidx/core/util/LogWriter;
    new-instance v5, Ljava/io/PrintWriter;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v5

    .line 791
    .local v3, "pw":Ljava/io/PrintWriter;
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v5, :cond_0

    .line 793
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    const-string/jumbo v6, "  "

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    .line 804
    :goto_0
    move-object v5, v1

    throw v5

    .line 794
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 795
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "FragmentManager"

    const-string/jumbo v6, "Failed dumping state"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 796
    goto :goto_0

    .line 799
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v5, v0

    :try_start_1
    const-string/jumbo v6, "  "

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 802
    goto :goto_0

    .line 800
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 801
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "FragmentManager"

    const-string/jumbo v6, "Failed dumping state"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_0
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 4

    .prologue
    .line 3679
    move v0, p0

    .local v0, "transit":I
    move v1, p1

    .local v1, "enter":Z
    const/4 v3, -0x1

    move v2, v3

    .line 3680
    .local v2, "animAttr":I
    move v3, v0

    sparse-switch v3, :sswitch_data_0

    .line 3691
    :goto_0
    move v3, v2

    move v0, v3

    .end local v0    # "transit":I
    return v0

    .line 3682
    .restart local v0    # "transit":I
    :sswitch_0
    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    move v2, v3

    .line 3683
    goto :goto_0

    .line 3682
    :cond_0
    const/4 v3, 0x2

    goto :goto_1

    .line 3685
    :sswitch_1
    move v3, v1

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    :goto_2
    move v2, v3

    .line 3686
    goto :goto_0

    .line 3685
    :cond_1
    const/4 v3, 0x4

    goto :goto_2

    .line 3688
    :sswitch_2
    move v3, v1

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    :goto_3
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    goto :goto_3

    .line 3680
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroidx/fragment/app/BackStackRecord;)V
    .locals 6

    .prologue
    .line 2739
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "state":Landroidx/fragment/app/BackStackRecord;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 2740
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2742
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 2743
    return-void
.end method

.method public addFragment(Landroidx/fragment/app/Fragment;Z)V
    .locals 10

    .prologue
    .line 1912
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move v2, p2

    .local v2, "moveToStateNow":Z
    sget-boolean v5, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "add: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1913
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->makeActive(Landroidx/fragment/app/Fragment;)V

    .line 1914
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v5, :cond_4

    .line 1915
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1916
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Fragment already added: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1918
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v3, v6

    monitor-enter v5

    .line 1919
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1920
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1921
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 1922
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1923
    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v5, :cond_2

    .line 1924
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1926
    :cond_2
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v5, :cond_3

    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v5, :cond_3

    .line 1927
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1929
    :cond_3
    move v5, v2

    if-eqz v5, :cond_4

    .line 1930
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;)V

    .line 1933
    :cond_4
    return-void

    .line 1920
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 6

    .prologue
    .line 907
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "listener":Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 908
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 910
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 911
    return-void
.end method

.method public allocBackStackIndex(Landroidx/fragment/app/BackStackRecord;)I
    .locals 9

    .prologue
    .line 2144
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "bse":Landroidx/fragment/app/BackStackRecord;
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 2145
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_3

    .line 2146
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 2147
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 2149
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 2150
    .local v3, "index":I
    sget-boolean v5, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Setting back stack index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 2151
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 2152
    move v5, v3

    move-object v6, v2

    monitor-exit v6

    move v0, v5

    .line 2158
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :goto_0
    return v0

    .line 2155
    .end local v3    # "index":I
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v3, v5

    .line 2156
    .restart local v3    # "index":I
    sget-boolean v5, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Adding back stack index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 2157
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move v6, v3

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2158
    move v5, v3

    move-object v6, v2

    monitor-exit v6

    move v0, v5

    goto :goto_0

    .line 2160
    .end local v3    # "index":I
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V
    .locals 8

    .prologue
    .line 3201
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "host":Landroidx/fragment/app/FragmentHostCallback;
    move-object v2, p2

    .local v2, "container":Landroidx/fragment/app/FragmentContainer;
    move-object v3, p3

    .local v3, "parent":Landroidx/fragment/app/Fragment;
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Already attached"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3202
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3203
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 3204
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    .line 3205
    return-void
.end method

.method public attachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 9

    .prologue
    .line 2001
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    sget-boolean v4, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "attach: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2002
    :cond_0
    move-object v4, v1

    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v4, :cond_3

    .line 2003
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 2004
    move-object v4, v1

    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v4, :cond_3

    .line 2005
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2006
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Fragment already added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2008
    :cond_1
    sget-boolean v4, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "add from attach: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2009
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v2, v5

    monitor-enter v4

    .line 2010
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 2011
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2012
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 2013
    move-object v4, v1

    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_3

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_3

    .line 2014
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 2018
    :cond_3
    return-void

    .line 2011
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public beginTransaction()Landroidx/fragment/app/FragmentTransaction;
    .locals 5

    .prologue
    .line 809
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return-object v0
.end method

.method completeExecute(Landroidx/fragment/app/BackStackRecord;ZZZ)V
    .locals 17

    .prologue
    .line 2531
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object/from16 v1, p1

    .local v1, "record":Landroidx/fragment/app/BackStackRecord;
    move/from16 v2, p2

    .local v2, "isPop":Z
    move/from16 v3, p3

    .local v3, "runTransitions":Z
    move/from16 v4, p4

    .local v4, "moveToState":Z
    move v10, v2

    if-eqz v10, :cond_4

    .line 2532
    move-object v10, v1

    move v11, v4

    invoke-virtual {v10, v11}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    .line 2536
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v10

    .line 2537
    .local v5, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v10

    .line 2538
    .local v6, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move-object v10, v5

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 2539
    move-object v10, v6

    move v11, v2

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 2540
    move v10, v3

    if-eqz v10, :cond_0

    .line 2541
    move-object v10, v0

    move-object v11, v5

    move-object v12, v6

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static/range {v10 .. v15}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2543
    :cond_0
    move v10, v4

    if-eqz v10, :cond_1

    .line 2544
    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2547
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v10, :cond_6

    .line 2548
    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    move v7, v10

    .line 2549
    .local v7, "numActive":I
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i":I
    :goto_1
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_6

    .line 2552
    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v11, v8

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/Fragment;

    move-object v9, v10

    .line 2553
    .local v9, "fragment":Landroidx/fragment/app/Fragment;
    move-object v10, v9

    if-eqz v10, :cond_3

    move-object v10, v9

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v10, :cond_3

    move-object v10, v9

    iget-boolean v10, v10, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v10, :cond_3

    move-object v10, v1

    move-object v11, v9

    iget v11, v11, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 2554
    invoke-virtual {v10, v11}, Landroidx/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2555
    move-object v10, v9

    iget v10, v10, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 2556
    move-object v10, v9

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v11, v9

    iget v11, v11, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    .line 2558
    :cond_2
    move v10, v4

    if-eqz v10, :cond_5

    .line 2559
    move-object v10, v9

    const/4 v11, 0x0

    iput v11, v10, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 2549
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2534
    .end local v5    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .end local v6    # "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v7    # "numActive":I
    .end local v8    # "i":I
    .end local v9    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_4
    move-object v10, v1

    invoke-virtual {v10}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    goto/16 :goto_0

    .line 2561
    .restart local v5    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .restart local v6    # "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v7    # "numActive":I
    .restart local v8    # "i":I
    .restart local v9    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_5
    move-object v10, v9

    const/high16 v11, -0x40800000    # -1.0f

    iput v11, v10, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 2562
    move-object v10, v9

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_2

    .line 2567
    .end local v7    # "numActive":I
    .end local v8    # "i":I
    .end local v9    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_6
    return-void
.end method

.method completeShowHideFragment(Landroidx/fragment/app/Fragment;)V
    .locals 13

    .prologue
    .line 1714
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1715
    move-object v5, v0

    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v7

    move-object v8, v1

    iget-boolean v8, v8, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    move-object v9, v1

    .line 1716
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v9

    .line 1715
    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v5

    move-object v2, v5

    .line 1717
    .local v2, "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    move-object v5, v2

    if-eqz v5, :cond_5

    move-object v5, v2

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v5, :cond_5

    .line 1718
    move-object v5, v2

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    move-object v6, v1

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1719
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v5, :cond_4

    .line 1720
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1721
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 1742
    :goto_1
    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v6, v2

    invoke-static {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1743
    move-object v5, v2

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    .line 1759
    .end local v2    # "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    :cond_0
    :goto_2
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v5, :cond_1

    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v5, :cond_1

    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v5, :cond_1

    .line 1760
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1762
    :cond_1
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1763
    move-object v5, v1

    move-object v6, v1

    iget-boolean v6, v6, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 1764
    return-void

    .line 1715
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 1723
    .restart local v2    # "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    :cond_3
    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v3, v5

    .line 1724
    .local v3, "container":Landroid/view/ViewGroup;
    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v4, v5

    .line 1725
    .local v4, "animatingView":Landroid/view/View;
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1728
    move-object v5, v2

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v6, Landroidx/fragment/app/FragmentManagerImpl$4;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v1

    invoke-direct {v7, v8, v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl$4;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1738
    goto :goto_1

    .line 1740
    .end local v3    # "container":Landroid/view/ViewGroup;
    .end local v4    # "animatingView":Landroid/view/View;
    :cond_4
    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1745
    :cond_5
    move-object v5, v2

    if-eqz v5, :cond_6

    .line 1746
    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v6, v2

    invoke-static {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1747
    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v6, v2

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1748
    move-object v5, v2

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->start()V

    .line 1750
    :cond_6
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v5, :cond_7

    move-object v5, v1

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v5

    if-nez v5, :cond_7

    const/16 v5, 0x8

    :goto_3
    move v3, v5

    .line 1753
    .local v3, "visibility":I
    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1754
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1755
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    goto/16 :goto_2

    .line 1750
    .end local v3    # "visibility":I
    :cond_7
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public detachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 8

    .prologue
    .line 1983
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    sget-boolean v4, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "detach: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1984
    :cond_0
    move-object v4, v1

    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v4, :cond_3

    .line 1985
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 1986
    move-object v4, v1

    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v4, :cond_3

    .line 1988
    sget-boolean v4, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove from detach: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1989
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 1990
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 1991
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1992
    move-object v4, v1

    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_2

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_2

    .line 1993
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1995
    :cond_2
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 1998
    :cond_3
    return-void

    .line 1991
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public dispatchActivityCreated()V
    .locals 3

    .prologue
    .line 3227
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3228
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3229
    move-object v1, v0

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3230
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .prologue
    .line 3295
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "newConfig":Landroid/content/res/Configuration;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 3296
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 3297
    .local v3, "f":Landroidx/fragment/app/Fragment;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 3298
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3295
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3301
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 3377
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 3378
    const/4 v4, 0x0

    move v0, v4

    .line 3388
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :goto_0
    return v0

    .line 3380
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_1
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 3381
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 3382
    .local v3, "f":Landroidx/fragment/app/Fragment;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 3383
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3384
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 3380
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3388
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public dispatchCreate()V
    .locals 3

    .prologue
    .line 3221
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3222
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3223
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3224
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 11

    .prologue
    .line 3313
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "menu":Landroid/view/Menu;
    move-object v2, p2

    .local v2, "inflater":Landroid/view/MenuInflater;
    move-object v7, v0

    iget v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v8, 0x1

    if-ge v7, v8, :cond_0

    .line 3314
    const/4 v7, 0x0

    move v0, v7

    .line 3342
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :goto_0
    return v0

    .line 3316
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_0
    const/4 v7, 0x0

    move v3, v7

    .line 3317
    .local v3, "show":Z
    const/4 v7, 0x0

    move-object v4, v7

    .line 3318
    .local v4, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/Fragment;>;"
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 3319
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    move-object v6, v7

    .line 3320
    .local v6, "f":Landroidx/fragment/app/Fragment;
    move-object v7, v6

    if-eqz v7, :cond_2

    .line 3321
    move-object v7, v6

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3322
    const/4 v7, 0x1

    move v3, v7

    .line 3323
    move-object v7, v4

    if-nez v7, :cond_1

    .line 3324
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 3326
    :cond_1
    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 3318
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3331
    .end local v6    # "f":Landroidx/fragment/app/Fragment;
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    .line 3332
    const/4 v7, 0x0

    move v5, v7

    :goto_2
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 3333
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    move-object v6, v7

    .line 3334
    .restart local v6    # "f":Landroidx/fragment/app/Fragment;
    move-object v7, v4

    if-eqz v7, :cond_4

    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 3335
    :cond_4
    move-object v7, v6

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    .line 3332
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3340
    .end local v6    # "f":Landroidx/fragment/app/Fragment;
    :cond_6
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 3342
    move v7, v3

    move v0, v7

    goto :goto_0
.end method

.method public dispatchDestroy()V
    .locals 3

    .prologue
    .line 3258
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    .line 3259
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    .line 3260
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3261
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3262
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 3263
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    .line 3264
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 3

    .prologue
    .line 3254
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3255
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 5

    .prologue
    .line 3304
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3305
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    move-object v2, v3

    .line 3306
    .local v2, "f":Landroidx/fragment/app/Fragment;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 3307
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    .line 3304
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3310
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    :cond_1
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 6

    .prologue
    .line 3277
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move v1, p1

    .local v1, "isInMultiWindowMode":Z
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 3278
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 3279
    .local v3, "f":Landroidx/fragment/app/Fragment;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 3280
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 3277
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3283
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_1
    return-void
.end method

.method dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 10
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3503
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move-object v2, p2

    .local v2, "savedInstanceState":Landroid/os/Bundle;
    move v3, p3

    .local v3, "onlyRecursive":Z
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    .line 3504
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    move-object v4, v6

    .line 3505
    .local v4, "parentManager":Landroidx/fragment/app/FragmentManager;
    move-object v6, v4

    instance-of v6, v6, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v6, :cond_0

    .line 3506
    move-object v6, v4

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    .line 3507
    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3510
    .end local v4    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v5, v6

    .line 3511
    .local v5, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v6, :cond_2

    .line 3512
    :cond_1
    move-object v6, v5

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 3514
    :cond_2
    goto :goto_0

    .line 3515
    .end local v5    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_3
    return-void
.end method

.method dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 10
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3455
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move v3, p3

    .local v3, "onlyRecursive":Z
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    .line 3456
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    move-object v4, v6

    .line 3457
    .local v4, "parentManager":Landroidx/fragment/app/FragmentManager;
    move-object v6, v4

    instance-of v6, v6, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v6, :cond_0

    .line 3458
    move-object v6, v4

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    .line 3459
    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 3462
    .end local v4    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v5, v6

    .line 3463
    .local v5, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v6, :cond_2

    .line 3464
    :cond_1
    move-object v6, v5

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .line 3466
    :cond_2
    goto :goto_0

    .line 3467
    .end local v5    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_3
    return-void
.end method

.method dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 10
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3487
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move-object v2, p2

    .local v2, "savedInstanceState":Landroid/os/Bundle;
    move v3, p3

    .local v3, "onlyRecursive":Z
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    .line 3488
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    move-object v4, v6

    .line 3489
    .local v4, "parentManager":Landroidx/fragment/app/FragmentManager;
    move-object v6, v4

    instance-of v6, v6, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v6, :cond_0

    .line 3490
    move-object v6, v4

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    .line 3491
    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3494
    .end local v4    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v5, v6

    .line 3495
    .local v5, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v6, :cond_2

    .line 3496
    :cond_1
    move-object v6, v5

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 3498
    :cond_2
    goto :goto_0

    .line 3499
    .end local v5    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_3
    return-void
.end method

.method dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3625
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move v2, p2

    .local v2, "onlyRecursive":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 3626
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v3, v5

    .line 3627
    .local v3, "parentManager":Landroidx/fragment/app/FragmentManager;
    move-object v5, v3

    instance-of v5, v5, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v5, :cond_0

    .line 3628
    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v1

    const/4 v7, 0x1

    .line 3629
    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 3632
    .end local v3    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v4, v5

    .line 3633
    .local v4, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v5, :cond_2

    .line 3634
    :cond_1
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3636
    :cond_2
    goto :goto_0

    .line 3637
    .end local v4    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_3
    return-void
.end method

.method dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3640
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move v2, p2

    .local v2, "onlyRecursive":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 3641
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v3, v5

    .line 3642
    .local v3, "parentManager":Landroidx/fragment/app/FragmentManager;
    move-object v5, v3

    instance-of v5, v5, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v5, :cond_0

    .line 3643
    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v1

    const/4 v7, 0x1

    .line 3644
    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V

    .line 3647
    .end local v3    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v4, v5

    .line 3648
    .local v4, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v5, :cond_2

    .line 3649
    :cond_1
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3651
    :cond_2
    goto :goto_0

    .line 3652
    .end local v4    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3564
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move v2, p2

    .local v2, "onlyRecursive":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 3565
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v3, v5

    .line 3566
    .local v3, "parentManager":Landroidx/fragment/app/FragmentManager;
    move-object v5, v3

    instance-of v5, v5, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v5, :cond_0

    .line 3567
    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v1

    const/4 v7, 0x1

    .line 3568
    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V

    .line 3571
    .end local v3    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v4, v5

    .line 3572
    .local v4, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v5, :cond_2

    .line 3573
    :cond_1
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3575
    :cond_2
    goto :goto_0

    .line 3576
    .end local v4    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 10
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3439
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move v3, p3

    .local v3, "onlyRecursive":Z
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    .line 3440
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    move-object v4, v6

    .line 3441
    .local v4, "parentManager":Landroidx/fragment/app/FragmentManager;
    move-object v6, v4

    instance-of v6, v6, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v6, :cond_0

    .line 3442
    move-object v6, v4

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    .line 3443
    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 3446
    .end local v4    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v5, v6

    .line 3447
    .local v5, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v6, :cond_2

    .line 3448
    :cond_1
    move-object v6, v5

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .line 3450
    :cond_2
    goto :goto_0

    .line 3451
    .end local v5    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_3
    return-void
.end method

.method dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 10
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3471
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move-object v2, p2

    .local v2, "savedInstanceState":Landroid/os/Bundle;
    move v3, p3

    .local v3, "onlyRecursive":Z
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    .line 3472
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    move-object v4, v6

    .line 3473
    .local v4, "parentManager":Landroidx/fragment/app/FragmentManager;
    move-object v6, v4

    instance-of v6, v6, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v6, :cond_0

    .line 3474
    move-object v6, v4

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    .line 3475
    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3478
    .end local v4    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v5, v6

    .line 3479
    .local v5, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v6, :cond_2

    .line 3480
    :cond_1
    move-object v6, v5

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 3482
    :cond_2
    goto :goto_0

    .line 3483
    .end local v5    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_3
    return-void
.end method

.method dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3549
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move v2, p2

    .local v2, "onlyRecursive":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 3550
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v3, v5

    .line 3551
    .local v3, "parentManager":Landroidx/fragment/app/FragmentManager;
    move-object v5, v3

    instance-of v5, v5, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v5, :cond_0

    .line 3552
    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v1

    const/4 v7, 0x1

    .line 3553
    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V

    .line 3556
    .end local v3    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v4, v5

    .line 3557
    .local v4, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v5, :cond_2

    .line 3558
    :cond_1
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3560
    :cond_2
    goto :goto_0

    .line 3561
    .end local v4    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_3
    return-void
.end method

.method dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 10
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3595
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move-object v2, p2

    .local v2, "outState":Landroid/os/Bundle;
    move v3, p3

    .local v3, "onlyRecursive":Z
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    .line 3596
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    move-object v4, v6

    .line 3597
    .local v4, "parentManager":Landroidx/fragment/app/FragmentManager;
    move-object v6, v4

    instance-of v6, v6, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v6, :cond_0

    .line 3598
    move-object v6, v4

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    .line 3599
    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3602
    .end local v4    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v5, v6

    .line 3603
    .local v5, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-boolean v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v6, :cond_2

    .line 3604
    :cond_1
    move-object v6, v5

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 3606
    :cond_2
    goto :goto_0

    .line 3607
    .end local v5    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_3
    return-void
.end method

.method dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3534
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move v2, p2

    .local v2, "onlyRecursive":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 3535
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v3, v5

    .line 3536
    .local v3, "parentManager":Landroidx/fragment/app/FragmentManager;
    move-object v5, v3

    instance-of v5, v5, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v5, :cond_0

    .line 3537
    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v1

    const/4 v7, 0x1

    .line 3538
    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V

    .line 3541
    .end local v3    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v4, v5

    .line 3542
    .local v4, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v5, :cond_2

    .line 3543
    :cond_1
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3545
    :cond_2
    goto :goto_0

    .line 3546
    .end local v4    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_3
    return-void
.end method

.method dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3579
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move v2, p2

    .local v2, "onlyRecursive":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 3580
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v3, v5

    .line 3581
    .local v3, "parentManager":Landroidx/fragment/app/FragmentManager;
    move-object v5, v3

    instance-of v5, v5, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v5, :cond_0

    .line 3582
    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v1

    const/4 v7, 0x1

    .line 3583
    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V

    .line 3586
    .end local v3    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v4, v5

    .line 3587
    .local v4, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v5, :cond_2

    .line 3588
    :cond_1
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3590
    :cond_2
    goto :goto_0

    .line 3591
    .end local v4    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_3
    return-void
.end method

.method dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 12
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3519
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move-object v2, p2

    .local v2, "v":Landroid/view/View;
    move-object v3, p3

    .local v3, "savedInstanceState":Landroid/os/Bundle;
    move/from16 v4, p4

    .local v4, "onlyRecursive":Z
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_0

    .line 3520
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    move-object v5, v7

    .line 3521
    .local v5, "parentManager":Landroidx/fragment/app/FragmentManager;
    move-object v7, v5

    instance-of v7, v7, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v7, :cond_0

    .line 3522
    move-object v7, v5

    check-cast v7, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    const/4 v11, 0x1

    .line 3523
    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 3526
    .end local v5    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_0
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v6, v7

    .line 3527
    .local v6, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    move v7, v4

    if-eqz v7, :cond_1

    move-object v7, v6

    iget-boolean v7, v7, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v7, :cond_2

    .line 3528
    :cond_1
    move-object v7, v6

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .line 3530
    :cond_2
    goto :goto_0

    .line 3531
    .end local v6    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_3
    return-void
.end method

.method dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3610
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move v2, p2

    .local v2, "onlyRecursive":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 3611
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v3, v5

    .line 3612
    .local v3, "parentManager":Landroidx/fragment/app/FragmentManager;
    move-object v5, v3

    instance-of v5, v5, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v5, :cond_0

    .line 3613
    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl;

    move-object v6, v1

    const/4 v7, 0x1

    .line 3614
    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 3617
    .end local v3    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v4, v5

    .line 3618
    .local v4, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v5, :cond_2

    .line 3619
    :cond_1
    move-object v5, v4

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3621
    :cond_2
    goto :goto_0

    .line 3622
    .end local v4    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_3
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 3362
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "item":Landroid/view/MenuItem;
    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 3363
    const/4 v4, 0x0

    move v0, v4

    .line 3373
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :goto_0
    return v0

    .line 3365
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_1
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 3366
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 3367
    .local v3, "f":Landroidx/fragment/app/Fragment;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 3368
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3369
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 3365
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3373
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 6

    .prologue
    .line 3392
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "menu":Landroid/view/Menu;
    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 3393
    .line 3401
    :goto_0
    return-void

    .line 3395
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_1
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 3396
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 3397
    .local v3, "f":Landroidx/fragment/app/Fragment;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 3398
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3395
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3401
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_2
    goto :goto_0
.end method

.method public dispatchPause()V
    .locals 3

    .prologue
    .line 3245
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3246
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 6

    .prologue
    .line 3286
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move v1, p1

    .local v1, "isInPictureInPictureMode":Z
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 3287
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 3288
    .local v3, "f":Landroidx/fragment/app/Fragment;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 3289
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 3286
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3292
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_1
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .prologue
    .line 3346
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "menu":Landroid/view/Menu;
    move-object v5, v0

    iget v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    .line 3347
    const/4 v5, 0x0

    move v0, v5

    .line 3358
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :goto_0
    return v0

    .line 3349
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    .line 3350
    .local v2, "show":Z
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 3351
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    move-object v4, v5

    .line 3352
    .local v4, "f":Landroidx/fragment/app/Fragment;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 3353
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3354
    const/4 v5, 0x1

    move v2, v5

    .line 3350
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3358
    .end local v4    # "f":Landroidx/fragment/app/Fragment;
    :cond_2
    move v5, v2

    move v0, v5

    goto :goto_0
.end method

.method public dispatchResume()V
    .locals 3

    .prologue
    .line 3239
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3240
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3241
    move-object v1, v0

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3242
    return-void
.end method

.method public dispatchStart()V
    .locals 3

    .prologue
    .line 3233
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3234
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3235
    move-object v1, v0

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3236
    return-void
.end method

.method public dispatchStop()V
    .locals 3

    .prologue
    .line 3249
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3250
    move-object v1, v0

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3251
    return-void
.end method

.method doPendingDeferredStart()V
    .locals 3

    .prologue
    .line 2724
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v1, :cond_0

    .line 2725
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 2726
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 2728
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 1020
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object/from16 v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "fd":Ljava/io/FileDescriptor;
    move-object/from16 v3, p3

    .local v3, "writer":Ljava/io/PrintWriter;
    move-object/from16 v4, p4

    .local v4, "args":[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 1023
    .local v5, "innerPrefix":Ljava/lang/String;
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v11, :cond_1

    .line 1024
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    move v6, v11

    .line 1025
    .local v6, "N":I
    move v11, v6

    if-lez v11, :cond_1

    .line 1026
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "Active Fragments in "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    move-object v11, v3

    move-object v12, v0

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1028
    move-object v11, v3

    const-string/jumbo v12, ":"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    const/4 v11, 0x0

    move v7, v11

    .local v7, "i":I
    :goto_0
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_1

    .line 1030
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/Fragment;

    move-object v8, v11

    .line 1031
    .local v8, "f":Landroidx/fragment/app/Fragment;
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1032
    move-object v11, v3

    const-string/jumbo v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1033
    move-object v11, v8

    if-eqz v11, :cond_0

    .line 1034
    move-object v11, v8

    move-object v12, v5

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1029
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1040
    .end local v6    # "N":I
    .end local v7    # "i":I
    .end local v8    # "f":Landroidx/fragment/app/Fragment;
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 1041
    .restart local v6    # "N":I
    move v11, v6

    if-lez v11, :cond_2

    .line 1042
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "Added Fragments:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    const/4 v11, 0x0

    move v7, v11

    .restart local v7    # "i":I
    :goto_1
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_2

    .line 1044
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/Fragment;

    move-object v8, v11

    .line 1045
    .restart local v8    # "f":Landroidx/fragment/app/Fragment;
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    move-object v11, v3

    const-string/jumbo v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1048
    move-object v11, v3

    const-string/jumbo v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1049
    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1053
    .end local v7    # "i":I
    .end local v8    # "f":Landroidx/fragment/app/Fragment;
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v11, :cond_3

    .line 1054
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 1055
    move v11, v6

    if-lez v11, :cond_3

    .line 1056
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "Fragments Created Menus:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    const/4 v11, 0x0

    move v7, v11

    .restart local v7    # "i":I
    :goto_2
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_3

    .line 1058
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/Fragment;

    move-object v8, v11

    .line 1059
    .restart local v8    # "f":Landroidx/fragment/app/Fragment;
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1060
    move-object v11, v3

    const-string/jumbo v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1065
    .end local v7    # "i":I
    .end local v8    # "f":Landroidx/fragment/app/Fragment;
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    .line 1066
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 1067
    move v11, v6

    if-lez v11, :cond_4

    .line 1068
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "Back Stack:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    const/4 v11, 0x0

    move v7, v11

    .restart local v7    # "i":I
    :goto_3
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_4

    .line 1070
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/BackStackRecord;

    move-object v8, v11

    .line 1071
    .local v8, "bs":Landroidx/fragment/app/BackStackRecord;
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1072
    move-object v11, v3

    const-string/jumbo v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v12}, Landroidx/fragment/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    move-object v11, v8

    move-object v12, v5

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1069
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1078
    .end local v7    # "i":I
    .end local v8    # "bs":Landroidx/fragment/app/BackStackRecord;
    :cond_4
    move-object v11, v0

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v7, v12

    monitor-enter v11

    .line 1079
    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v11, :cond_5

    .line 1080
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 1081
    move v11, v6

    if-lez v11, :cond_5

    .line 1082
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "Back Stack Indices:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    const/4 v11, 0x0

    move v8, v11

    .local v8, "i":I
    :goto_4
    move v11, v8

    move v12, v6

    if-ge v11, v12, :cond_5

    .line 1084
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/BackStackRecord;

    move-object v9, v11

    .line 1085
    .local v9, "bs":Landroidx/fragment/app/BackStackRecord;
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1086
    move-object v11, v3

    const-string/jumbo v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1083
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1091
    .end local v8    # "i":I
    .end local v9    # "bs":Landroidx/fragment/app/BackStackRecord;
    :cond_5
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v11, :cond_6

    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 1092
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "mAvailBackStackIndices: "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    :cond_6
    move-object v11, v7

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v11, :cond_7

    .line 1098
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 1099
    move v11, v6

    if-lez v11, :cond_7

    .line 1100
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "Pending Actions:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    const/4 v11, 0x0

    move v7, v11

    .restart local v7    # "i":I
    :goto_5
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_7

    .line 1102
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;

    move-object v8, v11

    .line 1103
    .local v8, "r":Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1104
    move-object v11, v3

    const-string/jumbo v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1101
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1095
    .end local v7    # "i":I
    .end local v8    # "r":Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v7

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v10

    throw v11

    .line 1109
    :cond_7
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "FragmentManager misc state:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "  mHost="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1111
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "  mContainer="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1112
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v11, :cond_8

    .line 1113
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "  mParent="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1115
    :cond_8
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "  mCurState="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1116
    move-object v11, v3

    const-string/jumbo v12, " mStateSaved="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-boolean v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Z)V

    .line 1117
    move-object v11, v3

    const-string/jumbo v12, " mStopped="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-boolean v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Z)V

    .line 1118
    move-object v11, v3

    const-string/jumbo v12, " mDestroyed="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-boolean v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Z)V

    .line 1119
    move-object v11, v0

    iget-boolean v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v11, :cond_9

    .line 1120
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "  mNeedMenuInvalidate="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1121
    move-object v11, v3

    move-object v12, v0

    iget-boolean v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Z)V

    .line 1123
    :cond_9
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v11, :cond_a

    .line 1124
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string/jumbo v12, "  mNoTransactionsBecause="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    :cond_a
    return-void
.end method

.method public enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V
    .locals 9

    .prologue
    .line 2105
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "action":Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;
    move v2, p2

    .local v2, "allowStateLoss":Z
    move v5, v2

    if-nez v5, :cond_0

    .line 2106
    move-object v5, v0

    invoke-direct {v5}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 2108
    :cond_0
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 2109
    move-object v5, v0

    :try_start_0
    iget-boolean v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v5, :cond_3

    .line 2110
    :cond_1
    move v5, v2

    if-eqz v5, :cond_2

    .line 2112
    move-object v5, v3

    monitor-exit v5

    .line 2122
    :goto_0
    return-void

    .line 2114
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "Activity has been destroyed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2121
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5

    .line 2116
    :cond_3
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    .line 2117
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 2119
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 2120
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManagerImpl;->scheduleCommit()V

    .line 2121
    move-object v5, v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2122
    goto :goto_0
.end method

.method ensureInflatedFragmentView(Landroidx/fragment/app/Fragment;)V
    .locals 7

    .prologue
    .line 1688
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v2, :cond_1

    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    if-nez v2, :cond_1

    .line 1689
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 1691
    move-object v2, v1

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1692
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1693
    move-object v2, v1

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1694
    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1695
    :cond_0
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v4, v1

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1696
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1701
    :cond_1
    :goto_0
    return-void

    .line 1698
    :cond_2
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    goto :goto_0
.end method

.method public execPendingActions()Z
    .locals 6

    .prologue
    .line 2267
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 2269
    const/4 v3, 0x0

    move v1, v3

    .line 2270
    .local v1, "didSomething":Z
    :goto_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2271
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2273
    move-object v3, v0

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2275
    move-object v3, v0

    invoke-direct {v3}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    .line 2276
    .line 2277
    const/4 v3, 0x1

    move v1, v3

    goto :goto_0

    .line 2275
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    invoke-direct {v3}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    move-object v3, v2

    throw v3

    .line 2280
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2281
    move-object v3, v0

    invoke-direct {v3}, Landroidx/fragment/app/FragmentManagerImpl;->burpActive()V

    .line 2283
    move v3, v1

    move v0, v3

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return v0
.end method

.method public execSingleAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V
    .locals 7

    .prologue
    .line 2235
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "action":Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;
    move v2, p2

    .local v2, "allowStateLoss":Z
    move v4, v2

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v4, :cond_1

    .line 2237
    .line 2251
    :cond_0
    :goto_0
    return-void

    .line 2239
    :cond_1
    move-object v4, v0

    move v5, v2

    invoke-direct {v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 2240
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-interface {v4, v5, v6}, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2241
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2243
    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2245
    move-object v4, v0

    invoke-direct {v4}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    .line 2246
    .line 2249
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2250
    move-object v4, v0

    invoke-direct {v4}, Landroidx/fragment/app/FragmentManagerImpl;->burpActive()V

    .line 2251
    goto :goto_0

    .line 2245
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    invoke-direct {v4}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    move-object v4, v3

    throw v4
.end method

.method public executePendingTransactions()Z
    .locals 3

    .prologue
    .line 814
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v2

    move v1, v2

    .line 815
    .local v1, "updates":Z
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 816
    move v2, v1

    move v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return v0
.end method

.method public findFragmentById(I)Landroidx/fragment/app/Fragment;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2024
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move v1, p1

    .local v1, "id":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 2025
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 2026
    .local v3, "f":Landroidx/fragment/app/Fragment;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    iget v4, v4, Landroidx/fragment/app/Fragment;->mFragmentId:I

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 2027
    move-object v4, v3

    move-object v0, v4

    .line 2039
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :goto_1
    return-object v0

    .line 2024
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    .restart local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2030
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v4, :cond_3

    .line 2032
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_2
    move v4, v2

    if-ltz v4, :cond_3

    .line 2033
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 2034
    .restart local v3    # "f":Landroidx/fragment/app/Fragment;
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    iget v4, v4, Landroidx/fragment/app/Fragment;->mFragmentId:I

    move v5, v1

    if-ne v4, v5, :cond_2

    .line 2035
    move-object v4, v3

    move-object v0, v4

    goto :goto_1

    .line 2032
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 2039
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_3
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 2045
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "tag":Ljava/lang/String;
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 2047
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 2048
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 2049
    .local v3, "f":Landroidx/fragment/app/Fragment;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2050
    move-object v4, v3

    move-object v0, v4

    .line 2063
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    .end local v2    # "i":I
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :goto_1
    return-object v0

    .line 2047
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    .restart local v2    # "i":I
    .restart local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2054
    .end local v2    # "i":I
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v4, :cond_3

    move-object v4, v1

    if-eqz v4, :cond_3

    .line 2056
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .restart local v2    # "i":I
    :goto_2
    move v4, v2

    if-ltz v4, :cond_3

    .line 2057
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 2058
    .restart local v3    # "f":Landroidx/fragment/app/Fragment;
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2059
    move-object v4, v3

    move-object v0, v4

    goto :goto_1

    .line 2056
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 2063
    .end local v2    # "i":I
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_3
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 7

    .prologue
    .line 2067
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "who":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    move-object v4, v1

    if-eqz v4, :cond_1

    .line 2068
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 2069
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 2070
    .local v3, "f":Landroidx/fragment/app/Fragment;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v3, v5

    if-eqz v4, :cond_0

    .line 2071
    move-object v4, v3

    move-object v0, v4

    .line 2075
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    .end local v2    # "i":I
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :goto_1
    return-object v0

    .line 2068
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    .restart local v2    # "i":I
    .restart local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2075
    .end local v2    # "i":I
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public freeBackStackIndex(I)V
    .locals 8

    .prologue
    .line 2189
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move v1, p1

    .local v1, "index":I
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 2190
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2191
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 2192
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 2194
    :cond_0
    sget-boolean v4, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Freeing back stack index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2195
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 2196
    move-object v4, v2

    monitor-exit v4

    .line 2197
    return-void

    .line 2196
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method getActiveFragmentCount()I
    .locals 2

    .prologue
    .line 978
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 979
    const/4 v1, 0x0

    move v0, v1

    .line 981
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method getActiveFragments()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 961
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v4, :cond_0

    .line 962
    const/4 v4, 0x0

    move-object v0, v4

    .line 969
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    .local v1, "count":I
    .local v2, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/Fragment;>;"
    .local v3, "i":I
    :goto_0
    return-object v0

    .line 964
    .end local v1    # "count":I
    .end local v2    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/Fragment;>;"
    .end local v3    # "i":I
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v1, v4

    .line 965
    .restart local v1    # "count":I
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 966
    .restart local v2    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/Fragment;>;"
    const/4 v4, 0x0

    move v3, v4

    .restart local v3    # "i":I
    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 967
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 966
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 969
    :cond_1
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method public getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;
    .locals 4

    .prologue
    .line 902
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 2

    .prologue
    .line 897
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 932
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "bundle":Landroid/os/Bundle;
    move-object v2, p2

    .local v2, "key":Ljava/lang/String;
    move-object v5, v1

    move-object v6, v2

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    move v3, v5

    .line 933
    .local v3, "index":I
    move v5, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 934
    const/4 v5, 0x0

    move-object v0, v5

    .line 941
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :goto_0
    return-object v0

    .line 936
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    move-object v4, v5

    .line 937
    .local v4, "f":Landroidx/fragment/app/Fragment;
    move-object v5, v4

    if-nez v5, :cond_1

    .line 938
    move-object v5, v0

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Fragment no longer exists for key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 941
    :cond_1
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public getFragments()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 946
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 947
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .line 950
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :goto_0
    return-object v0

    .line 949
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 950
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 951
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .locals 2

    .prologue
    .line 3796
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return-object v0
.end method

.method public getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 3416
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return-object v0
.end method

.method public hideFragment(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .prologue
    .line 1957
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    sget-boolean v2, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hide: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1958
    :cond_0
    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v2, :cond_1

    .line 1959
    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1962
    move-object v2, v1

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1964
    :cond_1
    return-void

    .line 1962
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 2

    .prologue
    .line 1000
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return v0
.end method

.method isStateAtLeast(I)Z
    .locals 4

    .prologue
    .line 1314
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move v1, p1

    .local v1, "state":I
    move-object v2, v0

    iget v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    move v3, v1

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isStateSaved()Z
    .locals 2

    .prologue
    .line 2094
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 18

    .prologue
    .line 1160
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object/from16 v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move/from16 v2, p2

    .local v2, "transit":I
    move/from16 v3, p3

    .local v3, "enter":Z
    move/from16 v4, p4

    .local v4, "transitionStyle":I
    move-object v12, v1

    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v12

    move v5, v12

    .line 1161
    .local v5, "nextAnim":I
    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v5

    invoke-virtual {v12, v13, v14, v15}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v12

    move-object v6, v12

    .line 1162
    .local v6, "animation":Landroid/view/animation/Animation;
    move-object v12, v6

    if-eqz v12, :cond_0

    .line 1163
    new-instance v12, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v6

    invoke-direct {v13, v14}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    move-object v0, v12

    .line 1253
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :goto_0
    return-object v0

    .line 1166
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_0
    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v5

    invoke-virtual {v12, v13, v14, v15}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v12

    move-object v7, v12

    .line 1167
    .local v7, "animator":Landroid/animation/Animator;
    move-object v12, v7

    if-eqz v12, :cond_1

    .line 1168
    new-instance v12, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v7

    invoke-direct {v13, v14}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    move-object v0, v12

    goto :goto_0

    .line 1171
    :cond_1
    move v12, v5

    if-eqz v12, :cond_4

    .line 1172
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move v13, v5

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 1173
    .local v8, "dir":Ljava/lang/String;
    const-string/jumbo v12, "anim"

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    move v9, v12

    .line 1174
    .local v9, "isAnim":Z
    const/4 v12, 0x0

    move v10, v12

    .line 1175
    .local v10, "successfulLoad":Z
    move v12, v9

    if-eqz v12, :cond_3

    .line 1178
    move-object v12, v0

    :try_start_0
    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    move v13, v5

    invoke-static {v12, v13}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    move-object v6, v12

    .line 1179
    move-object v12, v6

    if-eqz v12, :cond_2

    .line 1180
    new-instance v12, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v6

    invoke-direct {v13, v14}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v12

    goto :goto_0

    .line 1183
    :cond_2
    const/4 v12, 0x1

    move v10, v12

    .line 1188
    .line 1190
    :cond_3
    :goto_1
    move v12, v10

    if-nez v12, :cond_4

    .line 1193
    move-object v12, v0

    :try_start_1
    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    move v13, v5

    invoke-static {v12, v13}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v12

    move-object v7, v12

    .line 1194
    move-object v12, v7

    if-eqz v12, :cond_4

    .line 1195
    new-instance v12, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v7

    invoke-direct {v13, v14}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v12

    goto :goto_0

    .line 1184
    :catch_0
    move-exception v12

    move-object v11, v12

    .line 1185
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    move-object v12, v11

    throw v12

    .line 1186
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v12

    move-object v11, v12

    goto :goto_1

    .line 1207
    .line 1211
    .end local v8    # "dir":Ljava/lang/String;
    .end local v9    # "isAnim":Z
    .end local v10    # "successfulLoad":Z
    :cond_4
    move v12, v2

    if-nez v12, :cond_6

    .line 1212
    const/4 v12, 0x0

    move-object v0, v12

    goto/16 :goto_0

    .line 1197
    .restart local v8    # "dir":Ljava/lang/String;
    .restart local v9    # "isAnim":Z
    .restart local v10    # "successfulLoad":Z
    :catch_2
    move-exception v12

    move-object v11, v12

    .line 1198
    .local v11, "e":Ljava/lang/RuntimeException;
    move v12, v9

    if-eqz v12, :cond_5

    .line 1200
    move-object v12, v11

    throw v12

    .line 1203
    :cond_5
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    move v13, v5

    invoke-static {v12, v13}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v12

    move-object v6, v12

    .line 1204
    move-object v12, v6

    if-eqz v12, :cond_4

    .line 1205
    new-instance v12, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v6

    invoke-direct {v13, v14}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    move-object v0, v12

    goto/16 :goto_0

    .line 1215
    .end local v8    # "dir":Ljava/lang/String;
    .end local v9    # "isAnim":Z
    .end local v10    # "successfulLoad":Z
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :cond_6
    move v12, v2

    move v13, v3

    invoke-static {v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v12

    move v8, v12

    .line 1216
    .local v8, "styleIndex":I
    move v12, v8

    if-gez v12, :cond_7

    .line 1217
    const/4 v12, 0x0

    move-object v0, v12

    goto/16 :goto_0

    .line 1220
    :cond_7
    move v12, v8

    packed-switch v12, :pswitch_data_0

    .line 1236
    move v12, v4

    if-nez v12, :cond_8

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1237
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result v12

    move v4, v12

    .line 1239
    :cond_8
    move v12, v4

    if-nez v12, :cond_9

    .line 1240
    const/4 v12, 0x0

    move-object v0, v12

    goto/16 :goto_0

    .line 1222
    :pswitch_0
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x3f900000    # 1.125f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v12 .. v16}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 1224
    :pswitch_1
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f79999a    # 0.975f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 1226
    :pswitch_2
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x3f79999a    # 0.975f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v12 .. v16}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 1228
    :pswitch_3
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f89999a    # 1.075f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 1230
    :pswitch_4
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v12, v13, v14}, Landroidx/fragment/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 1232
    :pswitch_5
    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroidx/fragment/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 1253
    :cond_9
    const/4 v12, 0x0

    move-object v0, v12

    goto/16 :goto_0

    .line 1220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method makeActive(Landroidx/fragment/app/Fragment;)V
    .locals 9

    .prologue
    .line 1886
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move-object v2, v1

    iget v2, v2, Landroidx/fragment/app/Fragment;->mIndex:I

    if-ltz v2, :cond_0

    .line 1887
    .line 1896
    :goto_0
    return-void

    .line 1890
    :cond_0
    move-object v2, v1

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/Fragment;->setIndex(ILandroidx/fragment/app/Fragment;)V

    .line 1891
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    .line 1892
    move-object v2, v0

    new-instance v3, Landroid/util/SparseArray;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 1894
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move-object v3, v1

    iget v3, v3, Landroidx/fragment/app/Fragment;->mIndex:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1895
    sget-boolean v2, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Allocated fragment index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1896
    :cond_2
    goto :goto_0
.end method

.method makeInactive(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .prologue
    .line 1899
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move-object v2, v1

    iget v2, v2, Landroidx/fragment/app/Fragment;->mIndex:I

    if-gez v2, :cond_0

    .line 1900
    .line 1909
    :goto_0
    return-void

    .line 1903
    :cond_0
    sget-boolean v2, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Freeing fragment index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1906
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move-object v3, v1

    iget v3, v3, Landroidx/fragment/app/Fragment;->mIndex:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1908
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->initState()V

    .line 1909
    goto :goto_0
.end method

.method moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V
    .locals 14

    .prologue
    .line 1773
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move-object v8, v1

    if-nez v8, :cond_0

    .line 1774
    .line 1824
    :goto_0
    return-void

    .line 1776
    :cond_0
    move-object v8, v0

    iget v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    move v2, v8

    .line 1777
    .local v2, "nextState":I
    move-object v8, v1

    iget-boolean v8, v8, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v8, :cond_1

    .line 1778
    move-object v8, v1

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1779
    move v8, v2

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v2, v8

    .line 1784
    :cond_1
    :goto_1
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v1

    invoke-virtual {v11}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v11

    move-object v12, v1

    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1786
    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 1788
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentUnder(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v8

    move-object v3, v8

    .line 1789
    .local v3, "underFragment":Landroidx/fragment/app/Fragment;
    move-object v8, v3

    if-eqz v8, :cond_2

    .line 1790
    move-object v8, v3

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v4, v8

    .line 1792
    .local v4, "underView":Landroid/view/View;
    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v5, v8

    .line 1793
    .local v5, "container":Landroid/view/ViewGroup;
    move-object v8, v5

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    move v6, v8

    .line 1794
    .local v6, "underIndex":I
    move-object v8, v5

    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    move v7, v8

    .line 1795
    .local v7, "viewIndex":I
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_2

    .line 1796
    move-object v8, v5

    move v9, v7

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1797
    move-object v8, v5

    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1800
    .end local v4    # "underView":Landroid/view/View;
    .end local v5    # "container":Landroid/view/ViewGroup;
    .end local v6    # "underIndex":I
    .end local v7    # "viewIndex":I
    :cond_2
    move-object v8, v1

    iget-boolean v8, v8, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v8, :cond_4

    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    .line 1802
    move-object v8, v1

    iget v8, v8, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 1803
    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1805
    :cond_3
    move-object v8, v1

    const/4 v9, 0x0

    iput v9, v8, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 1806
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 1808
    move-object v8, v0

    move-object v9, v1

    move-object v10, v1

    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v10

    const/4 v11, 0x1

    move-object v12, v1

    .line 1809
    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v12

    .line 1808
    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v8

    move-object v4, v8

    .line 1810
    .local v4, "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    move-object v8, v4

    if-eqz v8, :cond_4

    .line 1811
    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v9, v4

    invoke-static {v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1812
    move-object v8, v4

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v8, :cond_7

    .line 1813
    move-object v8, v1

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v9, v4

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1821
    .end local v3    # "underFragment":Landroidx/fragment/app/Fragment;
    .end local v4    # "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    :cond_4
    :goto_2
    move-object v8, v1

    iget-boolean v8, v8, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v8, :cond_5

    .line 1822
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->completeShowHideFragment(Landroidx/fragment/app/Fragment;)V

    .line 1824
    :cond_5
    goto/16 :goto_0

    .line 1781
    :cond_6
    move v8, v2

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v2, v8

    goto/16 :goto_1

    .line 1815
    .restart local v3    # "underFragment":Landroidx/fragment/app/Fragment;
    .restart local v4    # "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    :cond_7
    move-object v8, v4

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1816
    move-object v8, v4

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    goto :goto_2
.end method

.method moveToState(IZ)V
    .locals 11

    .prologue
    .line 1836
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move v1, p1

    .local v1, "newState":I
    move v2, p2

    .local v2, "always":Z
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v7, :cond_0

    move v7, v1

    if-eqz v7, :cond_0

    .line 1837
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "No activity"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1840
    :cond_0
    move v7, v2

    if-nez v7, :cond_1

    move v7, v1

    move-object v8, v0

    iget v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    if-ne v7, v8, :cond_1

    .line 1841
    .line 1872
    :goto_0
    return-void

    .line 1844
    :cond_1
    move-object v7, v0

    move v8, v1

    iput v8, v7, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    .line 1846
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v7, :cond_6

    .line 1849
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v7

    .line 1850
    .local v3, "numAdded":I
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_1
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_2

    .line 1851
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    move-object v5, v7

    .line 1852
    .local v5, "f":Landroidx/fragment/app/Fragment;
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroidx/fragment/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    .line 1850
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1857
    .end local v5    # "f":Landroidx/fragment/app/Fragment;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    move v4, v7

    .line 1858
    .local v4, "numActive":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_2
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_5

    .line 1859
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    move-object v6, v7

    .line 1860
    .local v6, "f":Landroidx/fragment/app/Fragment;
    move-object v7, v6

    if-eqz v7, :cond_4

    move-object v7, v6

    iget-boolean v7, v7, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-nez v7, :cond_3

    move-object v7, v6

    iget-boolean v7, v7, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v7, :cond_4

    :cond_3
    move-object v7, v6

    iget-boolean v7, v7, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-nez v7, :cond_4

    .line 1861
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/fragment/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    .line 1858
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1865
    .end local v6    # "f":Landroidx/fragment/app/Fragment;
    :cond_5
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1867
    move-object v7, v0

    iget-boolean v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v7, :cond_6

    move-object v7, v0

    iget v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    .line 1868
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1869
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1872
    .end local v3    # "numAdded":I
    .end local v4    # "numActive":I
    .end local v5    # "i":I
    :cond_6
    goto :goto_0
.end method

.method moveToState(Landroidx/fragment/app/Fragment;)V
    .locals 8

    .prologue
    .line 1684
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1685
    return-void
.end method

.method moveToState(Landroidx/fragment/app/Fragment;IIIZ)V
    .locals 16

    .prologue
    .line 1321
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object/from16 v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move/from16 v2, p2

    .local v2, "newState":I
    move/from16 v3, p3

    .local v3, "transit":I
    move/from16 v4, p4

    .local v4, "transitionStyle":I
    move/from16 v5, p5

    .local v5, "keepActive":Z
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v9, :cond_0

    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v9, :cond_1

    :cond_0
    move v9, v2

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 1322
    const/4 v9, 0x1

    move v2, v9

    .line 1324
    :cond_1
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v9, :cond_2

    move v9, v2

    move-object v10, v1

    iget v10, v10, Landroidx/fragment/app/Fragment;->mState:I

    if-le v9, v10, :cond_2

    .line 1325
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    if-nez v9, :cond_4

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1327
    const/4 v9, 0x1

    move v2, v9

    .line 1335
    :cond_2
    :goto_0
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v9, :cond_3

    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v10, 0x3

    if-ge v9, v10, :cond_3

    move v9, v2

    const/4 v10, 0x2

    if-le v9, v10, :cond_3

    .line 1336
    const/4 v9, 0x2

    move v2, v9

    .line 1338
    :cond_3
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    move v10, v2

    if-gt v9, v10, :cond_22

    .line 1342
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v9, :cond_5

    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-nez v9, :cond_5

    .line 1343
    .line 1618
    :goto_1
    return-void

    .line 1330
    :cond_4
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    move v2, v9

    goto :goto_0

    .line 1345
    :cond_5
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_6

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 1350
    :cond_6
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1351
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1352
    move-object v9, v0

    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1354
    :cond_7
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    packed-switch v9, :pswitch_data_0

    .line 1504
    .line 1613
    :cond_8
    :goto_2
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    move v10, v2

    if-eq v9, v10, :cond_9

    .line 1614
    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "moveToState: Fragment state for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " not updated inline; "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "expected state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    iget v11, v11, Landroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1616
    move-object v9, v1

    move v10, v2

    iput v10, v9, Landroidx/fragment/app/Fragment;->mState:I

    .line 1618
    :cond_9
    goto :goto_1

    .line 1356
    :pswitch_0
    move v9, v2

    if-lez v9, :cond_12

    .line 1357
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_a

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "moveto CREATED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1358
    :cond_a
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v9, :cond_c

    .line 1359
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v10}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 1360
    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 1359
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1361
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v11, "android:view_state"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v10

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1363
    move-object v9, v1

    move-object v10, v0

    move-object v11, v1

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v12, "android:target_state"

    invoke-virtual {v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v10

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 1365
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_b

    .line 1366
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v11, "android:target_req_state"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 1369
    :cond_b
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    if-eqz v9, :cond_d

    .line 1370
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, v9, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 1371
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 1376
    :goto_3
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v9, :cond_c

    .line 1377
    move-object v9, v1

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 1378
    move v9, v2

    const/4 v10, 0x2

    if-le v9, v10, :cond_c

    .line 1379
    const/4 v9, 0x2

    move v2, v9

    .line 1384
    :cond_c
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 1385
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 1386
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v10, :cond_e

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 1387
    :goto_4
    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 1391
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_10

    .line 1392
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget v10, v10, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eq v9, v10, :cond_f

    .line 1393
    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Fragment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " declared target fragment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " that does not belong to this FragmentManager!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1373
    :cond_d
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v11, "android:user_visible_hint"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v9, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    goto/16 :goto_3

    .line 1386
    :cond_e
    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 1387
    invoke-virtual {v10}, Landroidx/fragment/app/FragmentHostCallback;->getFragmentManagerImpl()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v10

    goto :goto_4

    .line 1397
    :cond_f
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v10, 0x1

    if-ge v9, v10, :cond_10

    .line 1398
    move-object v9, v0

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1402
    :cond_10
    move-object v9, v0

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 1403
    move-object v9, v1

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1404
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v10}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1405
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-nez v9, :cond_11

    .line 1406
    new-instance v9, Landroidx/fragment/app/SuperNotCalledException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Fragment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " did not call through to super.onAttach()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1409
    :cond_11
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-nez v9, :cond_1e

    .line 1410
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentHostCallback;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 1414
    :goto_5
    move-object v9, v0

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 1416
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    if-nez v9, :cond_1f

    .line 1417
    move-object v9, v0

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1418
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 1419
    move-object v9, v0

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1424
    :goto_6
    move-object v9, v1

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/fragment/app/Fragment;->mRetaining:Z

    .line 1431
    :cond_12
    :pswitch_1
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->ensureInflatedFragmentView(Landroidx/fragment/app/Fragment;)V

    .line 1433
    move v9, v2

    const/4 v10, 0x1

    if-le v9, v10, :cond_1a

    .line 1434
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_13

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1435
    :cond_13
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-nez v9, :cond_18

    .line 1436
    const/4 v9, 0x0

    move-object v6, v9

    .line 1437
    .local v6, "container":Landroid/view/ViewGroup;
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-eqz v9, :cond_15

    .line 1438
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_14

    .line 1439
    move-object v9, v0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Cannot create fragment "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " for a container view with no id"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1444
    :cond_14
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    move-object v10, v1

    iget v10, v10, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    move-object v6, v9

    .line 1445
    move-object v9, v6

    if-nez v9, :cond_15

    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mRestored:Z

    if-nez v9, :cond_15

    .line 1448
    move-object v9, v1

    :try_start_0
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object v10, v1

    iget v10, v10, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v7, v9

    .line 1451
    .line 1452
    .local v7, "resName":Ljava/lang/String;
    :goto_7
    move-object v9, v0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "No view found for id 0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    iget v13, v13, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 1454
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") for fragment "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1452
    invoke-direct {v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1459
    .end local v7    # "resName":Ljava/lang/String;
    :cond_15
    move-object v9, v1

    move-object v10, v6

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1460
    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v10, v11}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v10

    move-object v11, v6

    move-object v12, v1

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10, v11, v12}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 1462
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_21

    .line 1463
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1464
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1465
    move-object v9, v6

    if-eqz v9, :cond_16

    .line 1466
    move-object v9, v6

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1468
    :cond_16
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v9, :cond_17

    .line 1469
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1471
    :cond_17
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v11, v1

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1472
    move-object v9, v0

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v12, v1

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1476
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_20

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v10, :cond_20

    const/4 v10, 0x1

    :goto_8
    iput-boolean v10, v9, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 1483
    .end local v6    # "container":Landroid/view/ViewGroup;
    :cond_18
    :goto_9
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1484
    move-object v9, v0

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1485
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_19

    .line 1486
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1488
    :cond_19
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1492
    :cond_1a
    :pswitch_2
    move v9, v2

    const/4 v10, 0x2

    if-le v9, v10, :cond_1c

    .line 1493
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_1b

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "moveto STARTED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1494
    :cond_1b
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->performStart()V

    .line 1495
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V

    .line 1499
    :cond_1c
    :pswitch_3
    move v9, v2

    const/4 v10, 0x3

    if-le v9, v10, :cond_8

    .line 1500
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_1d

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "moveto RESUMED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1501
    :cond_1d
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->performResume()V

    .line 1502
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V

    .line 1503
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1504
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_2

    .line 1412
    :cond_1e
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_5

    .line 1421
    :cond_1f
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1422
    move-object v9, v1

    const/4 v10, 0x1

    iput v10, v9, Landroidx/fragment/app/Fragment;->mState:I

    goto/16 :goto_6

    .line 1449
    .restart local v6    # "container":Landroid/view/ViewGroup;
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 1450
    .local v8, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v9, "unknown"

    move-object v7, v9

    .restart local v7    # "resName":Ljava/lang/String;
    goto/16 :goto_7

    .line 1476
    .end local v7    # "resName":Ljava/lang/String;
    .end local v8    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_20
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 1479
    :cond_21
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_9

    .line 1507
    .end local v6    # "container":Landroid/view/ViewGroup;
    :cond_22
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    move v10, v2

    if-le v9, v10, :cond_8

    .line 1508
    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    packed-switch v9, :pswitch_data_1

    goto/16 :goto_2

    .line 1563
    :cond_23
    :goto_a
    :pswitch_4
    move v9, v2

    const/4 v10, 0x1

    if-ge v9, v10, :cond_8

    .line 1564
    move-object v9, v0

    iget-boolean v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v9, :cond_24

    .line 1571
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_2f

    .line 1572
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v9

    move-object v6, v9

    .line 1573
    .local v6, "v":Landroid/view/View;
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1574
    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->clearAnimation()V

    .line 1575
    .line 1581
    .end local v6    # "v":Landroid/view/View;
    :cond_24
    :goto_b
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_25

    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    if-eqz v9, :cond_30

    .line 1586
    :cond_25
    move-object v9, v1

    move v10, v2

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    .line 1587
    const/4 v9, 0x1

    move v2, v9

    goto/16 :goto_2

    .line 1510
    :pswitch_5
    move v9, v2

    const/4 v10, 0x4

    if-ge v9, v10, :cond_27

    .line 1511
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_26

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "movefrom RESUMED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1512
    :cond_26
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->performPause()V

    .line 1513
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V

    .line 1517
    :cond_27
    :pswitch_6
    move v9, v2

    const/4 v10, 0x3

    if-ge v9, v10, :cond_29

    .line 1518
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_28

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "movefrom STARTED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1519
    :cond_28
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->performStop()V

    .line 1520
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V

    .line 1524
    :cond_29
    :pswitch_7
    move v9, v2

    const/4 v10, 0x2

    if-ge v9, v10, :cond_23

    .line 1525
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_2a

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1526
    :cond_2a
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_2b

    .line 1529
    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroidx/fragment/app/Fragment;)Z

    move-result v9

    if-eqz v9, :cond_2b

    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v9, :cond_2b

    .line 1530
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentViewState(Landroidx/fragment/app/Fragment;)V

    .line 1533
    :cond_2b
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 1534
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 1535
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_2e

    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v9, :cond_2e

    .line 1537
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1538
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->clearAnimation()V

    .line 1539
    const/4 v9, 0x0

    move-object v6, v9

    .line 1540
    .local v6, "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    if-lez v9, :cond_2c

    move-object v9, v0

    iget-boolean v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v9, :cond_2c

    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1541
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2c

    move-object v9, v1

    iget v9, v9, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_2c

    .line 1543
    move-object v9, v0

    move-object v10, v1

    move v11, v3

    const/4 v12, 0x0

    move v13, v4

    invoke-virtual {v9, v10, v11, v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v9

    move-object v6, v9

    .line 1546
    :cond_2c
    move-object v9, v1

    const/4 v10, 0x0

    iput v10, v9, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 1547
    move-object v9, v6

    if-eqz v9, :cond_2d

    .line 1548
    move-object v9, v0

    move-object v10, v1

    move-object v11, v6

    move v12, v2

    invoke-direct {v9, v10, v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V

    .line 1550
    :cond_2d
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v10, v1

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1552
    .end local v6    # "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    :cond_2e
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1553
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1556
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 1557
    move-object v9, v1

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 1558
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1559
    move-object v9, v1

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/fragment/app/Fragment;->mInLayout:Z

    goto/16 :goto_a

    .line 1575
    :cond_2f
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    if-eqz v9, :cond_24

    .line 1576
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    move-object v6, v9

    .line 1577
    .local v6, "animator":Landroid/animation/Animator;
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1578
    move-object v9, v6

    invoke-virtual {v9}, Landroid/animation/Animator;->cancel()V

    goto/16 :goto_b

    .line 1589
    .end local v6    # "animator":Landroid/animation/Animator;
    :cond_30
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_31

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "movefrom CREATED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1590
    :cond_31
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mRetaining:Z

    if-nez v9, :cond_32

    .line 1591
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->performDestroy()V

    .line 1592
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 1597
    :goto_c
    move-object v9, v1

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->performDetach()V

    .line 1598
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V

    .line 1599
    move v9, v5

    if-nez v9, :cond_8

    .line 1600
    move-object v9, v1

    iget-boolean v9, v9, Landroidx/fragment/app/Fragment;->mRetaining:Z

    if-nez v9, :cond_33

    .line 1601
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->makeInactive(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_2

    .line 1594
    :cond_32
    move-object v9, v1

    const/4 v10, 0x0

    iput v10, v9, Landroidx/fragment/app/Fragment;->mState:I

    goto :goto_c

    .line 1603
    :cond_33
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 1604
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 1605
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    goto/16 :goto_2

    .line 1354
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1508
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 6

    .prologue
    .line 3208
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 3209
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3210
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3211
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 3212
    .local v1, "addedCount":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 3213
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    move-object v3, v4

    .line 3214
    .local v3, "fragment":Landroidx/fragment/app/Fragment;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 3215
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    .line 3212
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3218
    .end local v3    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 18

    .prologue
    .line 3696
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object/from16 v1, p1

    .local v1, "parent":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "context":Landroid/content/Context;
    move-object/from16 v4, p4

    .local v4, "attrs":Landroid/util/AttributeSet;
    const-string/jumbo v11, "fragment"

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 3697
    const/4 v11, 0x0

    move-object v0, v11

    .line 3787
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :goto_0
    return-object v0

    .line 3700
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_0
    move-object v11, v4

    const/4 v12, 0x0

    const-string/jumbo v13, "class"

    invoke-interface {v11, v12, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 3701
    .local v5, "fname":Ljava/lang/String;
    move-object v11, v3

    move-object v12, v4

    sget-object v13, Landroidx/fragment/app/FragmentManagerImpl$FragmentTag;->Fragment:[I

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    move-object v6, v11

    .line 3702
    .local v6, "a":Landroid/content/res/TypedArray;
    move-object v11, v5

    if-nez v11, :cond_1

    .line 3703
    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 3705
    :cond_1
    move-object v11, v6

    const/4 v12, 0x1

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    move v7, v11

    .line 3706
    .local v7, "id":I
    move-object v11, v6

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 3707
    .local v8, "tag":Ljava/lang/String;
    move-object v11, v6

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 3709
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    move-object v12, v5

    invoke-static {v11, v12}, Landroidx/fragment/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 3712
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_0

    .line 3715
    :cond_2
    move-object v11, v1

    if-eqz v11, :cond_3

    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    :goto_1
    move v9, v11

    .line 3716
    .local v9, "containerId":I
    move v11, v9

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    move v11, v7

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    move-object v11, v8

    if-nez v11, :cond_4

    .line 3717
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v4

    invoke-interface {v14}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 3715
    .end local v9    # "containerId":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 3724
    .restart local v9    # "containerId":I
    :cond_4
    move v11, v7

    const/4 v12, -0x1

    if-eq v11, v12, :cond_9

    move-object v11, v0

    move v12, v7

    invoke-virtual {v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v11

    :goto_2
    move-object v10, v11

    .line 3725
    .local v10, "fragment":Landroidx/fragment/app/Fragment;
    move-object v11, v10

    if-nez v11, :cond_5

    move-object v11, v8

    if-eqz v11, :cond_5

    .line 3726
    move-object v11, v0

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v11

    move-object v10, v11

    .line 3728
    :cond_5
    move-object v11, v10

    if-nez v11, :cond_6

    move v11, v9

    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    .line 3729
    move-object v11, v0

    move v12, v9

    invoke-virtual {v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v11

    move-object v10, v11

    .line 3732
    :cond_6
    sget-boolean v11, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_7

    const-string/jumbo v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onCreateView: id=0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v7

    .line 3733
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " fname="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " existing="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3732
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 3735
    :cond_7
    move-object v11, v10

    if-nez v11, :cond_b

    .line 3736
    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    move-object v12, v3

    move-object v13, v5

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroidx/fragment/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v11

    move-object v10, v11

    .line 3737
    move-object v11, v10

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 3738
    move-object v11, v10

    move v12, v7

    if-eqz v12, :cond_a

    move v12, v7

    :goto_3
    iput v12, v11, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 3739
    move-object v11, v10

    move v12, v9

    iput v12, v11, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 3740
    move-object v11, v10

    move-object v12, v8

    iput-object v12, v11, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 3741
    move-object v11, v10

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 3742
    move-object v11, v10

    move-object v12, v0

    iput-object v12, v11, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 3743
    move-object v11, v10

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput-object v12, v11, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3744
    move-object v11, v10

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object v13, v4

    move-object v14, v10

    iget-object v14, v14, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v11, v12, v13, v14}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3745
    move-object v11, v0

    move-object v12, v10

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroidx/fragment/app/FragmentManagerImpl;->addFragment(Landroidx/fragment/app/Fragment;Z)V

    .line 3771
    :cond_8
    :goto_4
    move-object v11, v0

    iget v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v12, 0x1

    if-ge v11, v12, :cond_d

    move-object v11, v10

    iget-boolean v11, v11, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v11, :cond_d

    .line 3772
    move-object v11, v0

    move-object v12, v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 3777
    :goto_5
    move-object v11, v10

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v11, :cond_e

    .line 3778
    new-instance v11, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Fragment "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " did not create a view."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 3724
    .end local v10    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 3738
    .restart local v10    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_a
    move v12, v9

    goto :goto_3

    .line 3747
    :cond_b
    move-object v11, v10

    iget-boolean v11, v11, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v11, :cond_c

    .line 3750
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v4

    invoke-interface {v14}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ": Duplicate id 0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v7

    .line 3751
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", tag "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", or parent id 0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v9

    .line 3752
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " with another fragment for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 3757
    :cond_c
    move-object v11, v10

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 3758
    move-object v11, v10

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput-object v12, v11, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3762
    move-object v11, v10

    iget-boolean v11, v11, Landroidx/fragment/app/Fragment;->mRetaining:Z

    if-nez v11, :cond_8

    .line 3763
    move-object v11, v10

    move-object v12, v0

    iget-object v12, v12, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object v13, v4

    move-object v14, v10

    iget-object v14, v14, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v11, v12, v13, v14}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 3774
    :cond_d
    move-object v11, v0

    move-object v12, v10

    invoke-virtual {v11, v12}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_5

    .line 3781
    :cond_e
    move v11, v7

    if-eqz v11, :cond_f

    .line 3782
    move-object v11, v10

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/view/View;->setId(I)V

    .line 3784
    :cond_f
    move-object v11, v10

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_10

    .line 3785
    move-object v11, v10

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3787
    :cond_10
    move-object v11, v10

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object v0, v11

    goto/16 :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    .prologue
    .line 3792
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/fragment/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return-object v0
.end method

.method public performPendingDeferredStart(Landroidx/fragment/app/Fragment;)V
    .locals 8

    .prologue
    .line 1257
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v2, :cond_1

    .line 1258
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v2, :cond_0

    .line 1260
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1261
    .line 1266
    :goto_0
    return-void

    .line 1263
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 1264
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1266
    :cond_1
    goto :goto_0
.end method

.method public popBackStack()V
    .locals 9

    .prologue
    .line 821
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    new-instance v2, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 822
    return-void
.end method

.method public popBackStack(II)V
    .locals 11

    .prologue
    .line 843
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move v1, p1

    .local v1, "id":I
    move v2, p2

    .local v2, "flags":I
    move v3, v1

    if-gez v3, :cond_0

    .line 844
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 846
    :cond_0
    move-object v3, v0

    new-instance v4, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    const/4 v7, 0x0

    move v8, v1

    move v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 847
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 832
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "flags":I
    move-object v3, v0

    new-instance v4, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    const/4 v8, -0x1

    move v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 833
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 5

    .prologue
    .line 826
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 827
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 8

    .prologue
    .line 851
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move v1, p1

    .local v1, "id":I
    move v2, p2

    .local v2, "flags":I
    move-object v3, v0

    invoke-direct {v3}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 852
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v3

    .line 853
    move v3, v1

    if-gez v3, :cond_0

    .line 854
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 856
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    move v5, v1

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 837
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "flags":I
    move-object v3, v0

    invoke-direct {v3}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 838
    move-object v3, v0

    move-object v4, v1

    const/4 v5, -0x1

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return v0
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .prologue
    .line 2748
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    move-object v2, p2

    .local v2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    move v4, p4

    .local v4, "id":I
    move/from16 v5, p5

    .local v5, "flags":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    .line 2749
    const/4 v8, 0x0

    move v0, v8

    .line 2799
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :goto_0
    return v0

    .line 2751
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_0
    move-object v8, v3

    if-nez v8, :cond_3

    move v8, v4

    if-gez v8, :cond_3

    move v8, v5

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_3

    .line 2752
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    .line 2753
    .local v6, "last":I
    move v8, v6

    if-gez v8, :cond_1

    .line 2754
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 2756
    :cond_1
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2757
    move-object v8, v2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2758
    .line 2799
    .end local v6    # "last":I
    :cond_2
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 2759
    :cond_3
    const/4 v8, -0x1

    move v6, v8

    .line 2760
    .local v6, "index":I
    move-object v8, v3

    if-nez v8, :cond_4

    move v8, v4

    if-ltz v8, :cond_b

    .line 2763
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    .line 2764
    :goto_1
    move v8, v6

    if-ltz v8, :cond_5

    .line 2765
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/BackStackRecord;

    move-object v7, v8

    .line 2766
    .local v7, "bss":Landroidx/fragment/app/BackStackRecord;
    move-object v8, v3

    if-eqz v8, :cond_6

    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v9}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2767
    .line 2774
    .end local v7    # "bss":Landroidx/fragment/app/BackStackRecord;
    :cond_5
    :goto_2
    move v8, v6

    if-gez v8, :cond_8

    .line 2775
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 2769
    .restart local v7    # "bss":Landroidx/fragment/app/BackStackRecord;
    :cond_6
    move v8, v4

    if-ltz v8, :cond_7

    move v8, v4

    move-object v9, v7

    iget v9, v9, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ne v8, v9, :cond_7

    .line 2770
    goto :goto_2

    .line 2772
    :cond_7
    add-int/lit8 v6, v6, -0x1

    .line 2773
    goto :goto_1

    .line 2777
    .end local v7    # "bss":Landroidx/fragment/app/BackStackRecord;
    :cond_8
    move v8, v5

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_b

    .line 2778
    add-int/lit8 v6, v6, -0x1

    .line 2780
    :goto_3
    move v8, v6

    if-ltz v8, :cond_b

    .line 2781
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/BackStackRecord;

    move-object v7, v8

    .line 2782
    .restart local v7    # "bss":Landroidx/fragment/app/BackStackRecord;
    move-object v8, v3

    if-eqz v8, :cond_9

    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v9}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    :cond_9
    move v8, v4

    if-ltz v8, :cond_b

    move v8, v4

    move-object v9, v7

    iget v9, v9, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ne v8, v9, :cond_b

    .line 2784
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 2785
    goto :goto_3

    .line 2791
    .end local v7    # "bss":Landroidx/fragment/app/BackStackRecord;
    :cond_b
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_c

    .line 2792
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    .line 2794
    :cond_c
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v7, v8

    .local v7, "i":I
    :goto_4
    move v8, v7

    move v9, v6

    if-le v8, v9, :cond_2

    .line 2795
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2796
    move-object v8, v2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2794
    add-int/lit8 v7, v7, -0x1

    goto :goto_4
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 10

    .prologue
    .line 922
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "bundle":Landroid/os/Bundle;
    move-object v2, p2

    .local v2, "key":Ljava/lang/String;
    move-object v3, p3

    .local v3, "fragment":Landroidx/fragment/app/Fragment;
    move-object v4, v3

    iget v4, v4, Landroidx/fragment/app/Fragment;->mIndex:I

    if-gez v4, :cond_0

    .line 923
    move-object v4, v0

    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not currently in the FragmentManager"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 926
    :cond_0
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    iget v6, v6, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 927
    return-void
.end method

.method public registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 9

    .prologue
    .line 3422
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "cb":Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
    move v2, p2

    .local v2, "recursive":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;-><init>(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 3423
    return-void
.end method

.method public removeFragment(Landroidx/fragment/app/Fragment;)V
    .locals 9

    .prologue
    .line 1936
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    sget-boolean v5, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " nesting="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget v7, v7, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1937
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 1938
    .local v2, "inactive":Z
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v5, :cond_1

    move v5, v2

    if-eqz v5, :cond_3

    .line 1939
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 1940
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 1941
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1942
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v5, :cond_2

    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v5, :cond_2

    .line 1943
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1945
    :cond_2
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 1946
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1948
    :cond_3
    return-void

    .line 1937
    .end local v2    # "inactive":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 1941
    .restart local v2    # "inactive":Z
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 4

    .prologue
    .line 915
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "listener":Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 916
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 918
    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 4

    .prologue
    .line 2731
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2732
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2733
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v2}, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 2732
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2736
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V
    .locals 21

    .prologue
    .line 3054
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object/from16 v2, p1

    .local v2, "state":Landroid/os/Parcelable;
    move-object/from16 v3, p2

    .local v3, "nonConfig":Landroidx/fragment/app/FragmentManagerNonConfig;
    move-object v14, v2

    if-nez v14, :cond_0

    .line 3182
    :goto_0
    return-void

    .line 3055
    :cond_0
    move-object v14, v2

    check-cast v14, Landroidx/fragment/app/FragmentManagerState;

    move-object v4, v14

    .line 3056
    .local v4, "fms":Landroidx/fragment/app/FragmentManagerState;
    move-object v14, v4

    iget-object v14, v14, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    if-nez v14, :cond_1

    goto :goto_0

    .line 3058
    :cond_1
    const/4 v14, 0x0

    move-object v5, v14

    .line 3059
    .local v5, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/FragmentManagerNonConfig;>;"
    const/4 v14, 0x0

    move-object v6, v14

    .line 3063
    .local v6, "viewModelStores":Ljava/util/List;, "Ljava/util/List<Landroidx/lifecycle/ViewModelStore;>;"
    move-object v14, v3

    if-eqz v14, :cond_7

    .line 3064
    move-object v14, v3

    invoke-virtual {v14}, Landroidx/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v14

    move-object v7, v14

    .line 3065
    .local v7, "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/Fragment;>;"
    move-object v14, v3

    invoke-virtual {v14}, Landroidx/fragment/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v14

    move-object v5, v14

    .line 3066
    move-object v14, v3

    invoke-virtual {v14}, Landroidx/fragment/app/FragmentManagerNonConfig;->getViewModelStores()Ljava/util/List;

    move-result-object v14

    move-object v6, v14

    .line 3067
    move-object v14, v7

    if-eqz v14, :cond_3

    move-object v14, v7

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    :goto_1
    move v8, v14

    .line 3068
    .local v8, "count":I
    const/4 v14, 0x0

    move v9, v14

    .local v9, "i":I
    :goto_2
    move v14, v9

    move v15, v8

    if-ge v14, v15, :cond_7

    .line 3069
    move-object v14, v7

    move v15, v9

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/Fragment;

    move-object v10, v14

    .line 3070
    .local v10, "f":Landroidx/fragment/app/Fragment;
    sget-boolean v14, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v14, :cond_2

    const-string/jumbo v14, "FragmentManager"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "restoreAllState: re-attaching retained "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 3071
    :cond_2
    const/4 v14, 0x0

    move v11, v14

    .line 3072
    .local v11, "index":I
    :goto_3
    move v14, v11

    move-object v15, v4

    iget-object v15, v15, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    array-length v15, v15

    if-ge v14, v15, :cond_4

    move-object v14, v4

    iget-object v14, v14, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    move v15, v11

    aget-object v14, v14, v15

    iget v14, v14, Landroidx/fragment/app/FragmentState;->mIndex:I

    move-object v15, v10

    iget v15, v15, Landroidx/fragment/app/Fragment;->mIndex:I

    if-eq v14, v15, :cond_4

    .line 3073
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 3067
    .end local v8    # "count":I
    .end local v9    # "i":I
    .end local v10    # "f":Landroidx/fragment/app/Fragment;
    .end local v11    # "index":I
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 3075
    .restart local v8    # "count":I
    .restart local v9    # "i":I
    .restart local v10    # "f":Landroidx/fragment/app/Fragment;
    .restart local v11    # "index":I
    :cond_4
    move v14, v11

    move-object v15, v4

    iget-object v15, v15, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    array-length v15, v15

    if-ne v14, v15, :cond_5

    .line 3076
    move-object v14, v1

    new-instance v15, Ljava/lang/IllegalStateException;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Could not find active fragment with index "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Landroidx/fragment/app/Fragment;->mIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 3079
    :cond_5
    move-object v14, v4

    iget-object v14, v14, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    move v15, v11

    aget-object v14, v14, v15

    move-object v12, v14

    .line 3080
    .local v12, "fs":Landroidx/fragment/app/FragmentState;
    move-object v14, v12

    move-object v15, v10

    iput-object v15, v14, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    .line 3081
    move-object v14, v10

    const/4 v15, 0x0

    iput-object v15, v14, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 3082
    move-object v14, v10

    const/4 v15, 0x0

    iput v15, v14, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 3083
    move-object v14, v10

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 3084
    move-object v14, v10

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 3085
    move-object v14, v10

    const/4 v15, 0x0

    iput-object v15, v14, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 3086
    move-object v14, v12

    iget-object v14, v14, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v14, :cond_6

    .line 3087
    move-object v14, v12

    iget-object v14, v14, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    move-object v15, v1

    iget-object v15, v15, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v15}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3088
    move-object v14, v10

    move-object v15, v12

    iget-object v15, v15, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v16, "android:view_state"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v15

    iput-object v15, v14, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 3090
    move-object v14, v10

    move-object v15, v12

    iget-object v15, v15, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v15, v14, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 3068
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 3097
    .end local v7    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/Fragment;>;"
    .end local v8    # "count":I
    .end local v9    # "i":I
    .end local v10    # "f":Landroidx/fragment/app/Fragment;
    .end local v11    # "index":I
    .end local v12    # "fs":Landroidx/fragment/app/FragmentState;
    :cond_7
    move-object v14, v1

    new-instance v15, Landroid/util/SparseArray;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v15, v14, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 3098
    const/4 v14, 0x0

    move v7, v14

    .local v7, "i":I
    :goto_4
    move v14, v7

    move-object v15, v4

    iget-object v15, v15, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    array-length v15, v15

    if-ge v14, v15, :cond_c

    .line 3099
    move-object v14, v4

    iget-object v14, v14, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    move v15, v7

    aget-object v14, v14, v15

    move-object v8, v14

    .line 3100
    .local v8, "fs":Landroidx/fragment/app/FragmentState;
    move-object v14, v8

    if-eqz v14, :cond_b

    .line 3101
    const/4 v14, 0x0

    move-object v9, v14

    .line 3102
    .local v9, "childNonConfig":Landroidx/fragment/app/FragmentManagerNonConfig;
    move-object v14, v5

    if-eqz v14, :cond_8

    move v14, v7

    move-object v15, v5

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_8

    .line 3103
    move-object v14, v5

    move v15, v7

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/FragmentManagerNonConfig;

    move-object v9, v14

    .line 3105
    :cond_8
    const/4 v14, 0x0

    move-object v10, v14

    .line 3106
    .local v10, "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    move-object v14, v6

    if-eqz v14, :cond_9

    move v14, v7

    move-object v15, v6

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_9

    .line 3107
    move-object v14, v6

    move v15, v7

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/lifecycle/ViewModelStore;

    move-object v10, v14

    .line 3109
    :cond_9
    move-object v14, v8

    move-object v15, v1

    iget-object v15, v15, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-virtual/range {v14 .. v19}, Landroidx/fragment/app/FragmentState;->instantiate(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerNonConfig;Landroidx/lifecycle/ViewModelStore;)Landroidx/fragment/app/Fragment;

    move-result-object v14

    move-object v11, v14

    .line 3111
    .local v11, "f":Landroidx/fragment/app/Fragment;
    sget-boolean v14, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v14, :cond_a

    const-string/jumbo v14, "FragmentManager"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "restoreAllState: active #"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v11

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 3112
    :cond_a
    move-object v14, v1

    iget-object v14, v14, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move-object v15, v11

    iget v15, v15, Landroidx/fragment/app/Fragment;->mIndex:I

    move-object/from16 v16, v11

    invoke-virtual/range {v14 .. v16}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3116
    move-object v14, v8

    const/4 v15, 0x0

    iput-object v15, v14, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    .line 3098
    .end local v9    # "childNonConfig":Landroidx/fragment/app/FragmentManagerNonConfig;
    .end local v10    # "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    .end local v11    # "f":Landroidx/fragment/app/Fragment;
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 3121
    .end local v8    # "fs":Landroidx/fragment/app/FragmentState;
    :cond_c
    move-object v14, v3

    if-eqz v14, :cond_f

    .line 3122
    move-object v14, v3

    invoke-virtual {v14}, Landroidx/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v14

    move-object v7, v14

    .line 3123
    .local v7, "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/Fragment;>;"
    move-object v14, v7

    if-eqz v14, :cond_e

    move-object v14, v7

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    :goto_5
    move v8, v14

    .line 3124
    .local v8, "count":I
    const/4 v14, 0x0

    move v9, v14

    .local v9, "i":I
    :goto_6
    move v14, v9

    move v15, v8

    if-ge v14, v15, :cond_f

    .line 3125
    move-object v14, v7

    move v15, v9

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/Fragment;

    move-object v10, v14

    .line 3126
    .local v10, "f":Landroidx/fragment/app/Fragment;
    move-object v14, v10

    iget v14, v14, Landroidx/fragment/app/Fragment;->mTargetIndex:I

    if-ltz v14, :cond_d

    .line 3127
    move-object v14, v10

    move-object v15, v1

    iget-object v15, v15, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/fragment/app/Fragment;->mTargetIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/fragment/app/Fragment;

    iput-object v15, v14, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 3128
    move-object v14, v10

    iget-object v14, v14, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-nez v14, :cond_d

    .line 3129
    const-string/jumbo v14, "FragmentManager"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Re-attaching retained fragment "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " target no longer exists: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/fragment/app/Fragment;->mTargetIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 3124
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 3123
    .end local v8    # "count":I
    .end local v9    # "i":I
    .end local v10    # "f":Landroidx/fragment/app/Fragment;
    :cond_e
    const/4 v14, 0x0

    goto :goto_5

    .line 3137
    .end local v7    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/Fragment;>;"
    :cond_f
    move-object v14, v1

    iget-object v14, v14, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 3138
    move-object v14, v4

    iget-object v14, v14, Landroidx/fragment/app/FragmentManagerState;->mAdded:[I

    if-eqz v14, :cond_13

    .line 3139
    const/4 v14, 0x0

    move v7, v14

    .local v7, "i":I
    :goto_7
    move v14, v7

    move-object v15, v4

    iget-object v15, v15, Landroidx/fragment/app/FragmentManagerState;->mAdded:[I

    array-length v15, v15

    if-ge v14, v15, :cond_13

    .line 3140
    move-object v14, v1

    iget-object v14, v14, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move-object v15, v4

    iget-object v15, v15, Landroidx/fragment/app/FragmentManagerState;->mAdded:[I

    move/from16 v16, v7

    aget v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/Fragment;

    move-object v8, v14

    .line 3141
    .local v8, "f":Landroidx/fragment/app/Fragment;
    move-object v14, v8

    if-nez v14, :cond_10

    .line 3142
    move-object v14, v1

    new-instance v15, Ljava/lang/IllegalStateException;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "No instantiated fragment for index #"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerState;->mAdded:[I

    move-object/from16 v18, v0

    move/from16 v19, v7

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 3145
    :cond_10
    move-object v14, v8

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 3146
    sget-boolean v14, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v14, :cond_11

    const-string/jumbo v14, "FragmentManager"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "restoreAllState: added #"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 3147
    :cond_11
    move-object v14, v1

    iget-object v14, v14, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 3148
    new-instance v14, Ljava/lang/IllegalStateException;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const-string/jumbo v16, "Already added!"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 3150
    :cond_12
    move-object v14, v1

    iget-object v14, v14, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object v9, v15

    monitor-enter v14

    .line 3151
    move-object v14, v1

    :try_start_0
    iget-object v14, v14, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 3152
    move-object v14, v9

    monitor-exit v14

    .line 3139
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 3152
    :catchall_0
    move-exception v14

    move-object v13, v14

    move-object v14, v9

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v13

    throw v14

    .line 3157
    .end local v7    # "i":I
    .end local v8    # "f":Landroidx/fragment/app/Fragment;
    :cond_13
    move-object v14, v4

    iget-object v14, v14, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    if-eqz v14, :cond_18

    .line 3158
    move-object v14, v1

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v15, v14, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 3159
    const/4 v14, 0x0

    move v7, v14

    .restart local v7    # "i":I
    :goto_8
    move v14, v7

    move-object v15, v4

    iget-object v15, v15, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    array-length v15, v15

    if-ge v14, v15, :cond_16

    .line 3160
    move-object v14, v4

    iget-object v14, v14, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    move v15, v7

    aget-object v14, v14, v15

    move-object v15, v1

    invoke-virtual {v14, v15}, Landroidx/fragment/app/BackStackState;->instantiate(Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v14

    move-object v8, v14

    .line 3161
    .local v8, "bse":Landroidx/fragment/app/BackStackRecord;
    sget-boolean v14, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v14, :cond_14

    .line 3162
    const-string/jumbo v14, "FragmentManager"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "restoreAllState: back stack #"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " (index "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 3164
    new-instance v14, Landroidx/core/util/LogWriter;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const-string/jumbo v16, "FragmentManager"

    invoke-direct/range {v15 .. v16}, Landroidx/core/util/LogWriter;-><init>(Ljava/lang/String;)V

    move-object v9, v14

    .line 3165
    .local v9, "logw":Landroidx/core/util/LogWriter;
    new-instance v14, Ljava/io/PrintWriter;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v9

    invoke-direct/range {v15 .. v16}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v10, v14

    .line 3166
    .local v10, "pw":Ljava/io/PrintWriter;
    move-object v14, v8

    const-string/jumbo v15, "  "

    move-object/from16 v16, v10

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 3167
    move-object v14, v10

    invoke-virtual {v14}, Ljava/io/PrintWriter;->close()V

    .line 3169
    .end local v9    # "logw":Landroidx/core/util/LogWriter;
    .end local v10    # "pw":Ljava/io/PrintWriter;
    :cond_14
    move-object v14, v1

    iget-object v14, v14, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 3170
    move-object v14, v8

    iget v14, v14, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v14, :cond_15

    .line 3171
    move-object v14, v1

    move-object v15, v8

    iget v15, v15, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    move-object/from16 v16, v8

    invoke-virtual/range {v14 .. v16}, Landroidx/fragment/app/FragmentManagerImpl;->setBackStackIndex(ILandroidx/fragment/app/BackStackRecord;)V

    .line 3159
    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 3178
    .end local v7    # "i":I
    .end local v8    # "bse":Landroidx/fragment/app/BackStackRecord;
    :cond_16
    :goto_9
    move-object v14, v4

    iget v14, v14, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    if-ltz v14, :cond_17

    .line 3179
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/fragment/app/Fragment;

    iput-object v15, v14, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 3181
    :cond_17
    move-object v14, v1

    move-object v15, v4

    iget v15, v15, Landroidx/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    iput v15, v14, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 3182
    goto/16 :goto_0

    .line 3175
    :cond_18
    move-object v14, v1

    const/4 v15, 0x0

    iput-object v15, v14, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    goto :goto_9
.end method

.method retainNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;
    .locals 2

    .prologue
    .line 2803
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    invoke-static {v1}, Landroidx/fragment/app/FragmentManagerImpl;->setRetaining(Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 2804
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 14

    .prologue
    .line 2941
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v7, v0

    invoke-direct {v7}, Landroidx/fragment/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 2942
    move-object v7, v0

    invoke-direct {v7}, Landroidx/fragment/app/FragmentManagerImpl;->endAnimatingAwayFragments()V

    .line 2943
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v7

    .line 2945
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2946
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 2948
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 2949
    :cond_0
    const/4 v7, 0x0

    move-object v0, v7

    .line 3048
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    .local v1, "N":I
    .local v2, "active":[Landroidx/fragment/app/FragmentState;
    .local v3, "haveFragments":Z
    :goto_0
    return-object v0

    .line 2953
    .end local v1    # "N":I
    .end local v2    # "active":[Landroidx/fragment/app/FragmentState;
    .end local v3    # "haveFragments":Z
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    move v1, v7

    .line 2954
    .restart local v1    # "N":I
    move v7, v1

    new-array v7, v7, [Landroidx/fragment/app/FragmentState;

    move-object v2, v7

    .line 2955
    .restart local v2    # "active":[Landroidx/fragment/app/FragmentState;
    const/4 v7, 0x0

    move v3, v7

    .line 2956
    .restart local v3    # "haveFragments":Z
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_1
    move v7, v4

    move v8, v1

    if-ge v7, v8, :cond_8

    .line 2957
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    move-object v5, v7

    .line 2958
    .local v5, "f":Landroidx/fragment/app/Fragment;
    move-object v7, v5

    if-eqz v7, :cond_6

    .line 2959
    move-object v7, v5

    iget v7, v7, Landroidx/fragment/app/Fragment;->mIndex:I

    if-gez v7, :cond_2

    .line 2960
    move-object v7, v0

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    iget v11, v11, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2965
    :cond_2
    const/4 v7, 0x1

    move v3, v7

    .line 2967
    new-instance v7, Landroidx/fragment/app/FragmentState;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v5

    invoke-direct {v8, v9}, Landroidx/fragment/app/FragmentState;-><init>(Landroidx/fragment/app/Fragment;)V

    move-object v6, v7

    .line 2968
    .local v6, "fs":Landroidx/fragment/app/FragmentState;
    move-object v7, v2

    move v8, v4

    move-object v9, v6

    aput-object v9, v7, v8

    .line 2970
    move-object v7, v5

    iget v7, v7, Landroidx/fragment/app/Fragment;->mState:I

    if-lez v7, :cond_7

    move-object v7, v6

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v7, :cond_7

    .line 2971
    move-object v7, v6

    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentBasicState(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v7, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2973
    move-object v7, v5

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_5

    .line 2974
    move-object v7, v5

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget v7, v7, Landroidx/fragment/app/Fragment;->mIndex:I

    if-gez v7, :cond_3

    .line 2975
    move-object v7, v0

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " has target not in fragment manager: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2979
    :cond_3
    move-object v7, v6

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v7, :cond_4

    .line 2980
    move-object v7, v6

    new-instance v8, Landroid/os/Bundle;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v7, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2982
    :cond_4
    move-object v7, v0

    move-object v8, v6

    iget-object v8, v8, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v9, "android:target_state"

    move-object v10, v5

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {v7, v8, v9, v10}, Landroidx/fragment/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 2984
    move-object v7, v5

    iget v7, v7, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    if-eqz v7, :cond_5

    .line 2985
    move-object v7, v6

    iget-object v7, v7, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string/jumbo v8, "android:target_req_state"

    move-object v9, v5

    iget v9, v9, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2995
    :cond_5
    :goto_2
    sget-boolean v7, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Saved state of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    iget-object v9, v9, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2956
    .end local v6    # "fs":Landroidx/fragment/app/FragmentState;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2992
    .restart local v6    # "fs":Landroidx/fragment/app/FragmentState;
    :cond_7
    move-object v7, v6

    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v8, v7, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_2

    .line 3000
    .end local v5    # "f":Landroidx/fragment/app/Fragment;
    .end local v6    # "fs":Landroidx/fragment/app/FragmentState;
    :cond_8
    move v7, v3

    if-nez v7, :cond_a

    .line 3001
    sget-boolean v7, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string/jumbo v7, "FragmentManager"

    const-string/jumbo v8, "saveAllState: no fragments!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 3002
    :cond_9
    const/4 v7, 0x0

    move-object v0, v7

    goto/16 :goto_0

    .line 3005
    :cond_a
    const/4 v7, 0x0

    move-object v4, v7

    .line 3006
    .local v4, "added":[I
    const/4 v7, 0x0

    move-object v5, v7

    .line 3009
    .local v5, "backStack":[Landroidx/fragment/app/BackStackState;
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v7

    .line 3010
    move v7, v1

    if-lez v7, :cond_d

    .line 3011
    move v7, v1

    new-array v7, v7, [I

    move-object v4, v7

    .line 3012
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_3
    move v7, v6

    move v8, v1

    if-ge v7, v8, :cond_d

    .line 3013
    move-object v7, v4

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/Fragment;

    iget v9, v9, Landroidx/fragment/app/Fragment;->mIndex:I

    aput v9, v7, v8

    .line 3014
    move-object v7, v4

    move v8, v6

    aget v7, v7, v8

    if-gez v7, :cond_b

    .line 3015
    move-object v7, v0

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v12, v6

    .line 3016
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    move v12, v6

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3015
    invoke-direct {v7, v8}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 3019
    :cond_b
    sget-boolean v7, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_c

    .line 3020
    const-string/jumbo v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saveAllState: adding fragment #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v10, v6

    .line 3021
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3020
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 3012
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 3027
    .end local v6    # "i":I
    :cond_d
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v7, :cond_f

    .line 3028
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v7

    .line 3029
    move v7, v1

    if-lez v7, :cond_f

    .line 3030
    move v7, v1

    new-array v7, v7, [Landroidx/fragment/app/BackStackState;

    move-object v5, v7

    .line 3031
    const/4 v7, 0x0

    move v6, v7

    .restart local v6    # "i":I
    :goto_4
    move v7, v6

    move v8, v1

    if-ge v7, v8, :cond_f

    .line 3032
    move-object v7, v5

    move v8, v6

    new-instance v9, Landroidx/fragment/app/BackStackState;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v10, v11}, Landroidx/fragment/app/BackStackState;-><init>(Landroidx/fragment/app/BackStackRecord;)V

    aput-object v9, v7, v8

    .line 3033
    sget-boolean v7, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_e

    const-string/jumbo v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saveAllState: adding back stack #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v10, v6

    .line 3034
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3033
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 3031
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 3039
    .end local v6    # "i":I
    :cond_f
    new-instance v7, Landroidx/fragment/app/FragmentManagerState;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    move-object v6, v7

    .line 3040
    .local v6, "fms":Landroidx/fragment/app/FragmentManagerState;
    move-object v7, v6

    move-object v8, v2

    iput-object v8, v7, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    .line 3041
    move-object v7, v6

    move-object v8, v4

    iput-object v8, v7, Landroidx/fragment/app/FragmentManagerState;->mAdded:[I

    .line 3042
    move-object v7, v6

    move-object v8, v5

    iput-object v8, v7, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    .line 3043
    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_10

    .line 3044
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    iget v8, v8, Landroidx/fragment/app/Fragment;->mIndex:I

    iput v8, v7, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 3046
    :cond_10
    move-object v7, v6

    move-object v8, v0

    iget v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iput v8, v7, Landroidx/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    .line 3047
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManagerImpl;->saveNonConfig()V

    .line 3048
    move-object v7, v6

    move-object v0, v7

    goto/16 :goto_0
.end method

.method saveFragmentBasicState(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 2905
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    const/4 v3, 0x0

    move-object v2, v3

    .line 2907
    .local v2, "result":Landroid/os/Bundle;
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 2908
    move-object v3, v0

    new-instance v4, Landroid/os/Bundle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2910
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 2911
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2912
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2913
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    move-object v2, v3

    .line 2914
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2917
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2918
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentViewState(Landroidx/fragment/app/Fragment;)V

    .line 2920
    :cond_2
    move-object v3, v1

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v3, :cond_4

    .line 2921
    move-object v3, v2

    if-nez v3, :cond_3

    .line 2922
    new-instance v3, Landroid/os/Bundle;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 2924
    :cond_3
    move-object v3, v2

    const-string/jumbo v4, "android:view_state"

    move-object v5, v1

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2927
    :cond_4
    move-object v3, v1

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v3, :cond_6

    .line 2928
    move-object v3, v2

    if-nez v3, :cond_5

    .line 2929
    new-instance v3, Landroid/os/Bundle;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 2932
    :cond_5
    move-object v3, v2

    const-string/jumbo v4, "android:user_visible_hint"

    move-object v5, v1

    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2935
    :cond_6
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 987
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v3, v1

    iget v3, v3, Landroidx/fragment/app/Fragment;->mIndex:I

    if-gez v3, :cond_0

    .line 988
    move-object v3, v0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not currently in the FragmentManager"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 991
    :cond_0
    move-object v3, v1

    iget v3, v3, Landroidx/fragment/app/Fragment;->mState:I

    if-lez v3, :cond_2

    .line 992
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentBasicState(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;

    move-result-object v3

    move-object v2, v3

    .line 993
    .local v2, "result":Landroid/os/Bundle;
    move-object v3, v2

    if-eqz v3, :cond_1

    new-instance v3, Landroidx/fragment/app/Fragment$SavedState;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/fragment/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    :goto_0
    move-object v0, v3

    .line 995
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    .end local v2    # "result":Landroid/os/Bundle;
    :goto_1
    return-object v0

    .line 993
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    .restart local v2    # "result":Landroid/os/Bundle;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 995
    .end local v2    # "result":Landroid/os/Bundle;
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method saveFragmentViewState(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .prologue
    .line 2889
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move-object v2, v1

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 2890
    .line 2902
    :goto_0
    return-void

    .line 2892
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v2, :cond_2

    .line 2893
    move-object v2, v0

    new-instance v3, Landroid/util/SparseArray;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 2897
    :goto_1
    move-object v2, v1

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2898
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2899
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2900
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 2902
    :cond_1
    goto :goto_0

    .line 2895
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method saveNonConfig()V
    .locals 15

    .prologue
    .line 2832
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    const/4 v8, 0x0

    move-object v1, v8

    .line 2833
    .local v1, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/Fragment;>;"
    const/4 v8, 0x0

    move-object v2, v8

    .line 2834
    .local v2, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/FragmentManagerNonConfig;>;"
    const/4 v8, 0x0

    move-object v3, v8

    .line 2835
    .local v3, "viewModelStores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/lifecycle/ViewModelStore;>;"
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v8, :cond_8

    .line 2836
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 2837
    move-object v8, v0

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/Fragment;

    move-object v5, v8

    .line 2838
    .local v5, "f":Landroidx/fragment/app/Fragment;
    move-object v8, v5

    if-eqz v8, :cond_7

    .line 2839
    move-object v8, v5

    iget-boolean v8, v8, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    if-eqz v8, :cond_1

    .line 2840
    move-object v8, v1

    if-nez v8, :cond_0

    .line 2841
    new-instance v8, Ljava/util/ArrayList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v8

    .line 2843
    :cond_0
    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2844
    move-object v8, v5

    move-object v9, v5

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_2

    move-object v9, v5

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget v9, v9, Landroidx/fragment/app/Fragment;->mIndex:I

    :goto_1
    iput v9, v8, Landroidx/fragment/app/Fragment;->mTargetIndex:I

    .line 2845
    sget-boolean v8, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string/jumbo v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "retainNonConfig: keeping retained "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2848
    :cond_1
    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v8, :cond_3

    .line 2849
    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentManagerImpl;->saveNonConfig()V

    .line 2850
    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v8, v8, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    move-object v6, v8

    .line 2857
    .local v6, "child":Landroidx/fragment/app/FragmentManagerNonConfig;
    :goto_2
    move-object v8, v2

    if-nez v8, :cond_4

    move-object v8, v6

    if-eqz v8, :cond_4

    .line 2858
    new-instance v8, Ljava/util/ArrayList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v8

    .line 2859
    const/4 v8, 0x0

    move v7, v8

    .local v7, "j":I
    :goto_3
    move v8, v7

    move v9, v4

    if-ge v8, v9, :cond_4

    .line 2860
    move-object v8, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2859
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2844
    .end local v6    # "child":Landroidx/fragment/app/FragmentManagerNonConfig;
    .end local v7    # "j":I
    :cond_2
    const/4 v9, -0x1

    goto :goto_1

    .line 2854
    :cond_3
    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mChildNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    move-object v6, v8

    .restart local v6    # "child":Landroidx/fragment/app/FragmentManagerNonConfig;
    goto :goto_2

    .line 2864
    :cond_4
    move-object v8, v2

    if-eqz v8, :cond_5

    .line 2865
    move-object v8, v2

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2867
    :cond_5
    move-object v8, v3

    if-nez v8, :cond_6

    move-object v8, v5

    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-eqz v8, :cond_6

    .line 2868
    new-instance v8, Ljava/util/ArrayList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v8

    .line 2869
    const/4 v8, 0x0

    move v7, v8

    .restart local v7    # "j":I
    :goto_4
    move v8, v7

    move v9, v4

    if-ge v8, v9, :cond_6

    .line 2870
    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2869
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2874
    .end local v7    # "j":I
    :cond_6
    move-object v8, v3

    if-eqz v8, :cond_7

    .line 2875
    move-object v8, v3

    move-object v9, v5

    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2836
    .end local v6    # "child":Landroidx/fragment/app/FragmentManagerNonConfig;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 2880
    .end local v4    # "i":I
    .end local v5    # "f":Landroidx/fragment/app/Fragment;
    :cond_8
    move-object v8, v1

    if-nez v8, :cond_9

    move-object v8, v2

    if-nez v8, :cond_9

    move-object v8, v3

    if-nez v8, :cond_9

    .line 2881
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 2886
    :goto_5
    return-void

    .line 2883
    :cond_9
    move-object v8, v0

    new-instance v9, Landroidx/fragment/app/FragmentManagerNonConfig;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    invoke-direct {v10, v11, v12, v13}, Landroidx/fragment/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v9, v8, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    goto :goto_5
.end method

.method scheduleCommit()V
    .locals 8

    .prologue
    .line 2132
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v5, v0

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v1, v6

    monitor-enter v5

    .line 2133
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 2134
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 2135
    .local v2, "postponeReady":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_1
    move v3, v5

    .line 2136
    .local v3, "pendingReady":Z
    move v5, v2

    if-nez v5, :cond_0

    move v5, v3

    if-eqz v5, :cond_1

    .line 2137
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2138
    move-object v5, v0

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 2140
    :cond_1
    move-object v5, v1

    monitor-exit v5

    .line 2141
    return-void

    .line 2134
    .end local v2    # "postponeReady":Z
    .end local v3    # "pendingReady":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 2135
    .restart local v2    # "postponeReady":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 2140
    .end local v2    # "postponeReady":Z
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public setBackStackIndex(ILandroidx/fragment/app/BackStackRecord;)V
    .locals 10

    .prologue
    .line 2164
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "bse":Landroidx/fragment/app/BackStackRecord;
    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v3, v7

    monitor-enter v6

    .line 2165
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 2166
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 2168
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 2169
    .local v4, "N":I
    move v6, v1

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 2170
    sget-boolean v6, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Setting back stack index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2171
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2185
    :goto_0
    move-object v6, v3

    monitor-exit v6

    .line 2186
    return-void

    .line 2173
    :cond_2
    :goto_1
    move v6, v4

    move v7, v1

    if-ge v6, v7, :cond_5

    .line 2174
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 2175
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    .line 2176
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 2178
    :cond_3
    sget-boolean v6, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Adding available back stack index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2179
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    move v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 2180
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2182
    :cond_5
    sget-boolean v6, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string/jumbo v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Adding back stack index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2183
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    goto/16 :goto_0

    .line 2185
    .end local v4    # "N":I
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V
    .locals 7

    .prologue
    .line 3405
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "f":Landroidx/fragment/app/Fragment;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move-object v3, v1

    iget v3, v3, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 3406
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    move-object v3, v0

    if-eq v2, v3, :cond_1

    .line 3407
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not an active fragment of FragmentManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3410
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 3411
    return-void
.end method

.method public showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .prologue
    .line 1973
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    sget-boolean v2, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1974
    :cond_0
    move-object v2, v1

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_1

    .line 1975
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1978
    move-object v2, v1

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1980
    :cond_1
    return-void

    .line 1978
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method startPendingDeferredFragments()V
    .locals 5

    .prologue
    .line 1875
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v3, :cond_0

    .line 1883
    :goto_0
    return-void

    .line 1877
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_1
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1878
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    move-object v2, v3

    .line 1879
    .local v2, "f":Landroidx/fragment/app/Fragment;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 1880
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->performPendingDeferredStart(Landroidx/fragment/app/Fragment;)V

    .line 1877
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1883
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    :cond_2
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1005
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 1006
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string/jumbo v3, "FragmentManager{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1007
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1008
    move-object v2, v1

    const-string/jumbo v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1009
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    .line 1010
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 1014
    :goto_0
    move-object v2, v1

    const-string/jumbo v3, "}}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1015
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    return-object v0

    .line 1012
    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .locals 9

    .prologue
    .line 3427
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl;
    move-object v1, p1

    .local v1, "cb":Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v2, v7

    monitor-enter v6

    .line 3428
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    move v4, v6

    .local v4, "N":I
    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 3429
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 3430
    move-object v6, v0

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    .line 3431
    .line 3434
    :cond_0
    move-object v6, v2

    monitor-exit v6

    .line 3435
    return-void

    .line 3428
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3434
    .end local v4    # "N":I
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method
